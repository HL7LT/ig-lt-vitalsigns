Extension: BodyPositionExt
Id: body-position-ext
Title: "Body Position Extension"
Description: "The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code."
Context: Observation, Specimen.collection
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
* ^extension[=].valueCode = #can-bind
//* ^url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1472"
* ^version = "5.1.0"
* ^experimental = false
* ^date = "2015-03-02"
* ^publisher = "HL7 International / Orders and Observations"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/orders"
* ^jurisdiction = $m49.htm#001
* . 0..1
* . ^short = "The body position during the observation"
* . ^definition = "The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code."
* value[x] 1..
* value[x] only CodeableConcept