Instance: observation-body-weight-example
InstanceOf: BodyWeight
Title: "Observation: Body Weight (example)"
Description: "Example observation representing the patient's body weight measured in kilograms."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[BodyWeightCode] = $loinc#29463-7 "Body weight"
* code.coding[LOINC] = $loinc#29463-7 "Body weight"
* subject = Reference(patient-example)
* effectiveDateTime = "2025-10-27T09:20:00+03:00"
* valueQuantity.value = 68.4
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg
* method = $sct#39857003 "Weighing patient (procedure)"
* extension[associatedSituation].valueCodeableConcept = $sct#225494003 "Wears undignified clothing (finding)"
* device = Reference(device-body-weight-example)
* note.text = "Measured after breakfast using a calibrated digital scale."
