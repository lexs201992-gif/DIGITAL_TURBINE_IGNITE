Appendix | Supply Chain Open Platform
Fixed value ​
Special Field ​
field	fixed value
ems	****
odm	****/LCFC/WISTRON/WISTRON_ZS/COMPAL/HUAQIN/AVC/FOXCONN/USI/ECS/MSI/TINNO/ZHONGNUO/BOE/LONGCHEER/IEC/GOODWAY/WISTRON_VN/USI_HUIZHOU/USI_TAIWAN/USI_MEXICO/USI_VN/BITLAND_HK/PCP/QUANTA_CQ
bu	DT/Mobile Tablet/Mobile Phone/ISG/ThinkNB/ThinkDT/IdeaNB/IdeaDT/Workstation/MWorkstation/Smart Device/ThinkOption/IdeaOption
commit_type	Box1/Box/Part/Part1 default：Part
universality	1.Unique for Lenovo
2.Unique for XXX BU(ThinkNB/IdeaNB/ThinkDT/IdeaDT/Workstation/ISG/WS/MBG）
3.Unique for XXX Family、Series
4.Common use with other brand
reason_code	EOL/Q-Hold/Supply Mgt/Orders Above Forecast/Orders Above Flexibility/Industry Constraint/MOQ/JIT/Tech issue
dns_measure	Demand/Commit/Risk commit/Balance/DOI/Total Supply
purchase_type	Direct Ship/VMI
material_type	DB/DS/BS/FG/SFG/RB
movement_type	RMA/GR/CANCEL/Drop to VMI/Drop to ODM/HUB Pull
risk_level	Lower/middle/High
family_stauts	EOL/Final lock/MP/NPI
order_status	Active/Close/Block/Cancel
Mapping Between BU ​
Business	Actual BU	Remark
PCG-NB	ThinkNB/IdeaNB/MWorkStation	--
Smart-Devic	Smart Device	Smart Device（WSSD）
PCG-DT	ThinkDT/IdeaDT/WorkStation	--
PCG-Docking	ThinkOption/IdeaOption	--
MBG-Mobile	Mobile Phone	--
MDSC-TB	Mobile Tablet	--
ISG	ISG	--
DT	DT	--
Commodity ​
PCG-NB	PCG-EE	PCG-DT	ISG	PCG-Option	Mobile	PCG-SD
ME-A cover	EE-Sensor	Chassis	EE-Logic IC	ME-Top cover	Rear_cover	Other covers of ME ( Covers/Bezel etc…)
ME-B cover	EE-Logic IC	Stand	EE-Analog IC	ME-Bottom cover	Middle_frame	ME-A cover
ME-C cover	EE-Analog IC	Cover/Metal/Middle Frame	EE-Memory IC	ME-Others	Battery Cover	ME-B cover
ME-D cover	EE-PCB	ME-Others	EE- IC others	Screw	Front Housing	ME-C cover
ME-A frame	EE-Connector	Holder	CONNECTOR	Mylar	EE-Sensor	ME-D cover
ME-C frame	EE-Capacitor	Bracket	PCB	Rubber	EE-RF	I/O Box
ME-Small Parts	EE-MOSFET	Screw	CAPACITOR	Cable	EE-IC	Camera
Candyman	EE-others	Deco Cover	RESISTOR	Heatsink	EE-Connector	SoundBar
ME-Kanban		LED Lighting	EE-others(Didoe, Transistor,mosfet,crystal,inductor)	EE-Logic IC	EE-PCB	Touch Controller
Shell-All		Mylar	Mechanical-Chassis	EE-Sensor	ME-Cover	TOUCH_SCR
Thermal		Rubber	THERMAL-FAN	EE-Analog IC	ME-Frame	Thermal
Fan		Pad	THERMAL-Heatsink	EE-PCB	Shell	Fan
Hinge		Bezel	THERMAL-Water-cooling	EE-Connector	Cable	Cable
Cable		Heatsink		EE-Capacitor	FPC	Antenna
Antenna		Intrusion		EE-MOSFET	EE-others	Speaker
Speaker		Shield		EE-other	SFG-PCBA	KEYBOARD
Mic		VESA mount		Subcard	SFG-PTO	MOUSE
EE-Logic IC		Latch		Adapter	FG	Daughter board
EE-Sensor		HDD tray/ODD tray		Powercord		Planar
EE-Analog IC		Storage Enclosure				EE-Logic IC
EE-PCB		Air deflector				EE-Sensor
EE-Connector		Camera module				EE-Analog IC
EE-Capacitor		Lamp				EE-PCB
EE-MOSFET		PSU				EE-Connector
EE-other		I/O Box				EE-Capacitor
Planar		Barebone				EE-Resistor
Subcard		Camera				EE-MOSFET
Battery		Thermal				EE-other
LCD		Fan				SSD/eMMC/UFS
Touchpanel		Mic				Adapter
Adapter		Cable				WLAN-Intel
WWAN		Antenna				WLAN-nonIntel
WLAN		Speaker				WWAN
CPU		Keyborad				
Foliocase		Mouse				
Touchpad		Keyborad_Mouse				
Simcard		Graphic_card				
Keyboard		Cardreader				
Fingerprint		Comport				
Camera		Daughter board				
Powercord		Front top I/O				
Dongle		Radar card				
Mouse		HDD				
Docking		ODD				
Pen		SSD/eMMC/UFS				
Option-others		Memory				
Bag		Adapter				
Packaging		BATTERY				
Others		Chipset				
CPU				
GPU-DT				
Lanchip				
WLAN-Intel				
WLAN-nonIntel				
DT LCD&TP (AIO)				
DT LCD&TP (Monitor)				
LFD				
Visuals				
EE-Logic IC				
EE-Sensor				
EE-Analog IC				
EE-PCB				
EE-Connector				
EE-Capacitor				
EE-MOSFET				
EE-other

(https://scc.lenovo.com/opendocs/en/odm/data-ems/7_99_data_odm_fixed_value.html)
Planar				
