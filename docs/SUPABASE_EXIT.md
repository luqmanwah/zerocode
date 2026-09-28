# Supabase Exit Plan

ZEROCODE does not depend on Supabase.

Supabase removal from legacy AOA/PYXIS infrastructure should be performed only after dependencies are inventoried and replacements are proven.

## Exit gates

Before deleting any Supabase project/resource:

1. Inventory every Supabase URL, key, RPC, table, storage bucket, auth dependency, Edge Function, webhook, and environment variable.
2. Classify each dependency:
   - dead
   - legacy but still used
   - canonical data
   - replaceable runtime state
3. Export/backup any data that matters.
4. Replace live dependencies with ZEROCODE-compatible adapters.
5. Test GPT/Codex/OpenClaw workflows without Supabase.
6. Remove Supabase secrets from local/Zeabur/GitHub environments.
7. Re-run repository and runtime search for `supabase`.
8. Only then delete the Supabase project/resources.

## Current rule

Do not create new ZEROCODE dependencies on Supabase while the exit is underway.
