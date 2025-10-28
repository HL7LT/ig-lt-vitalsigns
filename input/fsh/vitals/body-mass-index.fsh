Profile: BMI
Parent: LTBaseObservation
Id: bmi
Title: "Body Mass Index"
Description: "Body Mass Index (BMI) is a measure of body fat based on height and weight."

* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."
* value[x] only Quantity

* . ^short = "Body Mass Index Profile"
* . ^definition = "This profile defines  how to represent body mass index observations in FHIR using a standard LOINC code and UCUM units of measure."
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "Vital signs"

* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* code ^short = "Body Mass Index"
* code ^definition = "Body Mass Index"

* valueQuantity MS
* valueQuantity from BMIUnits (required)
* valueQuantity ^condition = "vs-bh-2"
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for BMI."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "BMIUnits"
* valueQuantity ^binding.description = "kg/m2"

* dataAbsentReason MS
* dataAbsentReason ^condition = "vs-bw-2"

* interpretation from NumericResultInterpretationNonPanic (extensible)

* component 0..0
* bodyStructure ..0
* bodySite ..0
* method 0..0


Instance: example-bmi
InstanceOf: BMI
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(example-patient)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity = 22 $ucum#kg/m2 "kilogram / (meter ^ 2)"