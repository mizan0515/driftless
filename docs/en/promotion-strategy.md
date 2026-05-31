# Promotion Strategy (PREP ONLY — do not execute yet)

This page is the plan for telling the world about Driftless. It is written **in
advance** so the plan is ready, reviewed, and honest before a single post goes
out. **Nothing here runs automatically.** Promotion only happens after the repo
is genuinely good enough to deserve attention, and every post goes out under the
manager's own hands (see [The execution gate](#the-execution-gate) at the bottom
— it is a hard rule, not a suggestion).

> **The whole idea: earn stars honestly. A repo that is actually useful, shown
> at the right moment, in the right places, with no fake engagement. Anything
> else backfires.**

---

## WHEN: only when it is genuinely star-worthy

Promotion **before** the repo is good is worse than no promotion. People arrive,
find a half-built thing, bounce, and never come back — and a first impression
only happens once. So the launch is **gated on readiness**, not on a calendar.

Do **not** promote until **all** of these are true:

| Gate | What it means | Why it has to be true first |
|---|---|---|
| **Working 60-second proof** | A brand-new visitor can go from "what is this" to "I see it work" in about a minute — a short clip or a copy-paste command that visibly does the thing. | A stranger gives you one minute. If the proof is not instant, they leave. |
| **Real evidence on the page** | The README and docs show **measured** results (the real numbers from [What is Driftless?](./what-is-driftless.md)), and an honest [Host Evidence Matrix](./host-evidence-matrix.md) — including the cells that are still `UNVERIFIED`. | Developers can smell hype. Honest evidence is the thing that actually earns respect in this audience. |
| **v0.1.0 released** | A tagged release exists, with release notes a non-developer can read. | "Latest commit on main" feels unfinished. A tagged release says "this is a thing you can use today." |
| **Install works for a stranger** | Someone who is not you can run the install path end-to-end and the safety gates pass. The [Apply to your agent](./apply-to-your-agent.md) flow works as written. | The fastest way to lose a new star is a broken install on the first try. |
| **Containment is clean** | The containment gate passes and the public repo carries **no** secrets, no host-global `~/.claude` / `~/.codex` content, no `.env`, nothing private. | One leaked secret ends the project's credibility instantly — and it is irreversible once public. |

If any gate is not met, the answer to "should we post now?" is **no**. Fix the
gate first. Readiness is the trigger; the calendar is not.

---

## The message: lead with the hook, never weaken it

The single most important rule of how Driftless is described in public: **lead
with the thing only Driftless does, in plain language.** Do not open with the
generic words every agent tool uses.

### The lead (use this, in this order)

1. **The non-developer hook, first:**
   > *"Paste one prompt before bed. Wake up to merged pull requests. You never
   > have to write code."*
2. **The one-edit-improves-both hook, second:**
   > *"One edit improves both Claude AND Codex — a single shared source keeps the
   > two tool profiles from ever drifting apart."*
3. **The category claim, third:** *"overnight self-improving maintainer
   automation for Claude and Codex"* — a category, stated plainly, not a feature
   list.

That order matters. The non-developer outcome ("merged pull requests while you
sleep") is what makes a stranger stop scrolling. The two-tool mirror is the
"wait, how?" that makes them click. The category claim is what they remember.

### Things to never write

These are self-inflicted wounds. Do not write them, ever, in any channel:

- **No self-weakening lines.** Never "no stars yet," "nobody uses this," "just a
  small kit," "probably nothing special." If *you* tell people it is unimportant,
  they believe you. State what it does and let the evidence carry it.
- **Do not parrot generic tooling words as the headline.** "Issue triage," "PR
  review," "release gates" are *features in the body*, never the headline. The
  headline asserts the category; the features prove it underneath.
- **No overclaiming.** Every public claim must match the [Host Evidence
  Matrix](./host-evidence-matrix.md). If something is only verified on Windows,
  say "verified on Windows" — not "cross-platform." Honest `UNVERIFIED` labels
  are part of the pitch, because this audience trusts honesty over polish.
- **Multi-tool is leverage, not a hedge.** When asked "why both Claude and
  Codex?", the answer is *ecosystem leverage* — the open agent standards (MCP,
  AGENTS.md) are co-developed across the industry, so speaking both is using a
  shared standard, not splitting loyalty. Never frame it as indecision.

---

## HOW: the channels worth posting to

These are the places an AI-agent-tooling open-source project actually reaches its
people. For each, the angle is tuned to the audience — but the **lead is always
the non-developer hook**, then the two-tool mirror.

### Tier 1 — highest signal, do these first

