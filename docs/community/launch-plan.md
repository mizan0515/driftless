# Launch Plan

How Driftless gets shown to the world: **first a readiness gate** (do not post
until the proof actually works), **then a per-channel plan** (which channels, what
angle, what rule, what success looks like), an **earn-stars-honestly Do/Never
list**, and a **gradient loop** (post -> observe -> log what worked -> refine).

This is a plan, not an auto-runner. The message itself is locked in
[positioning.md](./positioning.md); the manager-only *execution* mechanics (the
agent never posts on its own, never handles a login) are in
[promotion-strategy.md](../en/promotion-strategy.md). Read both before launch day.

---

## Part 1 — The readiness gate (DO NOT POST until all five are true)

Promoting before the repo is genuinely good is worse than not promoting: a
stranger arrives, finds a half-built thing, bounces, and a first impression only
happens once. The launch is gated on **readiness**, not on a calendar. If any row
is not true, the answer to "post now?" is **no** — fix the row first.

| # | Gate | What "PASS" means | How to check it (agent-doable) |
|---|---|---|---|
| 1 | **60-second proof works** | A brand-new visitor goes from "what is this" to "I see it work" in about a minute — a copy-paste command or a short clip that visibly does the thing. | Run the README "60-second proof" path on a clean checkout and confirm it does what the README claims. Record the result as evidence. |
| 2 | **Real evidence on the page** | README + docs show **measured** numbers, attributed honestly ("measured on the development runtime"), and the [Host Evidence Matrix](../en/host-evidence-matrix.md) is present including its `UNVERIFIED` cells. | Re-read README + what-is + host-matrix; confirm no claim exceeds the matrix. |
| 3 | **v0.1.0 released** | A tagged release exists with release notes a non-developer can read. | `gh release view v0.1.0` returns a real release (not just a commit on main). |
| 4 | **Fresh-clone install works** | Someone who is not the author can clone the repo and run the install path end-to-end; the isolated home materializes under `.runtime/` and host-global `~/.claude` / `~/.codex` is untouched. | Clone into a throwaway dir, run `./install.sh` (or `install.ps1`), assert the isolated home appears and nothing global changed. |
| 5 | **Gates green** | Containment gate PASS on a clean tree (and FAIL on a planted violation), mirror-parity gate PASS, text-safety gate PASS, CI green on Windows + Linux. | Run the three gates locally; confirm the GitHub Actions run on `main` is green. |

