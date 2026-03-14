Instance: observation-heart-rate-example
InstanceOf: HeartRate
Title: "Observation: Heart Rate (example)"
Description: "Example observation representing the patient's heart rate measured at rest."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[HeartRateCategory] = $loinc#8867-4 "Heart rate"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(patient-example)
* effectiveDateTime = "2025-10-28T09:25:00+03:00"
* valueQuantity.value = 72
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* method = $sct#113011001 "Palpation (procedure)"
* extension[exerciseAssociation].valueCodeableConcept = $sct#229065009 "Exercise therapy (regime/therapy)"
* extension[sleepStatus].valueCodeableConcept = $sct#248220008 "Asleep (finding)"
* interpretation = $observation-interpretation#N "Normal"
* device = Reference(device-heart-rate-example)
* bodyStructure = Reference(bodystructure-blood-pressure-example)
* note.text = "Measured manually while patient was seated and relaxed."
