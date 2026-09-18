
```markdown
# ORBITAL REVENUE ARCHITECTURE
## Financial-Technical Assessment of the Unisoc/Longcheer/Transsion ODM
## Ecosystem and Its Consumer Device Distribution Layer

**Classification:** Public / Open Source (MIT)
**Report ID:** ORA-2026-0918
**Date:** September 18, 2026
**Author:** lexs201992-gif (Alexis Michel De La Cruz Correa)
**Predecessor:** Technical Data Release v1.0.0 (2026)
**Confidence Assessment:**
  - High: Ownership chain, financials, FCC/Congressional records,
    Lenovo SCC documentation, NowSecure Transsion findings
  - Medium: Firmware capability-to-revenue attribution (no access
    to internal revenue reports of Siprocal/DT)

---

## EXECUTIVE SUMMARY

This report presents a financial-technical assessment of the
revenue architecture embedded in consumer mobile devices
manufactured on the Unisoc T606/T616 silicon platform and
assembled by Longcheer Technology (HKEX: 9611; SSE: 603341)
or equivalent ODM partners.

**No existing threat intelligence report — including Mandiant,
Insikt Group, Recorded Future, NowSecure, or the August 2026
Congressional "Stranger Pings" investigation — connects the
revenue architecture of the ODM supply chain to the technical
capabilities documented in consumer firmware.** This report
fills that gap.

The subject system is a pre-installed software layer (package
identifiers: com.dti.motorola → com.dti.amx →
com.dti.phoenix.core) that provides silent application
installation, kernel-level encrypted data transport, FOTA-driven
package rotation, and carrier-specific module activation across
a 22-country footprint. The public narrative is "premium app
recommendations" (Digital Turbine press release, May 15, 2024).
The technical reality, documented in the predecessor release
(v1.0.0), is materially different.

**Key Finding 1:** The hardware margin on these devices is
approximately 1.4–1.6% net. Q1 2026 Longcheer revenue declined
19% YoY. The distribution layer, ad serving, and data
collection infrastructure generate revenue that exceeds the
hardware contribution by an order of magnitude. The device is
not the product. The device is the delivery mechanism for a
revenue platform.

**Key Finding 2:** The pattern is not unique to Longcheer/
Motorola. NowSecure (July 8, 2026) independently documented
the same architectural pattern in Transsion devices (Tecno,
Infinix, itel): preinstalled system-signed telemetry, AES key
embedded in APK, 60+ apps tracked per device, GPS/camera/
network data exfiltrated to Alibaba Cloud. Transsion is also a
Longcheer ODM client (HKEX prospectus). The architecture is
**systemic to the Chinese ODM sector**, not an anomaly of a
single vendor.

**Key Finding 3:** The silicon owner (Tsinghua Unigroup /
SASAC) also owns the server infrastructure (H3C, acquired from
HP, May 2015, $2.3B). The C2 infrastructure observed in
network captures (AWS Frankfurt, Cloudflare, Alibaba Cloud
eu-central-1) operates on the same institutional ownership
chain as the device silicon. The entire stack — from chip to
data center — is under a single state-controlled entity.

**Key Finding 4:** The U.S. regulatory response to Chinese
supply chain risk (FCC Covered List July 28, 2026; "Stranger
Pings" Congressional Report August 4, 2026) addresses telecom
equipment and advanced robotics. It does not address the
consumer smartphone ODM sector. The FCC's own Conditional
Approval disclosure requirements — if applied to smartphones —
would require exactly the disclosures that this report
documents from primary firmware evidence.

**Key Finding 5:** Tsinghua Unigroup's $30B debt burden
(default November 2020, bankruptcy restructuring 2021)
establishes the financial imperative for the revenue
architecture. The hardware segment cannot service this debt.
The distribution platform, data collection, and ad serving
layer are the **cash flow mechanism** that sustains the
silicon business. The "failure" of Tsinghua Unigroup as a
semiconductor company (Asianometry, 2021) is resolved by the
**revenue architecture** documented in this report: the chip
is not sold as a semiconductor. It is sold as a **data
collection endpoint** with a $2/device activation fee.

---

## 1. SCOPE AND METHODOLOGY

### 1.1 Analytical Framework

This report does not follow the standard threat intelligence
format (TTPs → IOCs → attribution → recommendations). The
reason is structural: the subject system is not an intrusion.
It is a **product**. There is no "initial access vector," no
"lateral movement," no "exfiltration endpoint" in the
traditional sense. The "intrusion" is the purchase of the
device. The "exfiltration endpoint" is the device itself,
connected to a charger.

The analytical framework is therefore:

| Section | Question |
|---------|----------|
| §2 | Who owns what? (Ownership chain, silicon to server) |
| §3 | Where does the money come from? (Revenue architecture) |
| §4 | What does the device do that the public narrative doesn't describe? (Technical capability vs. commercial description) |
| §5 | Is this unique? (NowSecure/Transsion parallel) |
| §6 | What is the U.S. regulatory gap? (FCC/Congressional context) |
| §7 | What is the trajectory? (AGIBOT, Dixtel, InMobi, Jio, India) |
| §8 | What can be done? (Recommendations) |

### 1.2 Source Unit and Evidence Base

| Field | Value |
|-------|-------|
| Model | Motorola Moto G04s (XT2421-7) |
| Unit Type | PVT (Pre-Volume Testing) |
| SoC | Unisoc T606 (ums9230) |
| Build Host | sh-16-52.rnd.longcheer.net |
| Build Date | Mar 18, 2026 (real) / Apr 5, 2026 (stated) |
| Acquisition | Legal purchase, Radio Dipsa (Telcel), Oct 30, 2025 |
| IFT Registration | Folio 510100018869585201 |
| Evidence | v1.0.0 release (smali, manifest, PCAPs, kmsg, hashes) |

### 1.3 Methodology

- Static analysis of firmware artifacts (APK, manifest, smali,
  kernel modules, SELinux policy)
- Network capture (PCAPdroid, 528.4 MB, 2,348 connections)
- Physical testing (cable type as activation trigger)
- Kernel log capture (factory reset menu, 9 pages, manual
  transcription, 200 pages total)
- Cross-reference with public sources (FCC, LKML, SEC, HKEX,
  SEBI, Lenovo SCC, press releases, financial filings)

No exploitation was performed. No modification of the device
beyond physical cable substitution was conducted.

### 1.4 Public Sources

- FCC Covered List updates (Dec 2025, Jul 28, 2026)
- House Select Committee, "Stranger Pings" (Aug 4, 2026)
- Longcheer HKEX prospectus and IPO records (Jan 22, 2026)
- Dixon Technologies SEBI filings (Feb 14 / Mar 3, 2026)
- AGIBOT-Longcheer press release (Apr 15, 2026)
- Lenovo Supply Chain Collaboration Center (SCC) ODM reference
- Lenovo Manufacturing Sites and Suppliers (Mar 2026)
- NowSecure / Buchodi / Weinstein, Transsion telemetry (Jul 8, 2026)
- Asianometry, "Tsinghua UniGroup's Semiconductor Failure(?)" (Sep 15, 2021)
- HP / Tsinghua Holdings H3C transaction (May 21, 2015)
- Digital Turbine press release (May 15, 2024)
- SEC Release 84998 (Jan 29, 2019)
- LKML, Stephan Gerhold (Sep 30, 2023)
- Recorded Future / Insikt Group CTA-2018-0816 (Aug 16, 2018)
- SmartKarma financial analysis (Longcheer)
- Yugatech, "Rise of the Dragon: The UNISOC Story"
- Nikkei Asia / 36Kr (Jun 23, 2026)
- PR Newswire, Tsinghua-Spreadtrum (Jul 12, 2013)
- FCC Grantee WLP (Longcheer)

---

## 2. OWNERSHIP CHAIN

### 2.1 Silicon Layer

| Entity | Owner | Control |
|--------|-------|---------|
| Unisoc (Spreadtrum + RDA) | Tsinghua Unigroup | SASAC (100% state) |
| Spreadtrum | Acquired by Tsinghua Unigroup, Dec 2013 ($1.78B) | — |
| RDA Microelectronics | Acquired by Tsinghua Unigroup, 2014 (~$907M) | — |
| UNISOC (merged entity) | Formed 2018 | Tsinghua Unigroup |

**Strategic intent (public declaration):**
> "What I want is to change the way the game is played. The
> acquisition of Spreadtrum and RDA allows Unigroup to enter
> the field of mobile chip and quickly position ourselves as
> world's third."
> — Zhao Weiguo, Chairman, Tsinghua Unigroup, CCTV, Nov 2017

**Financial context (Asianometry, Sep 2021):**
> "I came out of my work in Unigroup feeling that the company
> itself was not really adding that much value to its
> subsidiaries. The NYTimes has it right when they said that
> Unigroup is more of a **private-equity style financial buyer**
> than a 'real' company. The chairman leveraged **political ties
> and savvy** to attempt a big roll-up of various, random
> companies in the Chinese space."
> — Jon Y, Asianometry

Tsinghua Unigroup's acquisition strategy (2013–2016):
- Spreadtrum (2013, $1.78B) → mobile chip design
- RDA (2014, ~$907M) → mobile chip design
- HP China server/storage (2015, $2.3B) → **infrastructure**
- Attempted: Micron (2015, $23B) → **blocked**
- Attempted: Western Digital (2015) → **CFIUS blocked**
- Intel investment: 9B RMB (validation)
- National IC Fund: 10B RMB + 20B National Development Bank

**Result:** $30B debt. Default November 2020. Bankruptcy
restructuring 2021. UNISOC and YMTC survive as key
subsidiaries. The "semiconductor company" fails. The
**revenue architecture** (documented in §3) is what sustains
the silicon business post-default.

### 2.2 Infrastructure Layer (H3C)

| Entity | Transaction | Date | Value |
|--------|-------------|------|-------|
| HP China server/storage | 51% sold to Tsinghua Holdings (Unisplendour) | May 21, 2015 | $2.3B |
| H3C (resulting JV) | 8,000 employees, $3.1B annual revenue | — | $4.5B enterprise value |

**Source:** Reuters, Bloomberg, AP, BBC, SCMP (May 21–22, 2015).
"First major U.S. technology company to pass control to local
owners since the government stepped up restrictions on foreign
firms."

**Zhao Weiguo** is chairman of both Tsinghua Unigroup AND
Unisplendour (the entity that acquired H3C). The same
individual who declared "change the way the game is played"
on CCTV (2017) is the same individual who signed the HP
acquisition (2015).

**Implication for this assessment:** The C2 infrastructure
observed in network captures from the source device
(AWS Frankfurt 52.28.0.0/16, Cloudflare 2606:4700:4700:1111,
Alibaba Cloud eu-central-1) operates on server infrastructure
that is, at the ownership level, under the same institutional
control as the device silicon. The "Stranger Pings" report
(Aug 2026) addresses telecom carrier equipment. H3C is the
**server/data center** equivalent — the infrastructure layer
beneath the applications.

### 2.3 ODM Layer

| Entity | Ownership | Key Facts |
|--------|-----------|-----------|
| Longcheer Technology | Public (SSE: 603341, HKEX: 9611) | World's largest smartphone ODM (32.6% share, Frost & Sullivan 2024) |
| — CIIF (CAC) | Confirmed investor | SmartKarma |
| — Xiaomi | 4.94% pre-IPO | HKEX prospectus |
| — Qualcomm | Cornerstone investor (HK IPO) | Pandaily, Jan 22, 2026 |
| — Jiangxi State-Owned Capital | Cornerstone investor (HK IPO) | Pandaily |
| — OmniVision | Cornerstone investor (HK IPO) | Pandaily |
| — BNP Paribas Fortis PE | Investor | SmartKarma |
| — Shanghai MtM Fund | Investor | SmartKarma |

**Longcheer financials (HKEX prospectus + Nikkei Jun 2026):**
- Revenue 2024: RMB 46.38B (~USD 6.72B)
- Revenue Q1-Q3 2025: RMB 31.33B (~USD 4.54B)
- Revenue Q1 2026: RMB 7.56B (**down 19% YoY**)
- Net profit Q1-Q3 2025: RMB 514M (~USD 74.5M, ~1.6% margin)
- Units shipped 2024: 173 million
- Clients: 8 of top 10 global brands (Xiaomi, Samsung, Lenovo,
  Honor, OPPO, vivo, Transsion, +1)
- Market cap at HK opening: HK$18.29B
- Memory chip prices: 7-8x higher than 2025 (compressing
  low-end margins)

**Longcheer in Android mainline (Genesis Proof):**
> "AFAIK the MSM8916-based Android One devices (aka
> 'google-seed') are also based on the Longcheer L8150. They
> are available under names like 'Cherry Mobile One G1',
> 'i-mobile IQ II', and 'General Mobile 4G'."
> — Stephan Gerhold (Google), LKML, Sep 30, 2023

**Longcheer in Lenovo's own documentation:**

Source: Lenovo Supply Chain Collaboration Center (SCC),
ODM Fixed Value Reference.
URL: scc.lenovo.com/opendocs/en/odm/data-ems/7_99_data_odm_fixed_value.html

The `odm` field valid values include: `.../LONGCHEER/...`
The `bu` field maps `MBG-Mobile` to `Mobile Phone`.

Source: Lenovo Manufacturing Sites and Suppliers (Mar 2026,
51 pages).

| Site | Location | Type | Employees |
|------|----------|------|-----------|
| Longcheer (Nanchang) | Nanchang, Jiangxi, China | **Mobile ODM** | **3,369** |
| Longcheer Electronics Vietnam | Hanoi, Vietnam | Mobile EMS | 376 |
| Longcheer Meiko Electronics Vietnam | Hanoi, Vietnam | Mobile EMS | — |

**Assessment (High confidence):** Longcheer is an authorized
ODM for Lenovo's Mobile Business Group (Motorola). This is
Lenovo's own supply chain documentation. The Nanchang facility
(3,369 employees) is the production site for the source unit.

**Longcheer US expansion (Nikkei, Jun 23, 2026):**
> "North America definitely is our focus now because the
> competition in China is very strong."
> — Shawn Zhang, GM, Longcheer US Business

- Vietnam factory (Hanoi): Serves US market. Expanded 2025.
- Malaysia factory: Under consideration.
- Ray-Ban Meta AI glasses: Longcheer is the supplier.
- Tariff context: Trump-Xi truce until Nov 2026.

### 2.4 Distribution Layer

| Entity | Owner | Key Facts |
|--------|-------|-----------|
| Digital Turbine (NASDAQ: APPS) | Public | "Exclusive collaboration with Motorola" (May 15, 2024) |
| — LogiaDeck (formerly Logia Group, Israel) | Acquired by DT, Sep 2012 (~$5M) | Cert: CN=Ronen Abraham, O=Logia, 2011→2061 |
| — Siprocal (Miami, FL) | Formed Mar 2023 (DigitalReef + Gamers Club) | 600MM installed base LATAM |
| InMobi | Public (historical) | 2B mobile users, ad serving |
| Jio (Reliance/Ambani) | Private (Reliance Industries) | 400M+ subscribers |
| América Móvil (Telcel/Claro) | Public (BMV: AMX) | 22 countries |
| Transsion (Tecno/Infinix/itel) | Private (Shenzhen) | World's 4th largest smartphone manufacturer. Africa/South Asia/SE Asia/LATAM dominant. |
| — Shalltry (Shenzhen) | Transsion affiliate | Athena/oneID telemetry platform. shalltry.com. |

### 2.5 Manufacturing Layer (India, 2026)

| Entity | Structure | Key Facts |
|--------|-----------|-----------|
| Dixtel Infocomm (JV) | Dixon 74% / Longcheer 26% | Consummated Mar 3, 2026 |
| — Dixon Technologies (BSE: DIXON) | Public (India) | EMS/contract manufacturer |
| — Longcheer Intelligence Pte. Ltd. | Longcheer Singapore sub | ODM design + IP |
| AGIBOT G2 (robots) | Deployed in Longcheer production | Apr 15, 2026 (Nanchang) |

**Products:** Smartphones, tablets, TWS, smartwatches, AI PCs,
automotive electronics, healthcare devices.

**Regulatory context:** Indian MeitY approval (Jul 2025)
under eased FDI rules for bordering-country investors (China),
requiring minority stake (26%).

### 2.6 The Complete Chain

```
SASAC → Tsinghua Unigroup
         ├── UNISOC (silicon: T606/T616)
         └── H3C (infrastructure: servers, storage, networking)
              [acquired from HP, May 2015, $2.3B]

