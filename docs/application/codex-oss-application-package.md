# Codex for Open Source — canonical application package

This is the **mission package** for the OpenAI Codex for Open Source program
(`https://openai.com/form/codex-for-oss/`): the maintainer role, why Driftless
qualifies, the three strongest acceptance arguments — each tied to a public
evidence artifact a reviewer can click — the API-credit-use plan, why Codex
Security, and the honest day-one framing.

It is the single front door for the application. It does **not** re-fork the
form text: the paste-ready, character-limited form answers live once in
**[../en/codex-for-oss-application.md](../en/codex-for-oss-application.md)** and
the ecosystem-role argument lives once in
**[../en/ecosystem-role.md](../en/ecosystem-role.md)**. This package links them
and adds the evidence map.

- Primary repository (one repo, one apply URL): `https://github.com/mizan0515/driftless`
- License: MIT · Version: v0.1.0 · CI: green on Windows + Linux
- A human reviews and submits this application; nothing is posted automatically.

---

## 1. Maintainer role — stated plainly (the program's #1 factor)

A human operator-architect ([@mizan0515](https://github.com/mizan0515)) maintains
Driftless. The human designs the goals, sets the guardrails, and **owns every
product, priority, billing, public-release, and irreversible decision** — the
agent never crosses those gates. The AI tools the project ships (OpenAI Codex and
Claude Code) do the implementation labor under that direction, behind a
containment guard and human-only gates.

This "agent-built under a human maintainer" shape is the project's thesis, not a
disclaimer hidden in fine print. It is declared in the open in
[MAINTAINERS.md](../../MAINTAINERS.md) and the README's "this repo built itself"
section. The honest claim is **autonomous within gates** — never "fully
autonomous," never agent-owns-the-merge-button.

The full role text is the first form answer in
[../en/codex-for-oss-application.md](../en/codex-for-oss-application.md) — that is
the single source; this section summarizes it, it does not replace it.

---

## 2. Why Driftless qualifies

Driftless is net-new ecosystem capability working today: it lets a **non-developer**
run autonomous, self-improving maintainer-automation — overnight ticketing,
parallel self-recovering workers, prepared-and-merged PRs, releases — across
**both Codex and its open-standard peer Claude Code, from one source of truth**,
behind a containment guard that never touches host-global agent config.

It does not reskin triage / PR-review / release into new words. It makes that
whole category **operable by people who cannot write the code**, and it proves the
method the only way that earns trust: by maintaining its own public repository in
the open, with real merged PRs, closed issues, and green safety gates a reviewer
can inspect without taking anything on faith.

The full "why it qualifies" form answer (<=500 chars) is in
[../en/codex-for-oss-application.md](../en/codex-for-oss-application.md). The
extended ecosystem-role argument — including the escape-hatch framing ("important
ecosystem role") — is in [../en/ecosystem-role.md](../en/ecosystem-role.md).

---

## 3. The three strongest acceptance arguments — each tied to public evidence

Each argument below names a **clickable public artifact**. None of these requires
trusting a self-report; a reviewer can open the link and verify it on the live
repo.

### Argument A — "It actually maintains itself in the open." (verifiable track record)

The strongest answer to "does the method work" is the repo's own public graph.
Since v0.1.0 (day one), the loop has run on Driftless itself: every change was an
issue first, on its own branch, gate-green, merged via PR.

**Public evidence:**
- Merged PRs (live): https://github.com/mizan0515/driftless/pulls?q=is%3Apr+is%3Amerged
  — PR #5 (declare maintainer role), #6 (ecosystem role), #7 (loop log), #8 (Linux
  CI smoke), #10 (this application package's form answers), #12 (redacted
  development-runtime evidence).
- Closed issues (live): https://github.com/mizan0515/driftless/issues?q=is%3Aissue+is%3Aclosed
- Commit history (live): https://github.com/mizan0515/driftless/commits/main
- The dual-number honesty log that separates the private development-runtime track
  record from this public day-one graph:
  [../../evidence/loop-log.md](../../evidence/loop-log.md).

Why this is strong: it is not a demo video or a screenshot. It is a self-hosting
proof — the automation's output *is* the repository the reviewer is already
looking at.

### Argument B — "Safe autonomy is the headline, and it is machine-proven." (containment gate)

Most "autonomy" demos skip the part that actually matters for a maintainer fund:
not touching the host. Driftless never reads or mutates host-global agent config
(`~/.claude`, `~/.codex`), `.env`/secrets, SSH keys, browser profiles, or cloud
credentials — and it proves it with a gate that runs in CI on **both** Windows and
Linux, reports `PASS` on a clean tree and would `FAIL` on a planted violation, and
**never opens a secret file** (a forbidden own-path is flagged by path alone).

**Public evidence:**
- The CI gate workflow (runs on every push and PR): `.github/workflows/gates.yml`,
  visible in the live Actions tab: https://github.com/mizan0515/driftless/actions
  — Windows job runs containment + text-safety + mirror-parity + the skillopt
  harness; the Linux job runs the POSIX installer and asserts the isolated homes
  materialize under `.runtime/` while host-global `~/.claude` stays untouched.
- The guard itself: `scripts/Test-Containment.ps1`, consuming the one
  machine-readable safety surface `profiles/shared/schemas/forbidden-paths.json`.
- The plain-language guardrail explanation, including the
  flag-by-path-never-open-the-secret invariant: [../en/guardrails.md](../en/guardrails.md).

Why this is strong: the credibility bar for any agent-maintainer fund is "can I
let this near my repo." Driftless answers with an enforced, reviewer-runnable gate,
not a promise.

### Argument C — "One edit improves both tools, and it cannot silently drift." (single-source mirror, machine-checked)

Driftless runs two tools but keeps **one** source of truth. The shared tier
(design contract, forbidden-paths schema, six shared skills) lives once and both
the Codex and Claude profiles consume it by relative path. A **mirror-parity gate**
turns "one edit improves both" into a machine check with three complementary
signals (shared-tier existence, profile-consumer proof, git one-sidedness), so the
profiles can never quietly diverge.

**Public evidence:**
- The gate: `scripts/Test-ProfileMirrorParity.ps1`, green in CI (see the Actions
  tab above), reading `profiles/shared/schemas/mirror-parity-allowlist.json`.
- The mechanism, the three signals, and why the intentional 39-vs-34 skill count
  is **not** drift: [../en/single-source-mirror.md](../en/single-source-mirror.md).
- The shared skills both profiles consume: `profiles/shared/skills/` (finish-to-done,
  root-goal-check, easy-briefing, parallel-ticket-planner, ticket-issue,
  learning-loop).

Why this is strong: it is the concrete, auditable instance of the cross-tool
interoperability the ecosystem's open standards (MCP, `AGENTS.md`) exist to enable
— so a Codex credit spent on the shared tier compounds into capability both
ecosystems consume.

---

## 4. API-credit-use plan

Credits fund the **Codex `goal`-mode half of the single-source mirror**: PR review,
release automation, and triage running in the Codex profile against real OSS
backlogs — squarely the fund's stated use. They also power the **static 5-axis
evaluation loop** (tokens / intervention / time / money / performance), so each
Codex run measurably lowers cost-per-merged-PR and the savings promote into
enforced gates rather than evaporating.

Because one edit improves both profiles, every credit spent on the Codex side
compounds into the shared tier the Claude side also consumes — the investment does
not stay siloed in one tool. The full credit-use form answer (<=500 chars) is in
[../en/codex-for-oss-application.md](../en/codex-for-oss-application.md); the static,
no-paid-LLM evaluation harness that grounds the cost claims is
`scripts/Test-SkillOptValidationHarness.ps1` (green in CI) with the 5-axis evidence
in [../../evidence/5-axis-roi](../../evidence/5-axis-roi).

---

## 5. Why Codex Security

Containment is not a feature bolted on — it is the project's first principle, which
makes the security posture the easiest part of the application to defend:

- **No host-global reach.** The agents run against a **repo-local isolated home**
  (`CODEX_HOME` for Codex, `CLAUDE_CONFIG_DIR` for Claude) under `.runtime/`. The
  Linux CI job asserts host-global `~/.claude` is never created or touched. The
  forbidden-paths set (`~/.claude`, `~/.codex`, `.env*`, `.ssh`, `secrets/**`,
  private keys, browser/credential stores, inline credential tokens) is one
  machine-readable schema the gate consumes.
- **The guard never opens what it protects.** A file whose own path is forbidden is
  flagged purely by path; its contents are never read — so the guard cannot become
  a leak vector for the very things it guards.
- **Ask-before-install.** `install.sh` / `install.ps1` default to **NO**: nothing
  is installed, no global setting is changed, no outside tool is pulled in without
  explicit human approval.
- **Human-only gates.** Billing/quota, public release, force-push, history rewrite,
  destructive actions, and host-global promotion are reserved for the human
  maintainer — the agent is structurally barred from them.

Reviewer-runnable: `scripts/Test-Containment.ps1` (PASS on a clean tree, FAIL on a
planted violation), the workflow `.github/workflows/gates.yml`, and the explanation
in [../en/guardrails.md](../en/guardrails.md).

---

## 6. Honest day-one framing — what we do and do NOT claim

Driftless is a **new, single-maintainer public repo** with full admin control,
applying under the program's "important ecosystem role" clause. We keep the caveats
honest rather than inflating them:

- **We do NOT claim broad adoption, stars, or "widely used."** Day one is day one.
  The case is the *role* and the *method*, demonstrated live — not a metrics flex.
- **We do NOT claim "fully autonomous."** It is autonomous **within gates**; a human
  owns every risk, billing, public-release, and destructive decision.
- **We do NOT claim cross-OS PASS we did not earn.** Windows and Linux gate runs are
  PASS with public CI evidence; macOS and the non-Windows install path are honestly
  **UNVERIFIED** per the [host evidence matrix](../en/host-evidence-matrix.md). A
  Windows PASS never back-fills another host.
- **The headline track record (113 PRs / 94 issues / 114 commits / 73 skills) is the
  private development runtime, not this public repo.** It is labeled as such, side by
  side with the public graph, in [../../evidence/loop-log.md](../../evidence/loop-log.md).
  The public column starts small on purpose and fills in the open.

Everything reported Done is command-proven; anything unrun is labeled UNVERIFIED.
One repo, one apply URL, one install command.

---

## Evidence index (everything a reviewer can click or run)

| Claim | Public artifact |
|---|---|
| Maintains itself in the open | [merged PRs](https://github.com/mizan0515/driftless/pulls?q=is%3Apr+is%3Amerged) · [closed issues](https://github.com/mizan0515/driftless/issues?q=is%3Aissue+is%3Aclosed) · [commits](https://github.com/mizan0515/driftless/commits/main) |
| Gates run on Windows + Linux | [Actions tab](https://github.com/mizan0515/driftless/actions) · `.github/workflows/gates.yml` |
| Containment is enforced, not promised | `scripts/Test-Containment.ps1` · `profiles/shared/schemas/forbidden-paths.json` · [guardrails.md](../en/guardrails.md) |
| One edit improves both tools, no drift | `scripts/Test-ProfileMirrorParity.ps1` · [single-source-mirror.md](../en/single-source-mirror.md) |
| Cost is measured, not asserted | `scripts/Test-SkillOptValidationHarness.ps1` · [evidence/5-axis-roi](../../evidence/5-axis-roi) |
| Private-vs-public numbers, separated honestly | [evidence/loop-log.md](../../evidence/loop-log.md) · [evidence/development-runtime-prs.md](../../evidence/development-runtime-prs.md) |
| Per-host honesty (UNVERIFIED where unmeasured) | [host-evidence-matrix.md](../en/host-evidence-matrix.md) |
| The paste-ready form answers (single source) | [../en/codex-for-oss-application.md](../en/codex-for-oss-application.md) |
| The extended ecosystem-role argument | [../en/ecosystem-role.md](../en/ecosystem-role.md) |
