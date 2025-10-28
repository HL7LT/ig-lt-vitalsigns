Extension: ExerciseAssociationExt
Id: ExerciseAssociationExt
Title: "Exercise Association"
Description: "The exercise state associated with the measurement."
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
//* ^url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* . ^short = "Exercise Association"
* . ^definition = "The exercise state associated with the measurement."
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from ExertionPhase (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"


