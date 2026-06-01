# Rejection-risk matrix

A reviewer for an open-source agent program will look for reasons to reject. This
page lists those reasons up front, rates each one, names the **in-repo artifact**
that already answers it, and states the **residual risk** that the artifact does
not fully erase. Nothing here is aspirational: every "mitigation" column points at
a file or check that exists in this repository today.

Severity key:

- **Fatal** — if true and unanswered, this alone sinks the application.
- **Survivable** — a real weakness that a reviewer may dock points for, but not a
  disqualifier on its own once the honest framing is in front of them.

---

## The matrix

| # | Plausible reject reason | Severity | In-repo artifact that mitigates it | Residual risk (honest) |
|---|---|---|---|---|
| 1 | **Brand-new repo, low/zero stars.** "No traction, why fund it?" | Survivable | `docs/en/ecosystem-role.md` argues the case on *role*, not stars, and invokes the program's own "important ecosystem role" clause. `docs/en/host-evidence-matrix.md` and `README.md` say "day one is day one" in plain text rather than hiding it. | Stars and external adoption are genuinely zero on day one, and no document can manufacture them. A reviewer who weights raw popularity above role/method will still dock this. Only time + the public loop running closes it. |
| 2 | **Hollow repo / fixtures dressed as features.** "The gates are toy scripts; nothing really runs." | Fatal if true | All four gates run in CI on every push and PR — `.github/workflows/gates.yml` invokes `Test-Containment.ps1`, `Test-WindowsTextSafety.ps1`, `Test-ProfileMirrorParity.ps1`, `Test-SkillOptValidationHarness.ps1`. The CI history is green (clickable Actions tab). Six real merged PRs (#5,#6,#7,#8,#10,#12) each came from an issue, on a branch, gate-green. | The skillopt harness is explicitly **static** (no paid LLM call), so it validates structure/criteria, not live model behavior — labeled as such in `evidence/5-axis-roi/README.md`. A reviewer wanting a live end-to-end skill-optimization run will find that part UNVERIFIED here. |
| 3 | **"Self-improving / self-learning" is a buzzword.** "Where is the actual learning?" | Survivable | The claim is pinned to concrete mechanism, not adjective: `docs/en/lesson-promotion-ladder.md` (memory < skill < hot rule < hook < gate) with a worked case in `evidence/lesson-ladder/example-lesson.md`, and the static 5-axis harness in `scripts/Test-SkillOptValidationHarness.ps1`. The README describes the loop as "autonomous within gates," not "AI that learns by itself." | The promotion ladder and 5-axis scoring are demonstrated on the **development runtime** and in static form here; a live, measured "this run lowered cost-per-merged-PR by X" number is not yet on this public repo. That measurement is named as future/credit-funded work, not shown. |
| 4 | **Unguarded auto-merge.** "An AI that merges its own PRs is a supply-chain risk." | Fatal if true | Auto-merge is explicitly **gated**, not free: `profiles/shared/skills/finish-to-done/SKILL.md` (steps 11–12) requires validation + mergeability + checks + adversarial review + *no manager-risk gate present* before any auto-merge, and `profiles/shared/skills/parallel-ticket-planner/SKILL.md` repeats the same precondition. `docs/en/guardrails.md` §4 lists public-release, destructive, and irreversible actions as **human-only**. CI is a required green wall in front of every merge. | The merge approver is the **same human operator** who runs the loop (`MAINTAINERS.md`), so there is no independent second human reviewer today — single-maintainer projects always carry this. The adversarial-review step is agent-run, which a strict reviewer may not count as a true second pair of eyes. |
| 5 | **Two-repo confusion.** "Which repo am I funding — the private runtime or this one? The numbers don't match the graph." | Survivable | `evidence/loop-log.md` is a two-column table that separates "Development runtime (at extraction): 113 PRs / 94 issues / 114 commits — self-attested, private" from "Public Driftless (since day one): grows, clickable." The README's "built itself" section repeats the separation in prose. The application package names **one** primary repo and one apply URL (`docs/en/codex-for-oss-application.md`). | The headline badge in `README.md` still shows the **private** 113/94/114/73 numbers, which a hurried reviewer could read as this public repo's graph despite the caveat one screen down. The strongest fix (drop the private numbers from the badge) is a deliberate trade-off the maintainer has not yet made. |
| 6 | **Multi-tool split loyalty.** "This is a Codex program — why are you half a Claude project?" | Survivable | `docs/en/ecosystem-role.md` and the application "Anything else" answer frame two-tool support as **ecosystem leverage**: OpenAI + Anthropic co-found open agent standards (MCP + AGENTS.md / AAIF), the program is stated tool-agnostic, and "one edit improves both profiles" is a machine-checked interoperability instance (`scripts/Test-ProfileMirrorParity.ps1`). API credits are scoped to the **Codex** half (PR review / release / triage in the Codex profile). | If the specific program a reviewer represents quietly prefers single-tool focus despite the public tool-agnostic language, the multi-tool framing is a bet, not a certainty. The Claude half is also the more-developed half on this host (host-evidence-matrix shows Codex-side parity less verified), which slightly undercuts "equal" framing. |
| 7 | **Single-OS / Windows-only.** "PowerShell gates won't run for our Linux users." | Survivable | A real **Linux CI job** runs on every push/PR (`.github/workflows/gates.yml` `linux-smoke`): it executes `install.sh --both --yes`, asserts the isolated homes materialize under `.runtime/` and host-global `~/.claude` is untouched, then runs the containment gate under `pwsh`. `docs/en/host-evidence-matrix.md` marks containment + install **PASS on Linux** with that evidence and keeps macOS honestly **UNVERIFIED**. | macOS is genuinely UNVERIFIED (no runner), and the Windows text-safety + mirror-parity gates are not yet proven green on Linux/macOS — only containment + install are. A reviewer on macOS gets an honest "not measured on your machine yet." |
| 8 | **Private self-use proof / unverifiable claims.** "The impressive numbers are from a repo I can't see." | Survivable | The repo is split exactly along verifiability: `evidence/loop-log.md` calls the private numbers "honest but not independently verifiable" *because* publishing the runtime would break the containment guarantee that is itself a selling point. `evidence/development-runtime-prs.md` is the **redacted** list of all 113 PRs (PR #12). The reviewer-verifiable half — this repo's own merged PRs, closed issues, green CI on two OSes — needs **no trust**. | The flagship scale numbers remain self-attested; a reviewer who refuses to credit any non-clickable evidence will discount them entirely and judge only the (small, day-one) public graph. That is a deliberate containment trade-off, not an oversight, but it is still a real ceiling on this evidence. |

---

## How to read this matrix

- **No "fatal" row is left unanswered.** The two fatal-if-true reasons (hollow
  fixtures, unguarded auto-merge) are each contradicted by a running CI gate and a
  gated-merge contract that exist in this repo right now — so they are fatal only
  *if false claims were made*, and they are not.
- **The survivable rows are survivable because the framing is honest, not because
  the weakness is gone.** Day-one stars, self-attested scale numbers, macOS
  UNVERIFIED, single-human approval — these are real. The mitigation in each case
  is that the repo states them plainly and points the reviewer at the verifiable
  half, rather than papering over them.
- **The residual-risk column is the part a reviewer should trust most**, because
  it is where the project argues *against itself*. If a residual risk here turns
  out to be a dealbreaker for a given program, that is a manager-level (human)
  decision about whether to apply — see the adversarial review's closing verdict.

Companion document: [`adversarial-review.md`](./adversarial-review.md) — the
strict-reviewer pass on the live repo and the verdict.
