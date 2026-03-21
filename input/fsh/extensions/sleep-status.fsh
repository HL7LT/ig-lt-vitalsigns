
Extension: SleepStatus
Id: sleep-status
Title: "Sleep Status Extension"
Description: "The state of wakefulness during the measurement."
* ^url = $sleep-status-url
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
* ^extension[=].valueCode = #can-bind
* ^version = "2.0.0"
* ^status = #draft
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* . ^short = "Sleep Status"
* . ^definition = "The state of wakefulness during the measurement."
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from SleepStatusVitalSigns (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"


