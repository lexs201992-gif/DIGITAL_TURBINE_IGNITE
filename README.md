```markdown
# Digital Turbine Ignite / Phoenix Core — Technical Analysis

## TL;DR

Digital Turbine's carrier preloading SDK (DTI) is embedded in
Longcheer-ODM T606/T616 firmware as a dynamic APK with 12 modules,
including a dedicated `americaMovil` module. The SDK has
`INSTALL_PACKAGES`, `WRITE_SECURE_SETTINGS`, and launcher read access.
The opt-out activity is disabled. The package migrates per FOTA
(com.dti.motorola → com.dti.amx → com.dti.phoenix.core) to evade
static detection rules.

## Key Findings

| # | Finding | Severity |
|---|---------|----------|
| 1 | Package migration per FOTA (anti-correlation) | HIGH |
| 2 | `INSTALL_PACKAGES` + `WRITE_SECURE_SETTINGS` (system-level) | CRITICAL |
| 3 | `com.motorola.launcher3.permission.READ_SETTINGS` (launcher control) | HIGH |
| 4 | `FOREGROUND_SERVICE_SYSTEM_EXEMPTED` (no notification) | MEDIUM |
| 5 | OptOutActivity `enabled="false"` (no user opt-out) | HIGH |
| 6 | Dynamic APK: 12 modules incl. `americaMovil` | MEDIUM |
| 7 | AfterWizardActivity with `category.HOME` (launcher replacement) | HIGH |
| 8 | Timestamp epoch 0 (1981) in device build (anti-forensic) | MEDIUM |
| 9 | `allowBackup=false` (no adb backup) | LOW |
| 10 | Multi-carrier permissions (7 US + Bouygues FR + América Móvil) | INFO |

## IOCs

### Packages
| Package | Version | Context |
|---------|---------|---------|
| `com.dti.motorola` | 10.6.033-6667 | Android 14 (G04s) |
| `com.dti.amx` | 23.1.24-1314 | Android 16 |
| `com.dti.phoenix.core` | TBD | Android 17 |

### SHA-256
| File | Hash |
|------|------|
| MotorolaIgniteAgent.apk (device) | `6de485401cdf6badff3e143b1296f9ec3afcb45f72b924c6e387b5652a8f4eef` |
| com.dti.amx (VT) | `7902116480673e44239c5a310bb5feed257692eacca25a1284a9fa613a8ebd20` |

### Certificate
| Field | Value |
|-------|-------|
| Subject | CN=Ronen Abraham, O=Logia, OU=R&D |
| Serial | `412830c7` |
| Valid | 2011-12-15 → 2061-12-02 |
| SHA-256 | (extract from APK) |

### Dynamic Modules (fused)
```
americaMovil, attribution, base, contentMedia, dynamicInstalls,
igniteCompat, notification, serviceLayer, singleTap, ui, webview, wizard
```

### Carrier Permissions (multi-carrier)
```
com.digitalturbine.android.apps.news.att.READ_PERMISSION_TELECOM
com.digitalturbine.android.apps.news.blu.READ_PERMISSION_TELECOM
com.cricketwireless.thescoop.READ_PERMISSION_TELECOM
com.mobileposse.client.moment.READ_PERMISSION_TELECOM
com.digitalturbine.android.apps.news.pwg.READ_PERMISSION_TELECOM
com.swishme.tracfone.READ_PERMISSION_TELECOM
com.digitalturbine.android.apps.news.uscellular.READ_PERMISSION_TELECOM
com.tmobile.dm.cm.permission.ADDITIONAL_SETTINGS_UI_START
com.sprint.ce.updater.permission.TRUSTED_INSTALL_UPDATES
```

## Detection

### Suricata
```
alert dns $HOME_NET any -> any any (msg:"DTI Phoenix Core - América Móvil module"; dns.query; content:"americaMovil"; nocase; sid:1000024;)
alert tcp $HOME_NET any -> [172.67.214.246,172.67.70.25] 443 (msg:"DTI Funding - Cloudflare Pangle/TikTok"; sid:1000005;)
```

### VQL (Velociraptor)
```yaml
name: DTI_PHOENIX_PRESENCE
query: |
  SELECT name, version, path
  FROM apps()
  WHERE name IN ('com.dti.motorola', 'com.dti.amx', 'com.dti.phoenix.core')
```

### Manual (shell)
```bash
pm list packages | grep -E "com\.dti\.(motorola|amx|phoenix)"
dumpsys package com.dti.amx | grep -A5 "fused.modules"
pm dump com.dti.amx | grep "americaMovil"
```

## References
- [Press Release: Exclusive Motorola Collaboration (May 15, 2024)](./press/2024-05-15.md)
- [SEC Admin Proceeding 34-84998 (Jan 2019)](./evidence/sec_sanction_2019.md)
- [VT Graph: com.dti.amx](https://www.virustotal.com/gui/file/79021164...)
- [Parent: Longcheer-Unisoc-Architectural-Total_control](https://github.com/lexs201992-gif/Longcheer-Unisoc-Architectural-Total_control)

## License
MIT

## Author
Alex de la Cruz (@lexs17) — September 2026
```
