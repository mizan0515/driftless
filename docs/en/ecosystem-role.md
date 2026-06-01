# Why Driftless matters to the ecosystem (not stars)

Driftless is new and does not lead with adoption metrics. Star count is a weak
signal, and a brand-new repo will not have it. The honest case for Driftless is
its **ecosystem role**, argued plainly here.

## The role: a cross-tool reference implementation of safe overnight self-maintenance

Driftless is a working reference for something the agent ecosystem is actively
converging on but few projects demonstrate end-to-end: **a non-developer running
autonomous, self-improving maintainer-automation across more than one agent tool,
from one source of truth, behind containment.**

- **Cross-tool by design.** The same shared tier drives both **OpenAI Codex** and
  **Claude Code**. This is the interoperability story the ecosystem's open
  standards (MCP, `AGENTS.md`) exist to enable — OpenAI and Anthropic co-founded
  an agent-interoperability foundation around exactly these standards. "One edit
  improves both profiles" is a concrete, machine-checked instance of that
  interoperability, not a slogan.
- **It expands *who* can maintain open source.** The program's mission is
  reducing maintainer burden. Driftless reduces it to near-zero for the operator:
  a person who cannot hand-write the code can still run real maintenance —
  triage, PR preparation, releases — because the agent does the labor inside
  human-only gates. That widens the pool of people who can keep software healthy.
- **Containment-first is the part most "autonomy" demos skip.** Driftless never
  touches host-global agent config, proves it with a gate that FAILs on a planted
  violation, and asks before installing any MCP server, plugin, or dependency.
  Safe autonomy is the credibility bar for agent tooling, and Driftless treats it
  as the headline, not a footnote.

## How this maps to the program's named work

The program names PR review, triage, release workflows, and maintainer
automation. Driftless does not reskin those words — it makes the whole category
**operable by a non-developer across two tools at once**, and proves the method
by running it on its own repository in the open. API credits would fund the
Codex `goal`-mode half of the mirror (PR review and release automation in the
Codex profile), which is squarely the fund's stated use; because one edit
improves both profiles, that investment compounds into the shared tier both
ecosystems consume.

## What we are NOT claiming

- Not broad adoption, not stars, not "widely used yet." Day one is day one.
- Not "fully autonomous." It is **autonomous within gates**; a human owns every
  risk, permission, billing, public-release, and destructive decision.
- Not verified on every OS. See the [host evidence matrix](./host-evidence-matrix.md);
  anything unrun is labeled UNVERIFIED.

The case is the role and the method, demonstrated live — not the metrics.
