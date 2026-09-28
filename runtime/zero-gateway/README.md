# zero-gateway

Minimal stateless entrypoint for the ZEROCODE Zeabur field.

## Endpoints

- `GET /health`
- `GET /zeroline`
- `POST /mission`

Example:

```json
{
  "objective": "Research missing evidence for the active document",
  "hardlines": ["Do not change the approved document structure"],
  "runtime_hint": "auto"
}
```

The gateway currently does not persist tasks and does not call models. This is intentional for bootstrap: first prove mission intake and ZEROLINE survival, then add adapters only when useful.

No Supabase dependency.
