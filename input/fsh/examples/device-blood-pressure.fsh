Instance: device-blood-pressure-example
InstanceOf: DeviceBloodPressure
Title: "Device: Blood Pressure Measurement (example)"
Description: "Automated digital blood pressure monitor with adult cuff."
Usage: #example

* status = #active
* type = $sct#258057004 "Non-invasive blood pressure monitor (physical object)"
* manufacturer = "Omron Healthcare"
* property[BPCuffSize].type = urn:iso:std:iso:11073:10101#528391
* property[BPCuffSize].valueCodeableConcept = $sct#720737000 "Blood pressure cuff, adult size (physical object)"
