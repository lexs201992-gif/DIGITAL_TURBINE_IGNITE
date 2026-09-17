# Logia Deck - Evidence

This is the Logia Deck evidence.

> First public trace of Abraham Ronen Logia Deck inside Phoenix Core (com.dti.amx). Previously undocumented.

### What's here

This folder contains only the base process — no visible payloads. Payloads are hidden in obfuscated Kotlin (`a.smali`) and native `.so`.

- `a.smali` — obfuscated entry, routes to C2
- `Encrypter.smali` / `DecEncrypter.smali` — Ronen Method (local encrypt/decrypt)
- `DB.smali` (151 kB) + `IgniteDatabaseOpenHelper.smali` (76 kB) — local encrypted DB
- `FirstLaunchTaskWorker.smali` — runs after wizard, before HOME
- `ServerRequest / ServerResponse` — C2 framework
- `LegacyUUIDHelper / CursorUtils` — device fingerprint + DB ops

### Why it matters

- Proves Phoenix Core = Digital Turbine Ignite rebrand
- Shows Siprocal SDK init + Firebase stack used as cover
- Manifest 1282 lines with `INSTALL_PACKAGES`, `WRITE_SECURE_SETTINGS`, `FOREGROUND_SERVICE_SYSTEM_EXEMPTED`, launcher persistence

Full analysis coming in /analysis/. This folder is just the base process.

/phoenix_core / ignite / abraham / logia / deck / ronen-method