CAC → CIIF → Longcheer (ODM, 32.6% global share)
              ├── Dixtel Infocomm (India, with Dixon)
              ├── AGIBOT (production automation)
              └── Clients: Motorola, Samsung, Xiaomi, OPPO,
                  vivo, Honor, Transsion, Meta (Ray-Ban)

NASDAQ → Digital Turbine → LogiaDeck/Siprocal (distribution)
              ├── InMobi (ad serving, 2B users)
              ├── Jio (carrier, 400M+ subs)
              ├── América Móvil (carrier, 22 countries)
              └── Pangle/ByteDance (referenced in FOTA)

Transsion (Shenzhen) → Shalltry (Athena/oneID telemetry)
              └── Alibaba Cloud (eu-central-1) [data sink]

Lenovo → Motorola (brand)
              └── Longcheer (ODM, Nanchang, 3,369 employees)
                      └── Unisoc T606 (silicon)
                              └── Consumer device ($100)
```

---

## 3. REVENUE ARCHITECTURE

### 3.1 The Hardware Margin Problem

| Metric | Value | Source |
|--------|-------|--------|
| Lenovo mobile segment net margin | ~1.4% | Lenovo financial reports |
| Longcheer net profit margin (Q1-Q3 2025) | ~1.6% | HKEX filing |
| Longcheer Q1 2026 revenue | RMB 7.56B (down 19% YoY) | Nikkei, Jun 2026 |
| Memory chip price increase (2025→2026) | 7-8x | Nikkei, Jun 2026 |
| Device retail price (Moto G04s, MX) | ~$100 USD | Market |
| ODM margin per unit (Longcheer) | ~$1-2 USD | Derived |

**Assessment (High confidence):** At 1.4–1.6% net margin with
a 19% revenue decline and 7-8x memory cost inflation, the
hardware segment is in **structural compression**. The
company's own GM states: "North America definitely is our
focus now because the competition in China is very strong."
The strategic response is diversification (AI glasses, AI
PCs, automotive). But the **installed base** of 173M+
smartphones/yr still carries the distribution layer.

**The Tsinghua debt imperative (Asianometry, 2021):**
Tsinghua Unigroup's $30B debt (default Nov 2020) cannot be
serviced by semiconductor sales alone. UNISOC's mobile chip
business is the surviving asset. The revenue architecture
documented in this report — $2/device activation, ad serving,
data collection — is the **cash flow mechanism** that
sustains the silicon business post-default. The "failure" of
Tsinghua as a semiconductor company is resolved by
repositioning the chip as a **data collection endpoint**
rather than a semiconductor product.

### 3.2 The Distribution Revenue

| Revenue Stream | Mechanism | Estimated Scale |
|---------------|-----------|-----------------|
| DT activation fee | $2/device (stated model) | 200M+ devices/yr → $400M+/yr |
| Siprocal ad serving | CPM/CPI via SIM push | 600MM base (Siprocal stated) |
| InMobi ad serving | Programmatic, 2B users | ~$300M/yr (historical) |
| Jio carrier data | APN-level targeting, SIM push | 400M+ subs |
| América Móvil module | `americaMovil` in DT manifest | 22 countries |
| Pangle (ByteDance) | Referenced in FOTA mechanism | — |
| Transsion/Shalltry telemetry | Athena/oneID, AES-encrypted | 1-in-2 phones in Africa (NowSecure) |
| Data collection | Kernel tunnel (WireGuard, 2.7 GB TX) | Per-device, continuous |

**Assessment (Medium confidence):** The distribution + ad
serving + data collection layer generates revenue at a scale
that **exceeds the hardware contribution by an order of
magnitude** at current production volume. The 1.4% hardware
margin is the cost of customer acquisition for the
distribution platform.

### 3.3 The "Exclusive" Revenue Lock

The May 15, 2024 press release states: "exclusive relationship
with Motorola." In revenue terms, "exclusive" means:

- No competing distribution platform is pre-installed on
  Motorola devices in 20+ countries
- The carrier (América Móvil) is the **distribution partner**
  (revenue share), not the end user
- The end user is the **inventory** (the unit being monetized)
- The FOTA mechanism (package rotation) ensures that the
  distribution layer **cannot be removed** by the user or
  the carrier independently

### 3.4 Who Captures the Revenue

| Actor | Revenue Source | Visibility |
|-------|---------------|------------|
| Digital Turbine (NASDAQ: APPS) | Activation fees, ad revenue share | Public (10-K, earnings calls) |
| InMobi | Ad serving revenue | Public (historical filings) |
| Jio / Reliance (Ambani) | Carrier data monetization | Public (Reliance filings) |
| América Móvil (BMV: AMX) | Carrier module revenue | Public (BMV filings) |
| Longcheer (HKEX: 9611) | ODM manufacturing fee | Public (HKEX filings) |
| Dixon (BSE: DIXON) | Contract manufacturing fee | Public (BSE filings) |
| Transsion / Shalltry | Telemetry data, ad serving | **Not public (private company)** |
| **Unisoc / Tsinghua (SASAC)** | **Silicon IP royalty + data access** | **Not public (state entity)** |
| **H3C / Tsinghua (SASAC)** | **Server infrastructure for C2** | **Not public (state entity)** |
| **CIIF / CAC** | **Equity appreciation (Longcheer IPO)** | **Not public (state fund)** |

**The asymmetry:** Every actor in the chain except Tsinghua
(Unisoc + H3C) and CIIF/CAC reports its revenue publicly.
The silicon owner, the infrastructure owner, and the ODM
investor are state entities that do not file revenue reports.
The **data collected** via the kernel-level tunnel is the one
revenue stream with **no public accountability**.

### 3.5 The 20-Year Arc

| Period | Phase | Key Event |
|--------|-------|-----------|
| 2008–2012 | Foundation | Longcheer FCC (2G→4G). LogiaDeck created. |
| 2013–2015 | Acquisition | Tsinghua: Spreadtrum (2013), RDA (2014), HP/H3C (2015). Lenovo: Motorola (2014). |
| 2015–2016 | Blocked | Micron ($23B) and WD acquisitions blocked (CFIUS). |
| 2016–2017 | Validation | Longcheer designs Android One hardware (google-seed). |
| 2017–2021 | Expansion | CIIF golden shares. CIIF invests in Longcheer. |
| 2020–2021 | Crisis | Tsinghua $30B default. Bankruptcy restructuring. |
| 2023 | Consolidation | Siprocal formed. Longcheer IPO process initiated. |
| 2024 | Monetization | DT × Motorola "exclusive." qogirl76_TEE_V2.0.1. |
| 2025 | Deployment | PVT units in retail. NowSecure documents Transsion pattern. |
| 2026 | Scale | Longcheer IPO (HKEX). JV Dixtel (India). AGIBOT. InMobi Buyer Hub. FCC robots. Stranger Pings. |

Each phase is a **dependency** for the next. The architecture
could not exist in 2013 (no Longcheer-Motorola relationship).
It could not exist in 2019 (no Siprocal, no DT exclusive).
The 2020 default **accelerated** the revenue architecture:
the hardware alone could not service the debt, so the
distribution/data layer became the primary cash flow.

---

## 4. TECHNICAL CAPABILITY vs. COMMERCIAL DESCRIPTION

### 4.1 The Public Description

> "Digital Turbine's cutting-edge app recommendation
> technology and carefully curated content will seamlessly
> integrate into the mobile interfaces, offering users a
> personalized and streamlined experience from device setup
> to day-to-day use."
> — Digital Turbine press release, May 15, 2024

### 4.2 The Technical Reality (from v1.0.0)

| Capability | Public Description | Technical Reality |
|-----------|-------------------|-------------------|
| App installation | "Frictionless app installs from any mobile ad placement" | `INSTALL_PACKAGES` + `DirectInstallReceiver` + `SimStatusChangedReceiver` (exported=true). Silent, no user prompt. |
| Data transport | "Seamless integration" | WireGuard 1.0.0 in kernel. 2.7 GB TX observed. 43:1 ratio. Key: `56ef134d`. |
| Persistence | "Day-to-day use" | FOTA + sparse-switch + pangle.io. Package rotation (3 generations). Survives factory reset. |
| Remote control | "Personalized experience" | FCM/Firebase `directBootAware=true`. Instructions before user unlock. |
| Opt-out | Not mentioned | `OptOutActivity enabled="false"`. No mechanism exists. |
| Carrier targeting | "Around the world" | `americaMovil` module. MCC/MNC-based activation. 22 countries. |
| Telemetry | Not mentioned | `delivery_metrics_exported_to_big_query_enabled=true` |
| Physical trigger | Not mentioned | USB-C to USB-C cable activates kernel stack. USB-A to USB-C (4-pin) renders it inert. |
| Display injection | Not mentioned | MIPI HD ramless injection. Kernel panic when conditions not met (proof of always-on). |
| Audio jack trigger | Not mentioned | 3.5mm jack impedance detection as secondary trigger. FM radio mode bypasses. |

### 4.3 The "Normality" Design

The architecture is designed to pass as a standard OEM utility:

1. **Permission dilution** (19 permissions, 4 system-level,
   interspersed with standard)
2. **OEM affiliation signaling** (`com.motorola.launcher3`,
   `com.sprint.ce.updater` in manifest)
3. **Commercial branding** (NASDAQ-listed company, press
   release, "exclusive collaboration")
4. **FOTA as delivery** (invisible to user, cannot be declined)
5. **Package rotation** (anti-correlation: 3 package names,
   1 certificate)
6. **Timestamp manipulation** (APK build date: 1981-01-01)
7. **PVT in retail** (unsanitized build reveals infrastructure
   without appearing anomalous to end user)
8. **Kernel-level implementation** (WireGuard, TUN, Macsec
   in kernel — not visible in `pm list packages`)

**Assessment (High confidence):** The "normality" is not an
accident of engineering. It is the **operating requirement**
of the business model. If the user recognized the system as
a data collection and remote installation platform, the
revenue architecture collapses. The design constraint is:
**the user must believe this is a phone.**

### 4.4 Physical Trigger Architecture (Field-Verified)

| Cable/Connection | Kernel Stack | MIPI HD | Kernel Panic |
|-----------------|-------------|---------|--------------|
| USB-A → C (4-pin copper, 5V) | **Inert** | Inactive | No |
| USB-C → C (24-pin, PD 9/15/20V) | **Active** | Active | No (conditions met) |
| USB-C → C (24-pin, no PD) | Attempted | Attempted | **YES** |
| Jack 3.5mm → FM (Dream Radio) | N/A | Inactive | No |
| Jack 3.5mm → passive cable (no load) | N/A | Inactive | No |
| Jack 3.5mm → standard headphones | N/A | Attempted | **YES** (intermittent) |

**The kernel panic is the proof of always-on.** A conditional
feature would simply not execute. An unconditional feature
that fails produces a panic. The code **always** attempts to
write to display controller registers. The cable type is the
sole gate between "feature active" and "feature crashing."

**Mitigation (user-actionable, no root required):**
- Use USB-A to USB-C cable (4-pin, copper) for charging
- Use FM radio mode or passive jack cable for audio
- Cost: ~$3 USD (50 MXN)

---

## 5. THE PATTERN IS SYSTEMIC (NowSecure / Transsion)

### 5.1 NowSecure Findings (July 8, 2026)

**Source:** NowSecure, Buchodi & David Weinstein. "1-in-2
phones sold in Africa exfiltrate telemetry to China."
URL: nowsecure.com/blog/2026/07/08/what-the-transsion-telemetry-research-means-for-mobile-security/

**Key findings:**

| Finding | Detail |
|---------|--------|
| Scale | 1 in 2 phones sold in Africa affected |
| Platform | Athena (event collection) + oneID (cross-app identity) |
| Installation | Preinstalled, **system-signed**, cannot be removed without breaking device |
| Encryption | AES, **key embedded in APK** |
| Endpoint | `*.shalltry.com` (Shenzhen-based, Transsion affiliate) |
| Data sink | Alibaba Cloud (eu-central-1), CloudFront CDN |
| Data collected | GPS, cell towers (MCC-MNC-LAC-CellID), foreground app, camera activation, network usage of **60+ distinct apps**, battery, temperature, charge sessions |
| Package | `com.hoffnung` (notoriously impossible to remove) |
| Supply chain extension | Same SDK found **embedded in third-party apps** on non-Transsion devices |
| Ad integration | ByteDance analytics pipeline, Taboola |

### 5.2 Structural Parallel

| Attribute | Motorola/Longcheer/Unisoc (this report) | Transsion/Shalltry (NowSecure) |
|-----------|---------------------------------------|-------------------------------|
| Preinstalled | Yes (FOTA, /system/priv-app) | Yes (system-signed) |
| System-level permissions | INSTALL_PACKAGES, WRITE_SECURE_SETTINGS | System-signed, cannot remove |
| Encryption key in binary | AES key in smali (`56ef134d`) | AES key in APK |
| Data collected | Network activity, app usage, location | GPS, 60+ apps, camera, cell towers |
| Cannot be removed by user | Yes (FOTA, kernel-level) | Yes ("impossible to remove") |
| Ad/distribution integration | DT/Siprocal/InMobi/Pangle | ByteDance/Taboola |
| Data sink | AWS Frankfurt, Cloudflare | Alibaba Cloud eu-central-1 |
| ODM | Longcheer (3,369 employees, Nanchang) | Longcheer (client per HKEX) + in-house |
| Silicon | Unisoc T606 (Tsinghua/SASAC) | Unisoc (various models) |
| Public disclosure | "Premium app recommendations" | Not disclosed in device UI |

**Assessment (High confidence):** The architectural pattern
is **identical** across two independent ODM/client
relationships (Longcheer→Motorola, Longcheer/in-house→
Transsion). The pattern is not a bug in one vendor. It is a
**sector-wide design standard** for Chinese ODMs producing
consumer devices for emerging markets.

### 5.3 The Supply Chain Extension

NowSecure documents that the Shalltry SDK is **not confined
to Transsion hardware**. It is embedded in third-party apps
that run on any Android device. This is the same mechanism by
which the DT/Siprocal SDK is embedded in `com.dti.amx`
(rather than being a standalone app): the distribution
layer **rides inside** other software, extending its reach
beyond the OEM that manufactured the device.

**Implication:** The "attack surface" is not the phone. It is
the **SDK** that is embedded in the phone AND in the apps
installed on the phone. The phone is the initial vector.
The SDK is the persistent mechanism.

---

## 6. U.S. REGULATORY GAP

### 6.1 What Has Been Addressed

| Action | Date | Scope | Gap |
|--------|------|-------|-----|
| FCC Covered List: routers | Dec 2025 | Foreign-produced routers | Not smartphones |
| FCC Covered List: UAS | 2025 | Foreign-produced drones | Not smartphones |
| FCC Covered List: **robots + inverters** | **Jul 28, 2026** | Foreign-produced advanced robotic devices + connected power inverters | **Not smartphones** |
| "Stranger Pings" (House Select Committee) | **Aug 4, 2026** | China Mobile, China Unicom, China Telecom — telecom equipment in US infrastructure | **Not consumer devices, not ODM sector, not H3C servers** |
| Salt Typhoon response | 2024–2025 | Telecom core network breaches | **Not endpoint devices** |

### 6.2 The FCC's Own Logic Applied to Smartphones

The July 28, 2026 FCC action requires the following
disclosures for Conditional Approval of covered devices:

- Complete ownership structure
- Beneficial owners holding 5%+ equity
- **Foreign government ownership, control, influence, financing**
- Detailed bill of materials
- **Country of origin for all components**
- **IP ownership and software updates**
- **Country of origin for onboard software and firmware**
- Supply chain concentration by country
- Single points of failure

**If the FCC applied its own analytical framework to the
consumer smartphone ODM sector, the required disclosures
would reveal:**

| Disclosure Required | What It Would Reveal |
|--------------------|--------------------|
| Foreign government ownership | SASAC → Tsinghua → Unisoc (silicon); CAC → CIIF → Longcheer (ODM) |
| Country of origin for components | Unisoc T606 (China), Longcheer assembly (China/India) |
| IP ownership and software updates | Longcheer firmware, Unisoc baseband, DT/Siprocal distribution layer |
| Country of origin for firmware | China (build host: sh-16-52.rnd.longcheer.net) |
| Single points of failure | Unisoc T606 (sole source for this device class) |
| Infrastructure ownership | H3C (Tsinghua) for C2 server infrastructure |

### 6.3 The "Stranger Pings" Parallel

The August 4, 2026 Congressional report found:
> "The FCC's actions limit what the companies can sell, but
> it cannot remove the companies' equipment, presence, or
> network relationships."

| Stranger Pings (Telecom) | ODM Distribution Layer | H3C (Server) |
|--------------------------|----------------------|--------------|
| Chinese carrier equipment in US data centers | Chinese ODM firmware in consumer devices | Chinese-owned server infrastructure (H3C) |
| FCC can deny new licenses | FCC has no jurisdiction over consumer device firmware | FCC Covered List does not cover H3C servers in this context |
| Cannot remove existing equipment | Cannot remove pre-installed software from 173M+ devices/yr | Cannot remove H3C servers already deployed |
| "Beholden to the CCP" (Chairman Moolenaar) | CIIF/SASAC ownership chain (documented) | Tsinghua/SASAC ownership (documented) |

**The difference:** Stranger Pings addresses **telecom
carriers**. H3C addresses **server infrastructure**. The ODM
distribution layer addresses **endpoints**. Together, they
form a complete stack: infrastructure (H3C) → network
(carriers) → endpoint (consumer device). The U.S. has
addressed the middle layer (carriers). The top (servers) and
bottom (devices) are unaddressed.

### 6.4 The "Focus" Statement

Longcheer's US GM publicly states: "North America definitely
is our focus now." The FCC's Covered List does not cover
consumer smartphones. The "Stranger Pings" investigation
addresses telecom carriers, not ODMs. The July 2026 FCC
action covers robots and inverters, not phones.

**The result:** Longcheer is actively expanding into the US
market (Vietnam factory serving US, Malaysia under
consideration) while the US regulatory framework designed to
protect against Chinese supply chain risk **does not apply
to the product category being expanded.**

---

## 7. TRAJECTORY (2026–2028)

### 7.1 AGIBOT: Production Automation

**April 15, 2026:** AGIBOT G2 robots deployed in Longcheer's
tablet production lines (Nanchang). "World's first embodied
AI deployment in consumer electronics precision
manufacturing mass-production line."

> "2026 marks the beginning of large-scale deployment for
> embodied intelligence."
> — Dr. Yao Maoqing, AGIBOT

**Regulatory coincidence:** The FCC added "advanced robotic
devices" to the Covered List on **July 28, 2026** — 3.5
months after the AGIBOT-Longcheer deployment.

**Assessment (Medium confidence):** The AGIBOT deployment
increases throughput and reduces marginal cost. At 173M
units/yr, a 5% assembly cost reduction is ~$86M/yr. The
robots are also a **data collection node** (perception,
navigation, environment mapping) inside the factory.

### 7.2 Dixtel Infocomm: India Manufacturing

**March 3, 2026:** JV consummated. Dixon 74% / Longcheer 26%.

**Strategic significance:**
- India is the #2 smartphone market globally
- "Make in India" policy requires local manufacturing
- The JV gives the Unisoc/Longcheer/DT architecture a
  **manufacturing footprint in India** under the legal
  protection of Indian policy
- Jio (Reliance/Ambani) is the natural carrier partner
- InMobi (2B users) is the ad serving layer
- The 26% Longcheer stake is the **minimum** for FDI
  compliance. The **design IP, firmware, and distribution
  layer remain Longcheer/Unisoc/DT-controlled** regardless
  of where physical assembly occurs

### 7.3 Geographic Expansion (Nikkei, Jun 2026)

- **Vietnam** (Hanoi): Serves US market. Expanded 2025.
- **Malaysia**: Under consideration.
- **India** (Dixtel): Consummated Mar 2026.
- **Tariff truce**: Until Nov 2026. USTR proposed tariffs on
  60 economies.

**Assessment (High confidence):** The geographic expansion
is the mechanism by which the firmware architecture
**follows the manufacturing** to new jurisdictions. The
"Make in India" and "Make in Vietnam" strategies are the
same play: local assembly, foreign design IP, foreign
firmware, foreign distribution layer.

### 7.4 The 2028 Projection

| Component | 2026 (current) | 2028 (projected) |
|-----------|---------------|-----------------|
| Longcheer units/yr | 173M | 200M+ (Dixtel + AGIBOT) |
| Markets | 22 (América Móvil) + India (Jio) + Africa (Transsion) | + SE Asia + US (Vietnam factory) |
| Distribution | DT/Siprocal (Motorola exclusive) + Shalltry (Transsion) | + InMobi (India) + Pangle (ByteDance) |
| Automation | AGIBOT G2 (tablets) | AGIBOT G2+ (smartphones, full line) |
| FCC exposure | None (smartphones not covered) | Potential (if extended to "connected consumer devices") |
| Congressional | None (Stranger Pings = telecom only) | Potential (if extended to ODM + H3C) |
| Revenue model | $2/device + ad serving + data | $2/device + ad serving + data + AI hardware (glasses, PCs) |

---

## 8. RECOMMENDATIONS

### 8.1 For U.S. Regulators (FCC, Congress)

1. **Extend the Covered List analytical framework to consumer
   smartphones** manufactured on foreign silicon by foreign
   ODMs. The July 28, 2026 action (robots + inverters)
   establishes the precedent.

2. **Investigate the ODM sector** in the same manner as
   "Stranger Pings" investigated telecom. The structural
   parallel is exact.

3. **Investigate H3C server deployments** in US
   infrastructure. H3C (Tsinghua/SASAC-owned) is the server
   equivalent of the telecom carrier equipment addressed in
   "Stranger Pings." The same ownership chain (SASAC →
   Tsinghua) controls both the device silicon (UNISOC) and
   the server infrastructure (H3C).

4. **Require firmware attestation** for all consumer devices
   seeking FCC equipment authorization. The current process
   certifies the radio, not the firmware.

5. **Apply the NowSecure/Transsion findings** as a
   precedent for consumer device telemetry regulation. If
   1-in-2 phones in Africa exfiltrate GPS, app usage, and
   camera data to Chinese-linked servers, the same
   architectural pattern in devices sold in the US (via
   Vietnam/India/Malaysia manufacturing) requires equivalent
   scrutiny.

### 8.2 For Carriers (América Móvil, Jio, Telcel)

1. **Audit carrier-specific modules** in pre-installed
   distribution layers. Verify what data is collected, where
   it is transmitted, and what the revenue share structure is.

2. **Require opt-out mechanisms** as a condition of carrier
   partnership. The current state
   (`OptOutActivity enabled="false"`) is inconsistent with
   consumer protection regulations.

### 8.3 For Consumers

1. **Physical mitigation:** Use USB-A to USB-C cable
   (4-pin, copper). Renders kernel tunnel stack inert.
   Cost: ~$3 USD.

2. **Network mitigation:** Block C2 domains (slion.net,
   slions.net, longcheer.net, qxwz.com, fmc.longcheer.com,
   ppmxfa.com, shalltry.com).

3. **Package mitigation:** `adb shell pm disable-user
   --user 0 com.dti.amx`. Does NOT remove kernel-level
   components.

4. **Report:** File with IFT (MX), TRAI (India), or
   equivalent. IFT folio for source unit: 510100018869585201.

### 8.4 For the Security Research Community

1. **The gap is the endpoint.** Every major threat report
   focuses on infrastructure, networks, and enterprise
   systems. The consumer device — the most widespread data
   collection node in human history — is not in scope.

2. **The financial trail is the attribution.** When the
   technical evidence is "by design," the attribution
   question shifts from "who broke in?" to **"who
   profits?"** The answer is in public filings: HKEX,
   NASDAQ, BMV, BSE, SSE.

3. **The PVT unit is the Rosetta Stone.** A PVT unit in the
   retail channel is the mechanism by which internal build
   infrastructure becomes visible in a consumer artifact.

4. **The NowSecure/Transsion finding validates the
   pattern.** Independent researchers documented the same
   architecture in a different ODM/client relationship.
   This is not a single-vendor anomaly. It is a sector
   standard.

---

## 9. WHAT THIS REPORT IS NOT

This report does not:
- Classify the system as "malware," "spyware," or "backdoor"
- Assert criminal intent on the part of any named individual
  or entity
- Provide instructions for exploitation
- Assert that any specific government is "operating" the
  system
- Make claims about the specific content of exfiltrated data
  beyond what is documented in primary evidence
- Substitute for a legal determination of wrongdoing

This report **does**:
- Document the ownership chain from primary sources (HKEX,
  SEBI, FCC, LKML, SEC, Lenovo SCC, Bloomberg, Reuters)
- Identify the revenue architecture and its asymmetry with
  the hardware margin
- Document the Tsinghua debt imperative ($30B, 2020 default)
  as the financial driver of the revenue architecture
- Note the structural parallel between "Stranger Pings"
  (telecom), H3C (servers), and the ODM distribution layer
  (endpoint)
- Document the NowSecure/Transsion parallel as validation
  that the pattern is systemic, not vendor-specific
- Identify the regulatory gap (FCC does not cover consumer
  smartphones or H3C servers in this context)
- Document the trajectory (AGIBOT, Dixtel, India, Vietnam,
  Malaysia)
- Provide the physical mitigation (USB-A to USB-C cable)
- Make the information public, indexable, and verifiable

---

## 10. REFERENCES

1. House Select Committee on Strategic Competition. "Stranger
   Pings: Chinese Telecom Companies Infiltrate U.S.
   Infrastructure." Aug 4, 2026.

2. FCC. Covered List Update: Foreign-Produced Power Inverters
   and Advanced Robotic Devices. Jul 28, 2026.

3. NowSecure. Buchodi & David Weinstein. "1-in-2 phones sold
   in Africa exfiltrate telemetry to China." Jul 8, 2026.
   https://www.nowsecure.com/blog/2026/07/08/what-the-transsion-telemetry-research-means-for-mobile-security/

4. Asianometry (Jon Y). "Tsinghua UniGroup's Semiconductor
   Failure(?)." Sep 15, 2021.
   https://www.asianometry.com/p/tsinghua-unigroups-semiconductor

5. HP / Tsinghua Holdings. "HP sells majority stake of China
   server, storage business to Tsinghua Holdings." May 21,
   2015. $2.3B. H3C JV.
   https://www.computerworld.com/article/1617999/hp-sells-majority-stake-of-china-server-storage-business-to-tsinghua-holdings-2.html
   (Also: Reuters, Bloomberg, AP, BBC, SCMP, same date.)

6. Longcheer Technology. HKEX IPO. Jan 22, 2026.
   https://pandaily.com/longcheer-technology-lists-in-hong-kong-becomes-the-first-consumer-electronics-odm-stock

7. Dixon Technologies. SEBI Filing: JV with Longcheer.
   Feb 14, 2026 / Mar 3, 2026.

8. AGIBOT / Longcheer. "World's First Embodied AI Deployment
   in Consumer Electronics Precision Manufacturing."
   PR Newswire, Apr 15, 2026.

9. Nikkei Asia / 36Kr. "The smartphone supplier is unfazed
   by tariff uncertainty amid rising AI device demand."
   Jun 23, 2026.
   https://kr-asia.com/chinese-electronics-maker-longcheer-bets-on-us-growth

10. Lenovo Supply Chain Collaboration Center (SCC). ODM
    Fixed Value Reference.
    https://scc.lenovo.com/opendocs/en/odm/data-ems/7_99_data_odm_fixed_value.html

11. Lenovo. "List of Lenovo Manufacturing Sites and
    Suppliers." Mar 2026. (51 pages.)

12. Digital Turbine. "Exclusive Collaboration with
    Motorola." Press release, May 15, 2024.

13. SEC. "In the Matter of Digital Turbine, Inc." Release
    No. 84998, Jan 29, 2019. File No. 3-18971.

14. LKML. [PATCH 09/13] arm64: dts: qcom:
    msm8916-longcheer-l8150. Stephan Gerhold, Sep 30, 2023.
    https://lkml.iu.edu/2309.3/07772.html

15. Recorded Future / Insikt Group. "Chinese Cyberespionage
    Originating From Tsinghua University Infrastructure."
    CTA-2018-0816, Aug 16, 2018.
    https://assets.recordedfuture.com/insikt-report-pdfs/2018/cta-2018-0816.pdf

16. SmartKarma. "Shanghai Longcheer: Leading ODM Vendor."
    (CIIF confirmed investor.)

17. Yugatech. "Rise of the Dragon: The UNISOC Story."
    Business section.

18. PR Newswire. "Tsinghua Unigroup to Acquire Spreadtrum
    Communications." Jul 12, 2013.

19. FCC. Grantee WLP (Longcheer). FRN 0022602015.

20. lexs201992-gif. Technical Data Release v1.0.0. GitHub,
    2026.

21. lexs201992-gif. DEVICE_TECHNICAL_SHEET.md. GitHub,
    2026.

22. New York Times. "The Failure of China's Microchip Giant
    Tests Beijing's Tech Ambitions." Jul 19, 2021.

23. EE Times Asia. "'Insolvent' Tsinghua Unigroup Aims to
    Restructure." Jul 12, 2021.

---

## 11. REPOSITORY STRUCTURE

| Release | Content | Audience |
|---------|---------|----------|
| v1.0.0 | Technical data (smali, manifest, PCAPs, kmsg, hashes, physical testing) | Technical / Forensic |
| **v2.0.0** | **Financial-technical assessment (this document)** | **Strategic / Financial / Policy / Regulatory / CISO** |

The technical evidence supporting every claim in this
document is in v1.0.0 and the associated repositories. This
document provides the **context** that makes the technical
data interpretable.

---

*Report ID: ORA-2026-0918*
*License: MIT*
*Author: Alexis Michel De La Cruz Correa*
*Date: September 18, 2026*
*Confidence: High (ownership, financials, regulatory,
  NowSecure parallel); Medium (firmware-to-revenue
  attribution)*
```

---
