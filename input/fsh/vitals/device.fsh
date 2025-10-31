Profile: DeviceBloodPressure
Parent: Device
Id: device-blood-pressure
Title: "Device for Blood Pressure Measurement"
Description: "Device used to measure blood pressure."
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

Instance: example-device-blood-pressure
InstanceOf: DeviceBloodPressure
Title: "Example Device - Blood Pressure Measurement"
Description: "Automated digital blood pressure monitor with adult cuff."
Usage: #example

* status = #active
* type = $sct#258057004 "Non-invasive blood pressure monitor (physical object)"
* manufacturer = "Omron Healthcare"
* property[BPCuffSize].type = urn:iso:std:iso:11073:10101#528391
* property[BPCuffSize].valueCodeableConcept = $sct#720737000 "Blood pressure cuff, adult size (physical object)"



// Device for Body Height Measurement

Profile: DeviceBodyHeight
Parent: Device
Id: device-body-height
Title: "Device for Body Height Measurement"
Description: "Device used to measure body height."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"

* type from DeviceTypeHeightLength (extensible)



Instance: example-device-body-height
InstanceOf: DeviceBodyHeight
Usage: #example
Title: "Example Device - Body Height Measurement"
Description: "A stadiometer used to measure the patient’s height."
* status = #active
* type = $sct#24311000205101 "Stadiometer (physical object)"


// Device for Body Weight Measurement

Profile: DeviceBodyWeight
Parent: Device
Id: device-body-weight
Title: "Body Weight Measurement Device"
Description: "Device used to measure body weight."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"

* type from DeviceTypeWeight (extensible)

Instance: example-device-body-weight
InstanceOf: DeviceBodyWeight
Usage: #example
Title: "Example Device - Body Weight Measurement"
Description: "A weighing scale used to measure the patient's body weight."
* status = #active
* type.text = "Weighing scale"


// Device for Heart Rate Measurement

Profile: DeviceHeartRate
Parent: Device
Id: device-heart-rate
Title: "Device for Heart Rate Measurement"
Description: "Device used to measure heart rate."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"

* type from DeviceTypeHeartRate (extensible)


Instance: example-device-heart-rate
InstanceOf: DeviceHeartRate
Usage: #example
Title: "Example Device - Heart Rate Measurement"
Description: "An automated digital heart rate monitor used for the measurement."
* status = #active
* type.text = "Digital heart rate monitor"
