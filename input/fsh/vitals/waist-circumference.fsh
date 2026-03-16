Profile: WaistCircumference
Parent: ObservationLt
Id: waist-circumference
Title: "Waist Circumference"
Description: "Waist circumference by Tape measure. The measurement in centimeters or inches around the narrowest part of the waist."
* ^url = $waist-circumference-url

* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

* effective[x] 1..
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."

//> FHIR Waist Circumference profile
* obeys vs-bw-2
* . ^short = "Waist Circumference Profile"
* . ^definition = "This profile defines  how to represent waist circumference observations in FHIR using a standard LOINC code and UCUM units of measure."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS and WaistCircumferenceCode 1..1 MS
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "This vital signs category"
* category[WaistCircumferenceCode] = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* category[WaistCircumferenceCode] ^definition = "This waist circumference category"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 1..1 MS and SNOMED 0..1
* code.coding[LOINC] from WaistCircumferenceObservationLOINC (preferred)
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC] ^short = "Waist Circumference (LOINC)"
* code.coding[SNOMED] from WaistCircumferenceObservationSNOMED (extensible)
* code.coding[SNOMED].system = "http://snomed.info/sct"
* code.coding[SNOMED] ^short = "Waist Circumference (SNOMED CT)"
* code ^short = "Waist Circumference observation"
* code ^definition = "Waist Circumference observation. LOINC required; SNOMED CT optional for dual coding."

* value[x] only Quantity
* valueQuantity from BodyLengthUnits (required)
* valueQuantity ^condition = "vs-bh-2"
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for body length measures such as Body Height and Head Circumference."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "BodyLengthUnits"
* valueQuantity ^binding.description = "cm | [in_i]"

* dataAbsentReason ^condition = "vs-bw-2"

* interpretation ^slicing.discriminator.type = #pattern
* interpretation ^slicing.discriminator.path = "$this"
* interpretation ^slicing.rules = #open
* interpretation contains Category 0..1 MS and Disease 0..1 MS
* interpretation[Category] from NumericResultInterpretation 
* interpretation[Category] ^definition = "This value set defines the set of possible interpretations for waist circumference measurement."
* interpretation[Disease] from WaistCircumferenceResultInterpretation 
* interpretation[Disease] ^definition = "This value set defines the set of possible diseases hypothesis based on the interpretation of waist circumference results."

* component 0..0
* bodyStructure ..0
* bodySite ..0
* method 0..0



