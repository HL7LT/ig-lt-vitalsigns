Profile: DeviceBodyHeight
Parent: Device
Id: device-body-height
Title: "Device for Body Height Measurement"
Description: "Device used to measure body height."
* ^url = $device-body-height-url
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

* identifier 0..*
* identifier ^short = "Device identifier (e.g. serial number)"
* displayName 0..1
* displayName ^short = "Human-readable name"
* manufacturer 0..1
* manufacturer ^short = "Manufacturer (Organization or string)"
* type from DeviceTypeHeightLength (extensible)

