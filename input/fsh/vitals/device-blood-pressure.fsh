Profile: DeviceBloodPressure
Parent: Device
Id: device-blood-pressure
Title: "Device for Blood Pressure Measurement"
Description: "Device used to measure blood pressure."
* ^url = $device-blood-pressure-url
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"

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


