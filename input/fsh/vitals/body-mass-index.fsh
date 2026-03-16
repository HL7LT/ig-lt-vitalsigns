Profile: BMI
Parent: ObservationLt
Id: bmi
Title: "Body Mass Index"
Description: "Body Mass Index (BMI) is a measure of body fat based on height and weight."
* ^url = $bmi-url

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

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 1..1 MS and SNOMED 0..1
* code.coding[LOINC] from BMIObservation (preferred)
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC] ^short = "Body Mass Index (LOINC)"
* code.coding[SNOMED] from BMIObservationSNOMED (extensible)
* code.coding[SNOMED].system = "http://snomed.info/sct"
* code.coding[SNOMED] ^short = "Body Mass Index (SNOMED CT)"
* code ^short = "Body Mass Index"
* code ^definition = "Body mass index. LOINC required; SNOMED CT optional for dual coding."

* valueQuantity MS
* valueQuantity from BMIUnit (required)
* valueQuantity ^condition = "vs-bh-2"
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for BMI."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "BMIUnit"
* valueQuantity ^binding.description = "kg/m2"

* dataAbsentReason MS
* dataAbsentReason ^condition = "vs-bw-2"

* interpretation from NumericResultInterpretationNonPanic (extensible)

* component 0..0
* bodyStructure ..0
* bodySite ..0
* method 0..0


