# Codex for Open Source — application package

Paste-ready answers for the OpenAI Codex for Open Source program
(https://openai.com/form/codex-for-oss/). Everything here is honest and matches
the public repository. The human maintainer reviews and submits; nothing is
posted automatically.

Primary repository: `https://github.com/mizan0515/driftless` (single repo, single
apply URL).

## Maintainer role (the program's #1 factor — state it plainly)

A human operator-architect ([@mizan0515](https://github.com/mizan0515)) maintains
Driftless: designs the goals, sets the guardrails, owns every product, priority,
release, and irreversible decision, and approves what merges. The AI agents the
project ships (Claude Code and OpenAI Codex) do the implementation labor under
that direction, behind containment and human-only gates. This "agent-built under
a human maintainer" shape is the project's thesis, stated openly in
[MAINTAINERS.md](../../MAINTAINERS.md) — not hidden, not overstated as "fully
autonomous."

## Form answers (each <= 500 characters)

**Why this repository qualifies**

> Driftless is net-new ecosystem capability working today: it lets a
> non-developer run autonomous, self-improving maintainer-automation — overnight
> ticketing, parallel self-recovering workers, auto-merged PRs — across both
> Codex and its open-standard peer Claude, from one source of truth, behind a
> containment guard that never touches host-global config. It doesn't reskin
> triage/PR-review/release; it makes that category operable by people who can't
> code, and proves it by maintaining its own public repo: real merged PRs,
> closed issues, passing containment/mirror-parity/fresh-clone gates.

**How API credits would be used**

> Credits fund the Codex `goal`-mode half of the single-source mirror: PR review,
> release automation, and triage running in the Codex profile on real OSS
> backlogs — squarely the fund's stated use. They also power the static 5-axis
> evaluation loop (tokens/intervention/time/money/performance), so each Codex run
> measurably lowers cost-per-merged-PR and the savings promote into enforced
> gates. Because one edit improves both profiles, every credit spent on the Codex
> side compounds into the shared tier both ecosystems consume.

**Anything else**

> The program is explicitly tool-agnostic (Codex, OpenCode, Cline, pi, OpenClaw)
> and OpenAI co-founds open agent standards with Anthropic (AAIF: MCP +
> AGENTS.md), so "one source improves both Claude and Codex" is ecosystem
> leverage, not split loyalty. Honest status: a new, single-maintainer public
> repo with full admin control, applying under the "important ecosystem role"
> clause — not claiming adoption it lacks. Everything Done is command-proven;
> anything unrun is labeled UNVERIFIED. One repo, one apply URL, one install
> command.

## Evidence a reviewer can check (no trust required)

- The repo maintains itself in the open: see
  [merged PRs](https://github.com/mizan0515/driftless/pulls?q=is%3Apr+is%3Amerged),
  [issues](https://github.com/mizan0515/driftless/issues?q=is%3Aissue),
  [commits](https://github.com/mizan0515/driftless/commits/main).
- The gates run in CI on Windows and Linux (containment + install on Ubuntu):
  the [Actions tab](https://github.com/mizan0515/driftless/actions).
- The single-source mirror is machine-checked: `scripts/Test-ProfileMirrorParity.ps1`.
- The ecosystem-role argument: [ecosystem-role.md](./ecosystem-role.md).
- The private development-runtime numbers vs this repo's public graph, side by
  side and honestly separated: [../../evidence/loop-log.md](../../evidence/loop-log.md).

## What we do NOT claim

Not broad adoption, not stars, not "fully autonomous." Day one is day one; the
case is the role and the method, demonstrated live and verifiable here.
