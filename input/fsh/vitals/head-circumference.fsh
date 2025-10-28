Profile: HeadCircumference
Parent: LTBaseObservation
Id: head-circumference
Title: "Head Circumference"
Description: "Head Occipital-frontal circumference by Tape measure. The measurement in centimeters or inches around the largest part of the head."

* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

* . ^short = "Head Circumference Profile"
* . ^definition = "This profile defines  how to represent head circumference observations in FHIR using a standard LOINC code and UCUM units of measure."

* effective[x] 1.. 
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "Vital signs"

* code = $loinc#8287-5 "Head Occipital-frontal circumference by Tape measure"
* code ^short = "Head Circumference"
* code ^definition = "Head Circumference."

* value[x] only Quantity
* valueQuantity from BodyLengthUnits (required)
* valueQuantity ^condition = "vs-bh-2"
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for body length measures such as Body Height and Head Circumference."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "BodyLengthUnits"
* valueQuantity ^binding.description = "cm | [in_i]"

* dataAbsentReason ^condition = "vs-bw-2"

* interpretation from NumericResultInterpretationNonPanic (extensible)

* component 0..0
* bodyStructure ..0
* bodySite ..0
* method 0..0


Instance: example-head-circumference
InstanceOf: HeadCircumference
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8287-5 "Head Occipital-frontal circumference by Tape measure"
* subject = Reference(example-patient)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity = 35 $ucum#cm "cm"