**Verified at the time of writing (keep honest, re-check on launch day):** v0.1.0
is published; CI is green on Windows + Linux; the containment gate is proven PASS
on a clean tree and FAIL on a planted violation; the mirror-parity gate (11
checks) and the text-safety gate are present. The public repo is **day one** (a
handful of merged PRs / closed issues / commits) — that is expected and is framed
as "watch it maintain itself in public," never inflated. The big 113/94/114/73
numbers are the **development-runtime** figures and must always be attributed as
such (see [positioning.md](./positioning.md#the-honest-caveats-say-these-out-loud--they-are-part-of-the-pitch)).

> Until rows 1 and 4 each have a fresh recorded run, treat them as **UNVERIFIED**
> for launch purposes — a green badge is not a substitute for a real fresh-clone
> run on launch day.

---

## Part 2 — The channel plan

Two execution modes, by what the channel allows:

- **Agent-doable channels** (GitHub-native): the agent can *prepare and execute*
  the mechanics via the `gh` API — opening an awesome-list PR, starting a
  Discussion — because these are normal repo operations, still subject to the
  manager-only publish gate in [promotion-strategy.md](../en/promotion-strategy.md).
- **Human-posts channels** (off-GitHub social): the agent **drafts** the post and
  **monitors reactions**; the human does the actual posting and the logging in.
  The agent never handles a credential and never clicks the final publish on a
  social platform.

> **Universal rule for every channel:** lead with the locked hook from
> [positioning.md](./positioning.md) — non-dev hook for general audiences, technical
> hook for builders — then the two-tool mirror. Read each channel's own rules
> first. Post where Driftless genuinely belongs; fit beats volume.

### 2A — Agent-doable (GitHub-native, via `gh` API)

| Channel | Angle | Rule to respect | What success looks like |
|---|---|---|---|
| **`awesome-*` list PRs** (awesome AI agents, awesome Claude, awesome developer/automation tools) | One clean line that **matches the list's existing entry format exactly**: e.g. *"Driftless — overnight self-improving maintainer automation for Claude and Codex (single-source two-profile mirror + containment gate)."* | Follow each list's CONTRIBUTING rules precisely (alphabetical/section placement, description length, no marketing fluff). One list = one PR. Only list where it genuinely fits. | PR merged (or maintainer-approved) into a list whose audience is the real target. Earned placement, not spam. |
| **GitHub Discussions** (on the Driftless repo) | Open a "Show & Tell" / "Announcements" thread mirroring the Show HN angle: the non-dev hook, a link to the 60-second proof, an invitation to run a gate on macOS/Linux and report host evidence. | Keep it in the repo's own Discussions; honest caveats included; invite contribution rather than demand stars. | A live thread newcomers land on, plus real host-evidence contributions that upgrade the matrix. |
| **Issue/PR hygiene as a shopfront** | Keep the public issue/PR graph clean and readable so a visitor who clicks "issues" sees a real, well-run project. | No churn-for-show; the graph must reflect honest day-one state. | A visitor's "is this real?" click lands on a tidy, active, honest repo. |

### 2B — Human-posts (agent drafts + monitors; human posts)

| Channel | Angle | Rule to respect | What success looks like |
|---|---|---|---|
| **Hacker News — "Show HN"** | Title leads with the outcome: *"Show HN: Paste one prompt before bed, wake up to merged PRs (for Claude and Codex)."* Agent prepares the title + a first comment that explains the single-source mirror and the honest evidence matrix. | One submission, no vote solicitation. The author must be present to answer in-thread (the single biggest legitimate multiplier). Honest about day-one + UNVERIFIED. | Front-page or active thread with substantive replies; qualified visitors; honest discussion. **Not** a vote spike. |
| **Reddit** (AI-coding-agent / LLM-tooling / self-hosted-automation subreddits) | Lead with the non-dev story, link the 60-second proof, repo link last. Agent drafts per-subreddit variants. | Read each subreddit's rules first; some require flair, ban link-only posts, or restrict self-promo ratio. No cross-post spam. | Upvotes + genuine comments + saves in a subreddit where it fits; real questions answered. |
| **X / Twitter** (AI-agent builder community) | A short thread: the 60-second proof as a clip/GIF first, then "one edit improves both Claude and Codex," then the link. Agent drafts the thread + monitors replies. | Tag nothing falsely; let the demo carry it. No engagement-bait. | A clip that gets reshared by real builders; replies the author answers. |
| **GeekNews / hada.io** (Korean dev community) | Korean-first post using the KO hooks ("자기 전에 프롬프트 하나, 아침에 머지된 PR"); link the Korean README + docs/ko. Agent drafts in Korean + monitors. | Follow hada.io submission norms; Korean audience, KO-first framing; honest caveats in Korean too. | A live GeekNews thread with Korean-speaking builders engaging; KO docs get traffic. |
| **dev.to / written walkthrough** (optional, durable) | A calm long-form "here is how it works and why two tools," with a real morning-report screenshot and doc links. Agent drafts; human publishes. | Real screenshots only; cross-post canonical-tagged to avoid SEO dilution. | Ranks in search; gives newcomers a full, honest explanation; steady trickle of qualified visitors. |

---

## Part 3 — Earn stars honestly: Do / Never

There is exactly one durable way to earn stars: **make a thing people want, show
it where those people are, and be honest.** Everything else is a spike that
collapses and takes the project's reputation with it.

### Do

- **Ship the proof, not the promise.** A clip of a real morning report with merged
  PRs beats any amount of description.
- **Be in the threads.** Answering quickly and honestly is the single biggest
  *legitimate* multiplier — early author engagement is what turns a quiet post
  front-page, the honest way.
- **Lead with the unique hook every time.** "One prompt -> merged PRs" and "one
  edit improves both Claude and Codex." Consistency makes it memorable.
- **Invite host-evidence contributions.** The Host Evidence Matrix literally asks
  macOS/Linux users to run a gate and report — a real reason to engage that earns
  goodwill and a star at the same time.
- **Tell the truth about what is unverified.** "Verified on Windows; macOS still
  UNVERIFIED" builds more trust than a fake "cross-platform" badge — and trust is
  what this audience converts into stars.
- **Match every claim to the evidence matrix**, and attribute the dev-runtime
  numbers as dev-runtime numbers.

### Never (these get accounts banned and destroy credibility)

- **Never buy stars; never run star-exchange / "star-for-star" rings; never use
  bot accounts.** Platforms detect it, it violates their terms, and a flagged repo
  loses far more than it gained.
- **Never manipulate votes** — no asking groups to mass-upvote a Show HN or Reddit
  post on cue. HN and Reddit detect voting rings and penalize them.
- **Never use sockpuppets, fake reviews, or pretend to be an unrelated happy user.**
- **Never spam** unrelated channels or blast DMs. Off-topic self-promo gets you
  removed from the very communities you wanted to reach.
- **Never overclaim** to inflate appeal. One disproven claim erases all the trust
  the honest evidence built — the review-backfire is permanent.

Why it matters beyond ethics: it is a **terms-of-service** issue (bans), a
**credibility** issue (this audience checks), and a **review-backfire** issue (a
caught manipulation becomes the story instead of the product).

---

## Part 4 — The gradient loop: post -> observe -> log -> refine

Launch is not a one-shot. Treat each post as a measurement and slide toward what
actually works — the same five-axis "push the trend the right way" discipline the
product itself runs on.

1. **Post** one channel at a time (per the execution gate: manager publishes,
   reviewed each time). Never fire all channels at once — you lose the ability to
   tell which message worked.
2. **Observe.** For ~24-72h after each post, the agent monitors public reactions
   (comment sentiment, the questions people actually ask, which hook they quote
   back, click-through to the 60-second proof, stars/forks delta) — read-only,
   from public signals, no scraping of private data.
3. **Log what worked** in `evidence/loop-log.md` (or a launch-specific evidence
   note): which channel, which hook led, what the top question/objection was, what
   the reaction was. Keep it honest — log the flops too.
4. **Refine.** Feed the learning back into the next post and into
   [positioning.md](./positioning.md) if a hook consistently lands or consistently
   confuses. A recurring objection that costs trust gets promoted up the
   lesson-promotion ladder (e.g. a FAQ entry, a README clarification, or a doc
   fix), not just noted once.

```
post one channel -> observe public reactions (24-72h) -> log what worked / what flopped
       ^                                                                |
       +------------------- refine the hook + the next channel <--------+
```

The point of the loop: stop guessing which message resonates and let real
reactions steer it — while every refinement stays inside the honest-claims and
manager-only-publish rails.

---

## Where to go next

- **[positioning.md](./positioning.md)** — the locked tagline, the two 15-second
  hooks, the category claim, the three differentiators, the "never say" list.
- **[promotion-strategy.md](../en/promotion-strategy.md)** — the fuller strategy
  and the **manager-only execution gate** (the agent prepares and drives the
  browser; the human logs in and clicks publish; the agent never touches a
  credential).
- **[Host Evidence Matrix](../en/host-evidence-matrix.md)** — the evidence every
  public claim must match.
