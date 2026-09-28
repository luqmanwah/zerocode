# ZERO Skill — Infrastructure Reference

Load this reference only when the mission actually involves routing, environment, MCP, runtime, or infrastructure.

## Verified local baseline

The verified minimum route is:

Luqman
-> ZERO
-> ZEROLINE
-> scoped context routing
-> Codex Desktop
-> GitHub / Drive as needed

ChatGPT Web may act as reasoning/control peer, but the Codex skill must remain usable without a live Web-to-desktop bridge.

## Current Codex state

Verified during the 2026-09-28 cutover:
- legacy `supabase-aoa` MCP removed
- legacy `aoa-sync` MCP removed
- legacy AOA prompt hook removed
- global Codex bootstrap reduced to ZEROCODE routing
- ordinary-task context isolation passed
- ZERO invocation test passed
- optional Zeabur and InsForge adapters disabled

Generic local tooling may include:
- `node_repl`
- `cua_repl`
- other workspace/browser capabilities exposed by the current Codex runtime

Do not assume a tool exists solely because it appears in this reference. Inspect the current environment when the mission needs it.

## Optional future topology

A remote relay may later connect:

ChatGPT/Web
<-> ZERO Relay
<-> ZERO Local
<-> Codex

A relay is transport/control infrastructure only.
It must never become the identity, memory, or canonical reasoning source of ZERO.

## Source boundaries

- `luqmanwah/zerocode`: ZEROCODE protocol/config/skill source
- private `luqmanwah/AOA-CONNECT/aoa-memory`: scoped AOA/PYXIS history/research/canon archive
- Google Drive Work Mode: artifacts/evidence/working files
- local filesystem: execution surface

Do not globally merge these stores.
Route them by objective.