| Channel | Why it fits | The angle |
|---|---|---|
| **Hacker News — "Show HN"** | The home of "I built a thing" for technical builders; one good Show HN can define a project's first week. | Title leads with the outcome: *"Show HN: Paste one prompt before bed, wake up to merged PRs (for Claude and Codex)."* First comment from you explains the single-source mirror + the honest evidence matrix. Be present in the thread to answer. |
| **Reddit — relevant subreddits** | Communities exist specifically for AI coding agents, local LLM tooling, and self-hosted automation. | Post to the agent/LLM-tooling and self-hosted-automation subreddits (read each one's rules first; some require flair or ban link-only posts). Lead with the non-dev story, link the 60-second proof, link the repo last. |
| **X / Twitter dev community** | Where AI-agent builders cluster and reshare; a clear demo clip travels far. | A short thread: clip first (the 60-second proof as a GIF/video), then the one-edit-both-tools point, then the link. Tag nothing falsely; let the demo do the work. |

### Tier 2 — durable reach, do these next

| Channel | Why it fits | The angle |
|---|---|---|
| **`awesome-*` list PRs** | Curated "awesome" lists (awesome AI agents, awesome Claude, awesome developer tools) are long-lived discovery surfaces and send steady traffic. | Open a clean PR adding Driftless with a one-line description that **matches the list's existing format exactly**. Follow each list's contribution rules. This is earned placement, not spam — only list it where it genuinely belongs. |
| **dev.to / a written walkthrough** | A clear long-form post ranks in search and gives newcomers a calm, full explanation. | A "here is how it works and why two tools" article, screenshots of a real morning report, links to the docs. Cross-post to your own blog if you have one. |
| **Agent-tooling Discords / communities** | The builders in these chats are the exact early adopters who try new tools and give real feedback. | Share in the relevant show-and-tell / projects channels (never the general chat, never DMs). Lead with the demo, ask for honest feedback, follow each server's self-promo rules. |

### A note on fit, not volume

Posting *everywhere* is worse than posting *where it belongs*. Each channel above
has its own rules and its own culture. Read the rules first. Post where Driftless
genuinely helps the people there. A single well-placed Show HN plus an
`awesome`-list PR plus an honest demo clip outperforms a dozen low-effort
cross-posts that read as spam — and cross-posting spam gets accounts banned,
which is the opposite of earning stars.

---

## Earn stars honestly: the realistic plan

There is exactly one durable way to get stars: **make a thing people want, show
it where those people are, and be honest.** Everything else is short-term and
backfires.

### Do

- **Ship the proof, not the promise.** A 60-second clip of a real morning report
  with merged PRs beats any amount of description.
- **Be in the threads.** When someone comments on a Show HN or Reddit post, the
  single biggest multiplier is *you answering quickly and honestly*. Early
  engagement from the author is what turns a quiet post into a front-page one —
  legitimately.
- **Lead with the unique hook every time.** "One prompt -> merged PRs" and "one
  edit improves both Claude and Codex." Consistency makes it memorable.
- **Welcome contributions of host evidence.** The [Host Evidence
  Matrix](./host-evidence-matrix.md) literally invites macOS/Linux users to run a
  gate and report — that is a real, honest reason for someone to engage and
  contribute, which earns goodwill and stars at the same time.
- **Tell the truth about what is unverified.** Saying "verified on Windows;
  macOS/Linux still UNVERIFIED" builds more trust than a fake "cross-platform"
  badge, and trust is what this audience converts into stars.

### Never (these get you banned and destroy credibility)

- **No buying stars, no star-exchange / "star-for-star" rings, no bot accounts.**
  Platforms detect this, it violates their terms, and a flagged repo loses far
  more than it gained. It is also dishonest, which is against everything this
  project stands for.
- **No vote manipulation** — no asking groups to mass-upvote a Show HN or Reddit
  post on cue. HN and Reddit detect voting rings and penalize them.
- **No fake reviews, sockpuppets, or pretending to be an unrelated happy user.**
- **No spamming unrelated channels** or blasting DMs. Off-topic self-promo gets
  you removed from the very communities you wanted to reach.
- **No misleading claims** to inflate appeal. One disproven claim erases the
  credibility the honest evidence built.

The honest plan is slower at the very start and far stronger over time: real
users, real feedback, real word of mouth. Fake engagement is a spike that
collapses and takes the project's reputation with it.

---

## The execution gate (HARD RULE)

**This document is a plan only. Promotion is not executed by reading this page.**

When the readiness gates above are all met and the manager decides it is time to
launch, execution works like this, and **every part of it is mandatory**:

1. **The agent never promotes on its own.** No automatic posting, ever. The agent
   prepares drafts (post text, the Show HN title, the `awesome`-list PR diff) for
   the manager to review — it does not publish them.
2. **A browser-automation step opens the channels — and stops for the manager to
   log in.** The supported flow uses a supervised browser tool (for example
   Webwright / Chrome DevTools-driven automation) to **open** each promotion
   channel in a real browser. At every channel, it **hands control to the manager
   to log in.** The manager types their own username and password.
3. **The agent never handles credentials.** It never sees, stores, types, or
   transmits any login, password, token, cookie, or 2FA code for any promotion
   channel. Logging in is 100% the manager's action, in their own browser session.
   This is the same containment principle the whole project runs on: credentials
   stay with the human (see [Guardrails](./guardrails.md)).
4. **The agent never posts without the manager watching.** The final "submit" /
   "post" / "publish" click happens **with the manager present and approving each
   one**. No background posting, no queued posts that fire while the manager is
   away. Public release is a manager-only decision — it does not get delegated.
5. **One channel at a time, reviewed each time.** Each post is shown to the
   manager in plain language before it goes out, the manager approves it, and only
   then does it publish. If the manager does not approve, it does not post.

In short: the agent does the **preparation and the browser driving**; the manager
does the **logging in and the publishing**. Credentials and the act of going
public belong to the human, always. That gate does not get skipped, automated, or
worked around.

---

## Where to go next

- **[What is Driftless?](./what-is-driftless.md)** — the positioning and the real
  numbers the promotion message is built on.
- **[Host Evidence Matrix](./host-evidence-matrix.md)** — the honest evidence that
  every public claim must match.
- **[Guardrails](./guardrails.md)** — the containment model that the
  credentials-stay-with-the-human execution gate inherits.
- Korean: **[홍보 전략](../ko/홍보-전략.md)**
