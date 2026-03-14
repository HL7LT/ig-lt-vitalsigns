ValueSet: BloodPressureSystolicObservation
Id: bp-systolic-observation
Title: "BP Systolic observation codes"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing an arterial systolic BP vital sign measurement in Observation.component.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
* ^url = "https://tx.hl7.lt/fhir/ValueSet/bp-systolic-observation"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include codes from system $loinc
    where COMPONENT in "LP72836-7,LP304522-8,LP304524-4,LP304523-6,LP304513-7" and
    PROPERTY = "LP6847-0" and
    TIME_ASPCT = "LP6960-1" and
    SYSTEM = "LP7034-4" and
    SCALE_TYP = "LP7753-9"
