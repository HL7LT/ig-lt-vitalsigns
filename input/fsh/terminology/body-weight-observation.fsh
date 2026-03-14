ValueSet: BodyWeightObservation
Id: body-weight-observation
Title: "Body Weight observation codes"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing body weight vital sign measurements in Observation.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
* ^url = "https://tx.hl7.lt/fhir/ValueSet/body-weight-observation"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include codes from system $loinc
    where COMPONENT in "LP65139-5,LP304481-7,LP304482-5" and
    PROPERTY = "LP6826-4" and
    TIME_ASPCT = "LP6960-1" and
    SYSTEM = "LP310005-6" and
    SCALE_TYP = "LP7753-9"
