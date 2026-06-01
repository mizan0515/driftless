# Positioning (locked)

This is the one-page source of truth for **how Driftless is described in public**.
Every README line, social post, awesome-list entry, and talking point traces back
to this page. If a draft contradicts something here, the draft is wrong, not this
page. The deeper "why" and the channel mechanics live in
[promotion-strategy.md](../en/promotion-strategy.md) and
[launch-plan.md](./launch-plan.md); this page is just the locked message.

---

## The one tagline

> **Driftless — overnight self-improving maintainer automation for Claude AND Codex.**

Use it verbatim. It is a **category claim** stated plainly, not a feature list.
Do not pad it with "issue triage / PR review / release gates" — those are body
evidence, never the headline.

---

## The two 15-second hooks

You get about fifteen seconds before someone decides to keep reading. Lead with
the hook that fits the audience, then back it with the other.

### 15-second non-developer hook (lead with this for a general audience)

> **"Paste one prompt before bed. Wake up to merged pull requests. You never
> have to write code."**

This is the outcome that makes a stranger stop scrolling: a person who is *not* a
developer goes to sleep and wakes up to finished, reviewed work. No diffs to read,
no commands to memorize.

### 15-second technical hook (lead with this for builders / HN / dev subreddits)

> **"One edit improves both Claude AND Codex. A single shared source keeps the two
> tool profiles from ever drifting apart — enforced by a mirror-parity gate — and
> the agent runs under a containment gate that FAILs on a planted secret or a
> host-global path."**

This is the "wait, how?" that makes a technical reader click: single-source two
profiles, a machine-enforced parity gate, and real containment — not a prompt
wrapper.

---

## The category claim

**Category:** *overnight self-improving maintainer automation for Claude and Codex.*

We are not "another AI coding assistant" (those expect you to drive) and not "an
agent framework" (heavy, you assemble it). We are the **overnight maintainer
loop**: you state a goal once, it works the backlog while you sleep, and it stays
inside safety gates. State the category; let the three differentiators below prove
it.

---

## The three differentiators

These are the things that are genuinely **only true of Driftless**, in priority
order. Lead with #1; #2 and #3 are the proof that #1 is real.

1. **One prompt before bed -> merged PRs by morning, for a non-developer.**
   The customer is a non-developer manager. They give a goal in plain language;
   the agent does the git, GitHub, issue/PR, and validation mechanics and reports
   back in plain language under four labels (done / needs your decision / blocked /
   in progress). This is the outcome nobody else leads with.

2. **One edit improves both Claude AND Codex — a single shared source, enforced.**
   Driftless is one repo with two isolated profiles (Claude + Codex) that consume
   one shared tier (rules, skills, schemas). Edit once, both improve. A
   **mirror-parity gate** FAILs the moment the two profiles drift apart, so the
   promise is a machine check, not human memory. Multi-tool is **ecosystem
   leverage** (the open standards MCP + AGENTS.md are co-developed across the
   industry), not split loyalty.

3. **Self-improving under hard safety + honesty rails.**
   - **Five-axis gradient descent** — tokens, manager intervention, time, money,
     performance — pushed in the right direction over time, with telemetry, not
     vibes. (The current harness is a *static* 5-axis skillopt harness; say so.)
   - **An enforced lesson-promotion ladder** — memory note < on-demand skill <
     hot rule < hook < gate script — so a lesson that would cause an irreversible
     or security or false-"done" mistake gets pushed all the way to a gate that
     *mechanically blocks* the work. The system gets harder to break the more it
     learns.
   - **A containment gate** that scans every change and FAILs on a forbidden path
     or a credential token. Proven PASS on a clean tree and FAIL on a planted
     violation. It never touches host-global `~/.claude` / `~/.codex`, `.env`,
     SSH keys, browser profiles, or secrets.

---

## The honest caveats (say these out loud — they are part of the pitch)

This audience trusts honesty over polish. The caveats below are **not** weakening
lines (see the next section); they are precision, and they build credibility.

- **"Measured on the development runtime."** The big numbers — **113 merged PRs,
  94 issues, 114 commits, 39 Claude + 34 Codex skills** — are from the *source
  runtime* this repo was extracted from, proving the method works. They are **not**
  this public repo's star/PR count. Always attribute them as "measured on the
  development runtime at extraction."
- **This public repo is v0.1.0, day one.** Its own PR/issue graph starts now and
  grows in the open. Frame it as "watch it maintain itself in public," never as
  "look how many stars."
- **Verified on Windows; macOS/Linux partly UNVERIFIED.** Per the
  [Host Evidence Matrix](../en/host-evidence-matrix.md): the gates are PASS on
  Windows (PowerShell 5.1 + 7), the containment + POSIX install path are PASS in
  Linux CI, and macOS is still UNVERIFIED. Say "verified on Windows" / "runs in
  Linux CI" — never a blanket "cross-platform."
- **The 5-axis harness is static today.** Call it a *static* skillopt harness, not
  a live optimizer, until live telemetry is shown.

---

## What we never say (hard rules)

- **Never self-weaken.** No "no stars yet," "nobody uses this," "just a small
  kit," "probably nothing special," "early/rough, ignore the bugs." If you tell
  people it is unimportant, they believe you. State what it does; let the evidence
  carry it.
- **Never parrot the program's or the generic tooling words as the headline.**
  "Issue triage," "PR review," "release gates," "maintainer automation program" —
  these are body features, never the lead. The headline asserts the *category*.
- **Never overclaim past the evidence.** Every public claim must match the Host
  Evidence Matrix. No blanket "cross-platform," no "fully autonomous" (it is
  autonomous *within gates*), no implying the dev-runtime numbers are this repo's.
- **Never frame two tools as a hedge.** It is ecosystem leverage, not indecision.
- **Never use dishonest engagement to inflate appeal** — no bought stars, bots,
  vote rings, sockpuppets, or fake reviews (see the Never list in
  [launch-plan.md](./launch-plan.md)). One disproven claim erases all the trust
  the honest evidence built.

---

## Where to go next

- **[launch-plan.md](./launch-plan.md)** — the readiness gate, the per-channel
  plan, the earn-stars-honestly Do/Never list, and the post -> observe -> refine
  loop.
- **[promotion-strategy.md](../en/promotion-strategy.md)** — the fuller strategy
  and the manager-only execution gate (the agent never posts or handles a login).
- **[What is Driftless?](../en/what-is-driftless.md)** — the positioning expanded,
  with the real numbers.
- **[Host Evidence Matrix](../en/host-evidence-matrix.md)** — the evidence every
  claim must match.
