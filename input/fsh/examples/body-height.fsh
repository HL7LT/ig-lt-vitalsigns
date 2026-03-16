Instance: observation-body-height-example
InstanceOf: BodyHeight
Title: "Observation: Body Height (example)"
Description: "Example observation representing the patient's body height measured in centimeters."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[BodyHeightCategory] = $loinc#8302-2 "Body height"
* code.coding[LOINC] = $loinc#8302-2 "Body height"
* subject = Reference(patient-example)
* effectiveDateTime = "2025-10-27T09:15:00+03:00"
* valueQuantity.value = 176
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* method.text = "Measured using a stadiometer"
* device = Reference(device-body-height-example)
* note.text = "Height measured without shoes during routine examination."
