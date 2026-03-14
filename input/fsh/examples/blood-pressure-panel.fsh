Instance: observation-blood-pressure-example
InstanceOf: BloodPressurePanel
Title: "Observation: Blood Pressure (example)"
Description: "Example observation representing a patient's blood pressure measurement."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[BPCategory] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example)
* effectiveDateTime = "2025-08-01T10:00:00Z"
* interpretation = $observation-interpretation#N "Normal"
* device = Reference(device-blood-pressure-example)
* note.text = "Patient was seated for 5 minutes before measurement."

// Systolic BP component 
* component[SystolicBP].extension[SBPCode].valueCodeableConcept = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity.value = 117
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[SystolicBP].valueQuantity.code = #mm[Hg]
* component[SystolicBP].interpretation = $observation-interpretation#N "Normal"

// Diastolic BP component 
* component[DiastolicBP].extension[DBPCode].valueCodeableConcept = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity.value = 78
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[DiastolicBP].valueQuantity.code = #mm[Hg]
* component[DiastolicBP].interpretation = $observation-interpretation#N "Normal"

// Mean Arterial BP component (optional) 
* component[MeanArterialBP].code = $loinc#8478-0 "Mean blood pressure"
* component[MeanArterialBP].valueQuantity.value = 91
* component[MeanArterialBP].valueQuantity.unit = "mmHg"
* component[MeanArterialBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[MeanArterialBP].valueQuantity.code = #mm[Hg]
