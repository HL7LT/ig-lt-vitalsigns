Profile: DeviceBloodPressure
Parent: Device
Id: device-blood-pressure
Title: "Device for Blood Pressure Measurement"
Description: "Device used to measure blood pressure."
* ^url = $device-blood-pressure-url
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
* type from DeviceTypeBloodPressure (extensible)
* property ^slicing.discriminator.type = #value
// * property ^slicing.discriminator.path = "$this"
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains BPCuffSize 0..1 MS
* property[BPCuffSize] ^short = "Cuff Size"
* property[BPCuffSize].type MS
* property[BPCuffSize].type = urn:iso:std:iso:11073:10101#528391 (exactly)
* property[BPCuffSize].value[x] only CodeableConcept
* property[BPCuffSize].valueCodeableConcept MS
* property[BPCuffSize].valueCodeableConcept from BloodPressureCuffSize (extensible)


