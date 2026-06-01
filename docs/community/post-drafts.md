# Community post drafts (paste-ready)

Channel-specific launch copy for Driftless. **Drafts only** — nothing here is
posted automatically. The manager reviews each one, opens the channel in their
own browser, logs in themselves, and clicks publish (see
[promotion-strategy → The execution gate](../en/promotion-strategy.md#the-execution-gate-hard-rule)).

## The lead, every channel, in this order

1. **Non-developer hook (first):** paste one prompt before bed, wake up to merged pull requests — you never write code.
2. **One-edit-both hook (second):** one edit improves both Claude **and** Codex, because both run from one shared source that a gate keeps from drifting apart.
3. **Category (third):** overnight self-improving maintainer automation for Claude and Codex.

## Honesty rules baked into every draft below

- **Never self-weakening.** No "no stars yet," "just a small kit," "nothing
  special." State what it does; let the evidence carry it.
- **Never parrot program/category words as the headline.** "PR review," "triage,"
  "release gates" are body proof, never the title.
- **Keep the caveats honest.** This public repo is **day one** (v0.1.0). The big
  numbers below are **measured on the development runtime**, labeled as such, and
  are proof-of-method, not a claim about this repo's adoption. macOS is
  **UNVERIFIED**; say so.

### The two number sets — do not mix them

| Set | Numbers | How to label it |
|---|---|---|
| **Public repo, day one** | a handful of merged PRs / closed issues / commits, growing live | "this repo, in the open, starting now" — link the live commits/PRs/issues pages instead of freezing a count |
| **Development runtime (method proof)** | 113 merged PRs · 94 issues · 114 commits · 73 skills (39 Claude + 34 Codex) | "measured on the runtime Driftless was extracted from — proof the loop is real, not this repo's star count" |

CI is green on **Windows + Linux**; containment gate passes clean and FAILs on a
planted violation; mirror-parity gate runs 11 checks. macOS is UNVERIFIED.

---

## 1. Hacker News — Show HN

**Title** (pick one; both lead with the outcome, neither parrots the category):

> Show HN: Paste one prompt before bed, wake up to merged PRs (Claude and Codex)

Alternate, if a tighter title is wanted:

> Show HN: An overnight AI maintainer that opens and merges its own PRs — for Claude and Codex

**First comment (you, the author — post immediately after submitting):**

```
I'm the operator-architect behind Driftless. The one-line pitch is literally the
title: you paste one parent prompt before bed, and an AI maintainer reads your
repo's open issues, splits them into conflict-aware tickets, runs workers in
parallel on branches, opens PRs, and merges the ones that pass every safety gate.
You review merged PRs in the morning instead of writing code. The whole thing is
aimed at a non-developer operator — the person who knows what should happen but
not how to make a computer do it.

The part I'd most like feedback on is the architecture: it's ONE repo with TWO
isolated agent profiles side by side — Claude Code and OpenAI Codex — that
consume one shared tier (rules, skills, schemas, gates). Edit a shared rule once
and both profiles get it. That promise is enforced by a mirror-parity gate (11
checks) that FAILs the moment the two profiles drift apart, so they can't
silently diverge. Multi-tool here is leverage, not a hedge: MCP and AGENTS.md are
co-developed open standards, so speaking both is using a shared standard.

Honesty up front, because this audience (rightly) smells hype:
- This public repo is v0.1.0, day one. Its own PR/issue graph starts now and
  grows in the open — watch it fill in, don't take my word for it.
- The big numbers are from the development runtime Driftless was extracted from,
  where this exact loop ran on its own backlog: 113 merged PRs, 94 issues, 114
  commits, 73 skills across the two profiles. That's proof the loop is real
  enough to maintain itself — not a claim about this repo's stars.
- A containment gate proves the repo never reads/writes a forbidden path (.env,
  SSH keys, secret stores, browser profiles, the host-global ~/.claude and
  ~/.codex) and never leaks a credential. Plant one violation and it returns
  FAIL before the change ships. CI is green on Windows and Linux. macOS is
  honestly still UNVERIFIED — there's a host-evidence matrix that labels exactly
  what's proven where.
- "Autonomous" means autonomous WITHIN gates. The agent can fix, branch, and
  merge on its own; it cannot spend money, publish to the world, touch private
  files, or do anything irreversible — those come back to the human as a short
  question.

MIT, small modular pieces you own rather than a heavy framework. Repo and a
60-second proof in the README: https://github.com/mizan0515/driftless

Happy to answer anything about the single-source mirror, the containment model,
or the five-axis approach (tokens / intervention / time / money / correctness).
```

**Thread discipline:** be present, answer quickly and honestly, no asking anyone
to upvote. Early honest author engagement is the legitimate multiplier.

---

## 2. Reddit

**Which subreddits** (read each one's rules first — several ban link-only posts
or require flair; lead with the story, link the repo last):

- AI coding-agent / agent-tooling communities (e.g. r/LocalLLaMA-adjacent agent
  threads, r/ChatGPTCoding, r/ClaudeAI, agent-orchestration subs).
- Self-hosted / automation communities (e.g. r/selfhosted, r/automation) — the
  "runs on its own backlog overnight, behind containment" angle fits there.
- OpenAI/Codex-focused subs where the two-tool story is genuinely on-topic.

Only post where Driftless actually helps the people there. One well-placed,
rules-respecting post beats five cross-posts that read as spam.

**Body (self-promo-rule-respecting — story first, repo link at the end):**

```
Title: I built an overnight AI maintainer for a non-developer: paste one prompt
before bed, review merged PRs in the morning (works on Claude AND Codex)

Background: I'm not posting a "look at my repo" wall — I want feedback on the
design, and the honest caveats are in here too.

The problem I was solving: most "AI coding" tools assume YOU drive — you write
the prompt, read the diff, approve each step. That's fine if you're a developer.
I wanted the opposite: a person who knows WHAT should happen but not HOW to make
a computer do it, who can still keep a repo healthy.

How it works: you paste one parent prompt before bed. The agent reads the open
issues, splits them into conflict-aware tickets, runs workers in parallel on
branches, opens PRs, and merges the ones that pass every safety gate. You wake up
to merged PRs and a short plain-language morning report (done / needs-your-
decision / blocked / in-progress), with the raw commands as evidence AFTER the
summary, never instead of it.

The design choice I'd like critique on: it's one repo with two isolated agent
profiles — Claude Code and OpenAI Codex — sharing one source of truth. Edit a
shared rule once, both profiles get it, and a mirror-parity gate FAILs if they
ever drift apart. Multi-tool is leverage (MCP + AGENTS.md are shared open
standards), not splitting attention.

Safety, because autonomy without fences is a footgun: a containment gate proves
the repo never touches .env, SSH keys, secret stores, browser profiles, or the
host-global agent homes, and never leaks a credential — plant a violation and it
returns FAIL. Install asks before doing anything and defaults to NO.

Honest status: this public repo is v0.1.0, day one — its PR/issue history starts
now, in the open. The bigger numbers (113 PRs / 94 issues / 73 skills) are from
the runtime it was extracted from, where the loop ran on its own backlog; that's
proof the method is real, not a stars claim. CI is green on Windows and Linux;
macOS is still UNVERIFIED and labeled that way.

MIT. Would genuinely like to hear where the single-source-mirror idea breaks for
your setup. Repo + 60-second proof: https://github.com/mizan0515/driftless
```

---

## 3. X / Twitter — short thread

**Tweet 1 (hook):**

```
Paste one prompt before bed. Wake up to merged pull requests. You never write
code.

Driftless is an overnight AI maintainer that reads your repo's issues, opens PRs,
and merges the ones that pass every safety gate — while you sleep.

For a non-developer. 🧵
```

**Tweet 2 (the "wait, how?" — one edit, both tools):**

```
The part that makes people stop: it runs Claude Code AND OpenAI Codex from one
shared source.

Edit a rule once -> both tool profiles get it. A mirror-parity gate FAILs the
moment they drift apart, so they can't silently diverge.

Multi-tool = leverage, not a hedge (MCP + AGENTS.md are shared standards).
```

**Tweet 3 (safe autonomy):**

```
"Autonomous" means autonomous WITHIN gates.

It can fix, branch, merge on its own.
It can't spend money, publish to the world, touch your private files, or do
anything irreversible — those come back to you as one short question.

A containment gate FAILs on a planted leak before it ships.
```

**Tweet 4 (honest proof + link):**

```
Honest: this repo is v0.1.0, day one — its PR history starts now, in the open.

The proof it's real: the runtime it came from ran this exact loop on its OWN
backlog — 113 merged PRs, 94 issues, 73 skills across both profiles.

MIT. 60-sec proof in the README:
github.com/mizan0515/driftless
```

(No false tags, no "RT to win." Let the demo travel. A short clip of a real
morning report on tweet 1 outperforms text.)

---

## 4. GeekNews / hada.io (Korean)

**제목:**

```
자기 전에 프롬프트 하나만 붙여넣으면, 아침에 머지된 PR이 와 있습니다 (Claude와 Codex 둘 다)
```

**본문:**

```
비개발자를 위한 야간 자율 AI 메인테이너 Driftless를 공개했습니다.

핵심은 제목 그대로입니다. 자기 전에 부모 프롬프트 하나를 붙여넣으면, AI 메인테이너가
저장소의 열린 이슈를 읽고, 충돌이 적은 단위로 티켓을 쪼개고, 워커를 병렬로 돌려
브랜치를 만들고, PR을 열고, 모든 안전 게이트를 통과한 것만 머지합니다. 아침에는 코드가
아니라 "머지된 PR"을 검토합니다. 코드를 직접 쓸 필요가 없습니다.

설계에서 가장 봐주셨으면 하는 부분: 하나의 저장소 안에 Claude Code와 OpenAI Codex
두 개의 격리된 에이전트 프로필이 나란히 있고, 둘이 "하나의 공유 소스"(규칙·스킬·스키마
·게이트)를 함께 읽습니다. 공유 규칙을 한 번 고치면 양쪽 프로필이 동시에 반영됩니다.
그 약속은 사람의 기억이 아니라 mirror-parity 게이트(체크 11개)가 강제합니다 — 두
프로필이 어긋나는 순간 FAIL이 납니다. 멀티툴은 분산이 아니라 레버리지입니다(MCP,
AGENTS.md가 공통 표준이라서요).

안전: containment 게이트가 .env, SSH 키, 시크릿 저장소, 브라우저 프로필, 호스트
전역 에이전트 홈(~/.claude, ~/.codex)을 절대 읽거나 건드리지 않고 자격증명을 유출하지
않음을 증명합니다. 위반을 일부러 심으면 배포 전에 FAIL을 반환합니다. 설치 스크립트는
무엇이든 하기 전에 물어보고 기본값은 "아니오"입니다.

솔직한 현재 상태: 이 공개 저장소는 v0.1.0, 첫날입니다. PR/이슈 기록은 지금부터
공개적으로 쌓입니다. 더 큰 숫자(PR 113개 / 이슈 94개 / 스킬 73개)는 Driftless를
추출해 낸 개발 런타임에서 이 루프가 "자기 자신의 백로그"에 돌았던 실측치입니다 — 별
개수 자랑이 아니라 "루프가 스스로를 유지할 만큼 진짜다"라는 증거입니다. CI는 Windows와
Linux에서 통과하고, macOS는 아직 UNVERIFIED로 정직하게 표시했습니다.

MIT 라이선스. 무거운 프레임워크가 아니라 직접 소유하는 작은 모듈 묶음입니다. 단일소스
미러 아이디어가 여러분 환경에서 어디서 깨지는지 피드백을 정말 듣고 싶습니다.

저장소 + 60초 데모: https://github.com/mizan0515/driftless
```

---

## 5. awesome-list PR — one-liner

Match each list's existing format exactly; only submit where Driftless genuinely
belongs (awesome AI agents, awesome Claude, awesome developer tools / automation).
Adjust punctuation/casing to the list's convention.

**Primary one-liner:**

```
- [Driftless](https://github.com/mizan0515/driftless) - Overnight self-improving maintainer automation for Claude and Codex: paste one prompt before bed, review merged PRs in the morning. One shared source drives both tool profiles (mirror-parity gate); containment gate keeps it off your private files. MIT.
```

**Shorter variant (for lists that cap description length):**

```
- [Driftless](https://github.com/mizan0515/driftless) - Paste one prompt before bed, wake to merged PRs. Overnight AI maintainer for Claude and Codex from one shared source, behind a containment gate. MIT.
```

PR description should state which list section it belongs in and why it fits;
follow that list's CONTRIBUTING rules (alphabetical order, link-check, etc.).
This is earned placement, not spam.
