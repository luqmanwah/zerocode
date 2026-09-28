# ZERO Dynamic Alias Registry

Purpose: store user-defined shorthand without hard-coding the ZERO command language.

## Record schema

```yaml
alias:
meaning:
scope:
status: DRAFT | TEST | VERIFIED | ACTIVE | RETIRED
authority:
created:
expires:
notes:
```

## Rules

- Aliases are optional conveniences.
- An alias does not replace semantic intent resolution.
- Unknown phrases may still be resolved without being registered.
- Scope-specific aliases must not leak globally.
- Latest explicit Luqman definition wins.
- Retired aliases remain historical but inactive.

## Current aliases

None.
