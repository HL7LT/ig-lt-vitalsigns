Instance: observation-bmi-example
InstanceOf: BMI
Title: "Observation: Body Mass Index (example)"
Description: "An example BMI measurement for a patient."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[LOINC] = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(patient-example)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity = 22 $ucum#kg/m2 "kilogram / (meter ^ 2)"
