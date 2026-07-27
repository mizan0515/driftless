#requires -Version 7.0
#requires -PSEdition Core
param(
  [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path,
  [switch]$Json
)

$ErrorActionPreference = 'Stop'
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch { }
$OutputEncoding = [System.Text.Encoding]::UTF8

function Test-RunInvariant {
  param([object]$Run)
  if ($Run.sources.independent -gt $Run.sources.total) { return $false }
  if ($Run.sources.total -gt $Run.budget.max_sources) { return $false }
  if ($Run.tier -eq 'dissertation' -and -not $Run.dissertation_opt_in) { return $false }
  if ($Run.status -eq 'completed') {
    if ($Run.phase -ne 'closeout') { return $false }
    if ($Run.sources.total -lt 1) { return $false }
    if (@($Run.citation_bindings | Where-Object verified).Count -lt 1) { return $false }
    if ($Run.unresolved_critical_findings -ne 0) { return $false }
    if ($Run.decision -eq 'pending') { return $false }
  }
  return $true
}

$resolvedRoot = (Resolve-Path -LiteralPath $Root).Path
$schemaRel = 'profiles\shared\schemas\hyperresearch-run.schema.json'
$schemaPath = Join-Path $resolvedRoot $schemaRel
$skillPath = Join-Path $resolvedRoot 'profiles\shared\skills\long-research-gradient\SKILL.md'
$checks = [System.Collections.Generic.List[object]]::new()
function Add-Check([string]$Name, [bool]$Ok, [string]$Evidence) {
  $checks.Add([pscustomobject]@{ name = $Name; status = $(if ($Ok) { 'PASS' } else { 'FAIL' }); evidence = $Evidence }) | Out-Null
}

Add-Check 'schema exists' (Test-Path -LiteralPath $schemaPath -PathType Leaf) "path=$schemaRel"
if (Test-Path -LiteralPath $schemaPath -PathType Leaf) {
  $schema = Get-Content -LiteralPath $schemaPath -Raw -Encoding UTF8 | ConvertFrom-Json
  Add-Check 'schema version is pinned' ($schema.properties.schema_version.const -eq '1.0') 'schema_version=1.0'
  Add-Check 'schema has bounded tiers' (@($schema.properties.tier.enum).Count -eq 3) 'tiers=light,full,dissertation'
  Add-Check 'schema records contradictions' ($null -ne $schema.properties.contradictions) 'field=contradictions'
  Add-Check 'schema records citation bindings' ($null -ne $schema.properties.citation_bindings) 'field=citation_bindings'
  Add-Check 'schema encodes conditional invariants' (@($schema.allOf).Count -eq 2) 'allOf=dissertation-opt-in,completed-closeout'
}

$skill = Get-Content -LiteralPath $skillPath -Raw -Encoding UTF8
foreach ($needle in @('HyperResearch portable contract', 'verbatim query', 'canonical query', 'contradiction graph', 'citation-to-claim', 'patch-only', 'untrusted data')) {
  Add-Check "skill contract: $needle" ($skill.Contains($needle)) "needle=$needle"
}

$valid = [pscustomobject]@{
  schema_version = '1.0'
  query = [pscustomobject]@{ verbatim = 'Which option is safer?'; canonical = 'Compare option safety evidence.' }
  tier = 'full'; dissertation_opt_in = $false
  budget = [pscustomobject]@{ max_sources = 12; max_minutes = 60 }
  phase = 'closeout'; resume_phase = $null; status = 'completed'
  checkpoints = @([pscustomobject]@{ phase = 'contradiction-graph'; evidence = 'Two independent sources compared.' })
  sources = [pscustomobject]@{ total = 4; independent = 3 }
  contradictions = @('Source A and source B disagree on the default.')
  citation_bindings = @([pscustomobject]@{ claim = 'The safer default is bounded.'; source = 'official documentation'; verified = $true })
  unresolved_critical_findings = 0; decision = 'pilot'
}
Add-Check 'completed fixture passes invariants' (Test-RunInvariant $valid) 'decision=pilot verified_citations=1 critical=0'
$invalid = $valid.PSObject.Copy()
$invalid.unresolved_critical_findings = 1
Add-Check 'critical finding blocks completion' (-not (Test-RunInvariant $invalid)) 'critical=1 must_fail=true'

$fail = @($checks | Where-Object status -eq 'FAIL').Count
$summary = [pscustomobject]@{
  gate = 'Portable HyperResearch run contract'
  overall = $(if ($fail -eq 0) { 'PASS' } else { 'FAIL' })
  pass = @($checks | Where-Object status -eq 'PASS').Count
  fail = $fail
  results = @($checks)
}
if ($Json) { $summary | ConvertTo-Json -Depth 6 }
else {
  foreach ($check in $checks) { Write-Output ("[{0}] {1} - {2}" -f $check.status, $check.name, $check.evidence) }
  Write-Output ("RESULT: {0} (pass={1} fail={2})" -f $summary.overall, $summary.pass, $summary.fail)
}
if ($fail -gt 0) { exit 1 }
