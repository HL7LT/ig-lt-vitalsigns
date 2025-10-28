Extension: ObsDeviceCode
Id: observation-deviceCode
Title: "Observation Device Code"
Description: "A code representing the the type of device used for this observation. This extension is deprecated, as there are alternate ways to represent this information through the use of Observation.device and the Device.type element."
Context: Observation
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
* ^extension[=].valueCode = #can-bind
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1471"
* ^version = "5.1.0"
* ^status = #retired
* ^experimental = false
//* ^url = "http://hl7.org/fhir/StructureDefinition/observation-deviceCode"
* ^date = "2015-03-02"
* ^publisher = "HL7 International / Orders and Observations"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/orders"
* ^jurisdiction = $m49.htm#001
* . 0..1
* . ^short = "A code representing the the type of device used for this observation.  Should only be used if not implicit in the code found in `Observation.code`"
* . ^definition = "A code representing the the type of device used for this observation.  Should only be used if not implicit in the code found in `Observation.code`."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from DeviceType (example)
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* value[x] ^binding.extension.valueString = "DeviceCode"

