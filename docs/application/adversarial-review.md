# Adversarial review of the live repository

This is a deliberately hostile read of Driftless as it stands **today**, written
as if by a skeptical program reviewer who wants to reject it and is looking for
the seam. It then records the counter-moves already shipped against each attack,
and closes with an honest verdict plus the items only the human maintainer can
resolve.

It is grounded in the actual repository state at the time of writing:

- 6 merged pull requests (#5, #6, #7, #8, #10, #12), each from a tracked issue, on
  its own branch, merged with CI green.
- 6 closed issues (#1, #2, #3, #4, #9, #11).
- CI green on **both** `windows-latest` and `ubuntu-latest` (`gates` workflow,
  recent runs `conclusion: success` on push and pull_request).
- Four gates wired into CI: containment, Windows text-safety, mirror-parity,
  skillopt validation harness.

An earlier adversarial pass rated the repo **BORDERLINE** and the project was then
hardened in response: the maintainer role was declared (PR #5), the self-graph was
filled with real PRs rather than left empty, redacted development-runtime evidence
was committed (PR #12), and a Linux CI job was added (PR #8). This review re-runs
the attack against that hardened state.

---

## Attack 1 — "It's a day-old repo with no stars. Pass."

**The hostile read.** Zero stars, zero forks, no external contributors, a
changelog with one entry. By the crude popularity heuristic this is noise.

**What's shipped against it.** The repo refuses to fight on the stars axis and
says so out loud. `docs/en/ecosystem-role.md` opens with "Driftless is new and
does not lead with adoption metrics. Star count is a weak signal" and argues the
case on **role**: a cross-tool reference implementation of safe overnight
self-maintenance, explicitly invoking the program's "important ecosystem role"
escape clause. The README and host-evidence matrix both say "day one is day one"
in plain text. The project does not pretend to have traction it lacks.

**Residual.** Real and unfixable on day one: the popularity signal is genuinely
empty, and a reviewer who weights it heavily will still pass. The only true
remedy is elapsed time with the public loop running — which is the very thing the
repo is set up to demonstrate, but cannot have done yet.

## Attack 2 — "The gates are theater. Show me they actually run."

**The hostile read.** Anyone can commit a PowerShell file named
`Test-Containment.ps1`. Does it *execute*, and does it *fail* when it should, or
is it a green badge stapled to a no-op?

**What's shipped against it.** All four gates run in CI on every push and PR
(`.github/workflows/gates.yml`), and the recent run history is `success` on
Windows and Linux — clickable in the Actions tab, no trust required. More
importantly, the containment gate is demonstrated to **FAIL on a planted
violation**, not only PASS on a clean tree: `docs/en/guardrails.md` documents that
referencing a host-global agent home or committing a key returns FAIL and blocks
the change, and the gate reports `BLOCKED` (exit 2) rather than a silent PASS when
the target is not a git repo — so an empty target cannot masquerade as success.
The six merged PRs are each issue-linked and gate-green, so the gates have been in
the merge path for real work, not just a smoke commit.

**Residual.** The **skillopt** harness is honestly static — no paid LLM call — so
it validates structure and scoring criteria, not live model behavior; it is
labeled that way (`evidence/5-axis-roi/README.md`, CI step name "static, no paid
LLM"). A reviewer who wants a live, billed end-to-end skill-optimization run will
find that specific behavior UNVERIFIED on this public repo.

## Attack 3 — "'Self-improving' is a buzzword with nothing behind it."

**The hostile read.** Every agent project claims to "learn." Show me the
mechanism, or it's marketing.

**What's shipped against it.** The claim is bound to a concrete, named mechanism
rather than an adjective. `docs/en/lesson-promotion-ladder.md` defines a five-rung
ladder — memory < skill < hot rule < hook < gate — where a recurring lesson is
*promoted* to a stronger, enforced surface based on "what breaks if it's ignored,"
with a worked example in `evidence/lesson-ladder/example-lesson.md`. The 5-axis
frame (tokens / intervention / time / money / performance) is the scoring basis,
and the README deliberately describes the system as "autonomous within gates," not
"an AI that learns on its own."

**Residual.** The ladder and the 5-axis scoring are demonstrated on the
development runtime and in static form here; a live "this run measurably lowered
cost-per-merged-PR by X" number is **not** yet posted on this public repo. The
application names that measurement as credit-funded future work, which is honest
but means the *improving* half of "self-improving" is argued, not yet shown live
in public.

## Attack 4 — "An AI that merges its own PRs is a supply-chain hazard."

**The hostile read.** Autonomous + auto-merge = an unsupervised committer that can
ship anything. That is disqualifying for anything funded.

**What's shipped against it.** Auto-merge is gated, and the gates are stated
precisely. `profiles/shared/skills/finish-to-done/SKILL.md` (steps 11–12) permits
auto-merge only after validation **and** mergeability **and** checks **and** a
bounded adversarial review pass **and** the absence of any manager-risk gate;
`parallel-ticket-planner` repeats the same precondition, and `guardrails.md` §4
puts public-release, destructive, and irreversible actions on the **human-only**
list. CI is a required green wall in front of every merge. The framing — "the AI
is trusted to *act*, never trusted to *decide* who it can act against" — is the
explicit safety model, not a footnote.

**Residual.** The merge approver is the **same human** who operates the loop
(`MAINTAINERS.md`); there is no independent second human reviewer on a
single-maintainer project, and the adversarial-review step is itself agent-run. A
strict reviewer may not count an agent-run review as a true second pair of eyes.
This is the structural limit of any solo-maintained repo, stated rather than
hidden.

## Attack 5 — "Your impressive numbers are from a repo I can't see."

**The hostile read.** 113 PRs, 94 issues, 73 skills — none of it clickable. That's
an unfalsifiable brag attached to a tiny public repo.

**What's shipped against it.** The repo is split exactly along the verifiability
line. `evidence/loop-log.md` is a two-column table: the left column (development
runtime, 113/94/114/73) is labeled "honest but not independently verifiable,
because the runtime is private — making it public would break the containment
guarantee that is itself a selling point"; the right column is this repo's own
graph, fully clickable. `evidence/development-runtime-prs.md` (PR #12) is the
**redacted** list of all 113 PRs. The reviewer-verifiable half — six merged PRs,
six closed issues, green CI on two OSes, gates that FAIL on planted violations —
requires no trust at all.

**Residual.** The scale numbers stay self-attested by construction. A reviewer who
credits only clickable evidence will judge the small day-one public graph alone.
That is a deliberate containment trade-off — the privacy of the runtime is part of
the product thesis — but it is still a real ceiling on this evidence, and the
private numbers appearing in the README badge (one screen above the caveat) make
the line easier to blur than it should be.

## Attack 6 — "Single OS, PowerShell-only. Half your users can't run it."

**The hostile read.** The gates are `.ps1`. This is a Windows project wearing a
cross-platform costume.

**What's shipped against it.** A real Linux CI job (`linux-smoke`) runs on every
push/PR: it executes `install.sh --both --yes`, asserts the isolated homes
materialize under `.runtime/` **and** that host-global `~/.claude` was not touched,
then runs the containment gate under `pwsh` on Ubuntu. `host-evidence-matrix.md`
records containment + install as **PASS on Linux** with exactly that evidence, and
keeps macOS honestly **UNVERIFIED** rather than claiming a green it did not earn.

**Residual.** macOS is genuinely unverified (no runner), and only containment +
install are proven on Linux — the text-safety and mirror-parity gates are not yet
green off Windows. The honesty is intact; the coverage is partial.

---

## Verdict

**Hardened BORDERLINE — clears the bar on role, method, and safety; does not (and
does not pretend to) clear it on day-one popularity or live public scale metrics.**

The two genuinely fatal attacks — hollow fixtures and unguarded auto-merge — are
both **defeated by running artifacts**: green CI on two operating systems exercising
four gates, a containment gate proven to FAIL on a planted violation, and a merge
path explicitly gated behind validation + checks + adversarial review + human-only
escalation. Those are the attacks that would sink the application, and they do not
land.

The surviving weaknesses are all of one kind: **day-one and single-maintainer
limits that are stated honestly rather than concealed** — zero stars, self-attested
private scale numbers, macOS UNVERIFIED, a single human approver. None of them is
fatal once the verifiable half of the repo is in front of the reviewer; each is a
fair point to dock, not a disqualifier. The project's chosen ground — apply on
*ecosystem role and method, demonstrated live*, under the program's explicit
"important ecosystem role" clause — is the right ground for exactly this profile,
and the repo argues it without self-weakening and without inflation.

The honest one-line summary: **the mechanism is reviewer-verifiable here; the track
record is small but real and growing in the open; the scale proof is self-attested
by a containment trade-off the project owns out loud.**

---

## Residual items that are manager-only (human, not agent)

These are the decisions this review cannot close, because they fall on the
human-only side of the guardrails (`docs/en/guardrails.md` §4) — product, release,
and public-representation calls:

1. **Form submission.** The application package (`docs/en/codex-for-oss-application.md`)
   is paste-ready, but submitting it to the program is a public-release action the
   human maintainer performs and owns. Not done by any agent.
2. **Development-repo visibility.** Whether to expose any part of the private
   development runtime (or keep it fully private and rely on the redacted evidence
   bundle) is a containment + product decision. Opening it would strengthen the
   scale evidence but trade away the privacy that is part of the thesis — a
   human-only call.
3. **Stars / external adoption.** Cannot be manufactured and is not the project's
   chosen battleground; it accrues only as the public loop runs over time. Nothing
   to "do" here except let the live graph fill — but a reviewer who weights it
   heavily is a risk only the human can decide to accept.
4. **Badge framing trade-off.** Whether to keep the private 113/94/114/73 numbers
   in the README badge (impactful but blur-prone) or move them strictly into the
   two-column loop log (more honest, less punchy) is a presentation call for the
   human maintainer, flagged here as Attack 5's residual.

Companion document: [`rejection-risk-matrix.md`](./rejection-risk-matrix.md) — the
reason-by-reason table this verdict is built on.
