# ZERO Rule Registry

Purpose: track incremental rule injection across environments and chats.

## Required fields

```yaml
rule_id:
scope:
status: DRAFT | TEST | VERIFIED | ACTIVE | SUPERSEDED | RETIRED
purpose:
trigger:
behavior:
exclusions: []
precedence:
verify:
rollback:
source:
updated:
```

## Initial global rules

### ZERO-GLOBAL-001
status: ACTIVE
scope: GLOBAL
purpose: Objective-first execution
trigger: Any substantial task
behavior: Resolve the active objective before selecting context or method.
exclusions: []
precedence: Below current explicit user instruction.
verify: Output solves the actual active task.
rollback: Return to previous Last Known Good.

### ZERO-GLOBAL-002
status: ACTIVE
scope: GLOBAL
purpose: Context isolation
trigger: Memory/history retrieval
behavior: Load only relevant scoped context.
exclusions:
- unrelated project history
- unrelated AOA/PYXIS research
precedence: Below current source/file and explicit user instruction.
verify: No unrelated context appears in output.
rollback: Drop injected context and re-route.

### ZERO-GLOBAL-003
status: ACTIVE
scope: GLOBAL
purpose: Research/canon separation
trigger: Research, hypotheses, proposals, historical designs
behavior: Do not silently promote research or assistant proposals to canon.
exclusions: []
precedence: Explicit Luqman approval overrides.
verify: Status is preserved correctly.
rollback: Restore prior status.

## Next injection

Add rules one at a time.
Do not batch unrelated project rules.
