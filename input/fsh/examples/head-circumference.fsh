Instance: observation-head-circumference-example
InstanceOf: HeadCircumference
Title: "Observation: Head Circumference (example)"
Description: "Measured head circumference using a tape measure."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.coding[+] = $loinc#8287-5 "Head Occipital-frontal circumference by Tape measure"
* subject = Reference(patient-example)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity.value = 35
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
