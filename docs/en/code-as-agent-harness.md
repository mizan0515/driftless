# Code as agent harness

A design principle for agent runtimes: **code is the agent's primary action
substrate.** When an action, rule, or verification recurs, must be verified, or
carries state, express it as executable code -- a script, gate, hook, schema
check, or composed code action -- rather than one-off prose or a long chain of
discrete tool calls.

It is the companion to the [improvement principle](../../profiles/shared/contract/SHARED_DESIGN_CONTRACT.md):
the improvement principle says *which* axis to improve and *where* a change
belongs; this one says *how* a durable improvement should be embodied.

## Why

Prose rules are not executable, so they are re-violated and re-explained, and the
cost lands on the person supervising the agent. A rule that is expressed as code
runs the same way every time, fails loudly when broken, and leaves a reusable
artifact behind. The goal is that each run lowers the next run's cost, not just
finishes the current task.

## What it means in practice

- **Executable verification over assertion.** A "done" or "pass" claim is backed
  by a runnable check -- a gate, a test, a schema validation, or an end-to-end run
  -- not a summary sentence. A green check is scoped evidence; a sentence is not.
- **Stateful, inspectable artifacts.** Durable state (decisions, run state,
  evidence) lives in checkable files and schemas, not in ephemeral chat context,
  so it survives compaction and hand-off.
- **Promote recurring rules toward code.** A rule whose violation is costly moves
  down the [lesson-promotion ladder](lesson-promotion-ladder.md)
  (memory < skill < hot rule < hook < gate) toward an enforced surface. Do not
  re-litigate a prose rule that keeps being broken -- make it executable.
- **Compose, don't re-derive.** Build and extend reusable scripts and skills
  instead of regenerating logic each turn. Code actions compose; isolated tool
  calls do not.
- **Bounded execution.** Code-as-action runs inside the runtime's containment
  boundary, always paired with the safety gates, never outside them. Execution
  power and the guardrails ship together. See [guardrails](guardrails.md).

## When not to apply it

The test is recurrence, verifiability, or state -- not novelty. A genuine one-off
needs no gate, and a single discrete tool call (a lookup, an untrusted or
non-inspectable action) is the right tool when there is nothing to reuse, verify,
or keep. Over-applying the principle just trades prose sprawl for gate sprawl;
the [improvement principle](../../profiles/shared/contract/SHARED_DESIGN_CONTRACT.md)
reuse-first check still applies before adding any new surface.

## How Driftless uses it

The runtime's safety and discipline checks are gate scripts, not paragraphs: the
containment boundary, the Windows text-safety rule, the hot-context budget, and
this very principle are each enforced by a `Test-*.ps1` gate that runs in CI, so a
change that drops the rule fails the build instead of quietly shipping. Structural
presence is enforceable this way; whether an agent then *applies* the principle in
its own choices is behavioral and still needs real workflow evidence.
