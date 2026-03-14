Instance: observation-waist-circumference-example
InstanceOf: WaistCircumference
Title: "Observation: Waist Circumference (example)"
Description: "Measured waist circumference using a tape measure."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[WaistCircumferenceCode] = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* code = $sct#276361009 "Waist circumference (observable entity)"
* subject = Reference(patient-example)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity = 130 $ucum#cm "cm"
* interpretation[Category] = $observation-interpretation#HH "Critical high"
* interpretation[Disease] = $sct#249533007 "Obese abdomen (finding)"
