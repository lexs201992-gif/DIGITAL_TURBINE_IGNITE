┌─────────────────────────────────────────────────────────────────┐
│  JENKINS (Unisoc/Tsinghua)                                      │
│  + Alibaba (infra) + AS4812 (Longcheer)                         │
│                                                                 │
│  Build agents:                                                  │
│    sh-16-52.rnd.longcheer.net                                   │
│    sh-48-205.rnd.longcheer.net                                  │
└──────────────────────────────┬──────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────┐
│  C2 INFRASTRUCTURE                                              │
│                                                                 │
│  slion.net (117.24.6.122)                                      │
│  fulguris.slion.net (949B)                                     │
│  fulguris_decoy (208.113.159.31)                               │
│  longcheer.net (114.94.9.124)                                  │
│  AWS Frankfurt (52.28.0.0/16)                                  │
│  Cloudflare (2606:4700:4700:1111:853)                          │
│  Alibaba Cloud (eu-central-1) [Transsion/Shalltry]             │
└──────────────────────────────┬──────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────┐
│  ULA: fd00:2:fd00:1:fd00:1:fd00:1                               │
│  (DTI internal control plane)                                   │
│                                                                 │
│  LATAM:    com.dti.phoenix (amxmx, app_americaMovilRelease)     │
│  India:    InMobi + Jio (Dixtel JV)                             │
│  Asia:     Transsion (Infinix/Tecno/itel) + Shalltry            │
│  Africa:   Transsion (1-in-2 phones, NowSecure Jul 2026)        │
│  US:       Vietnam factory (Longcheer) → Motorola/Samsung       │
└─────────────────────────────────────────────────────────────────┘   
