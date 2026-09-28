# Install ZERO Skill in Codex

Canonical skill source:

`skills/zero/SKILL.md`

Explicit invocation target:

`$zero`

The installed skill must remain thin. Do not copy all ZEROCODE documents into the skill.

When installing/updating:
1. preserve the canonical repo copy;
2. use the current Codex-supported skill installation mechanism;
3. do not create legacy prompt hooks;
4. do not bundle Supabase/State Hub;
5. do not enable optional MCP services;
6. verify the skill appears in Codex skill discovery;
7. test `$zero` with a bounded synthetic mission.

If the installed copy and repository copy differ, the repository copy is canonical unless Luqman explicitly promotes another version.
