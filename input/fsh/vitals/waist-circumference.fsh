ValueSet: LTAbdominalObesityVS
Id: lt-abdominal-obesity
Title: "Abdominal Obesity Interpretation"
Description: "Interpretation whether abdominal (android) obesity is present."
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
* $sct#373067005 "No (qualifier value)"
* $sct#238132000 "Android obesity (disorder)"


Profile: WaistCircumference
Parent: LTBaseObservation
Id: waist-circumference
Title: "Waist Circumference"
Description: "Waist circumference by Tape measure. The measurement in centimeters or inches around the narrowest part of the waist."

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

* code from WaistCircumferenceObservation (preferred)
* code ^short = "Waist Circumference observation"
* code ^definition = "Waist Circumference observation."
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "VitalSignsWaistCircumference"
* code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing waist circumference vital sign measurements in Observation.code."

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


// Add abdominal obesity interpretation component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains ObesityInterpretation 0..1
// Slice: Abdominal Obesity Interpretation
* component[ObesityInterpretation].code = $sct#276361009 "Waist circumference (observable entity)"
* component[ObesityInterpretation].value[x] only CodeableConcept
* component[ObesityInterpretation].valueCodeableConcept from LTAbdominalObesityVS (required)
* component[ObesityInterpretation] ^short = "Indicates presence or absence of abdominal (android) obesity"

* component 0..*
* bodyStructure ..0
* bodySite ..0
* method 0..0





Instance: example-waist-circumference
InstanceOf: WaistCircumference
Usage: #example
* status = #final
* code = $sct#276361009 "Waist circumference (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity = 90 $ucum#cm "cm"


Instance: example-waist-circumference-obesity
InstanceOf: WaistCircumference
Title: "Example – Abdominal Obesity Present"
Usage: #example
* status = #final
* code = $sct#276361009
* subject = Reference(example-patient)
* effectiveDateTime = "2024-01-10T09:00:00Z"
* valueQuantity = 104 $ucum#cm "cm"
* component[ObesityInterpretation].valueCodeableConcept = $sct#238132000 "Android obesity (disorder)"


Instance: example-waist-circumference-no-obesity
InstanceOf: WaistCircumference
Title: "Example – No Abdominal Obesity"
Usage: #example
* status = #final
* code = $sct#276361009
* subject = Reference(example-patient)
* effectiveDateTime = "2024-01-10T09:00:00Z"
* valueQuantity = 78 $ucum#cm "cm"
* component[ObesityInterpretation].valueCodeableConcept = $sct#373067005 "No (qualifier value)"


