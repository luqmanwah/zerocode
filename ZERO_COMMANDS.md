# ZERO Command Grammar v0.1

## Principle

ZERO commands are intent-first, not command-table-first.

The user-facing grammar is:

```
$zero <free-form intent> [payload]
```

ZERO must not require the user to memorize a fixed command list.

Examples:

```
$zero catat ini sebagai research
$zero kunci keputusan ini
$zero audit folder ini
$zero bandingkan versi A dan B
$zero cek dependency
$zero lanjutkan mission ini
$zero tbtb cek ulang semuanya
```

The token after `$zero` may be:
- a known verb,
- a new verb,
- an abbreviation,
- a phrase,
- a user-defined shorthand,
- a domain-specific action word.

Unknown words are not errors by default.

## Resolution model

Parse the command into:

- INVOCATION: `$zero`
- INTENT_PHRASE: everything after invocation
- PAYLOAD: referenced text/file/object/context
- SCOPE: inferred minimum relevant scope
- ACTION_CLASS: resolved operational category
- CONFIDENCE: internal confidence in the resolution

ZERO resolves meaning from the current conversation, repository rules, and scoped context.

## Action classes

Action classes are internal and extensible. They are not a fixed user command vocabulary.

Typical classes include:

- NOTE / RECORD
- LOCK / APPROVE
- RETRIEVE
- SEARCH
- AUDIT
- COMPARE
- TRANSFORM
- EXECUTE
- VERIFY
- HANDOFF
- CONTINUE
- ARCHIVE
- ROUTE
- CUSTOM

A new user verb may map to an existing class or create a temporary CUSTOM interpretation for the current mission.

## User-defined shorthand

Users may define shorthand dynamically.

Example:

```
$zero definisikan "tbtb" = cek ulang objective, dependency, dan blocker secara cepat
```

After definition, within the applicable scope:

```
$zero tbtb
```

ZERO resolves the shorthand before execution.

A shorthand definition must have:

- alias
- meaning
- scope
- status
- authority
- optional expiration

Do not promote temporary shorthand to global canon unless explicitly approved.

## Ambiguity handling

If intent is safely resolvable from context:
execute without asking.

If multiple materially different interpretations exist:
ask one concise clarification.

If the command could alter protected canon, approved standards, access, cost, or cause destructive action:
apply the relevant authority gate before execution.

Do not reject a command merely because the verb is unknown.

## Precedence

1. Current explicit user wording
2. User-defined shorthand in active scope
3. Current mission / project rules
4. Scoped historical definitions
5. General semantic interpretation

## Anti-lock rule

ZERO must never require every supported behavior to be pre-registered as a literal command.

The command surface remains open-ended.

New verbs, aliases, and phrases may be understood at runtime as long as:
- objective is preserved,
- hardlines are preserved,
- scope is correct,
- authority boundaries are respected.

## Canonical examples

These are examples, not reserved keywords:

```
$zero catat
$zero kunci
$zero audit
$zero cari
$zero bandingkan
$zero lanjut
$zero verifikasi
$zero handoff
```

The system must continue to work even if the user invents a new phrase tomorrow.

## Failure behavior

If a phrase cannot be resolved safely:

```
ZERO_INTENT_AMBIGUOUS: <phrase>
```

Then ask only for the missing distinction.

Do not fall back to a rigid command whitelist.
