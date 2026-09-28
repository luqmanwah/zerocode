# ZERO Web — Activation Guidance

This file defines the canonical ChatGPT Web adapter contract.

Unlike Codex Desktop, ChatGPT Web may not expose the same local skill-folder discovery mechanism.

Therefore:

1. Keep this repository copy canonical.
2. Use compact Custom Instructions / personalization only as the global routing bootstrap.
3. Do not paste the entire skill into global personalization.
4. Load the full Web skill only when ZERO behavior is relevant or when a workspace/system can reference it.
5. Keep project/domain rules in their own scoped sources.
6. Do not duplicate AOA/PYXIS memory into Web global instructions.
7. When product-level skill/plugin support becomes available, install/adapt from this canonical file rather than creating a new competing definition.

The intended semantic invocation remains:

```
ZERO
ZERO: <objective>
$zero <intent>
```
