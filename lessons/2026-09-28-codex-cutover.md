# ZEROCODE Operational Lesson — 2026-09-28 Codex Cutover

## Result
PASS

## What worked
- Back up first.
- Remove only confirmed legacy MCP/hook routes.
- Keep the global bootstrap small.
- Preserve generic tooling.
- Test ordinary tasks and ZERO separately.
- Keep optional infrastructure disabled.
- Stop broad audits when they exceed mission scope.

## Important observation
A broad environment audit initially read more configuration/environment content than required. Stopping that route and rerunning a bounded audit was the correct behavior.

This validates ZEROLINE drift control:
scope expansion is itself a form of drift when the mission does not require it.

## Residuals
- stale legacy environment-variable names may remain locally
- project-level Developer Docs MCP activation is not yet proven

Neither residual blocks the verified minimum ZEROCODE route.
