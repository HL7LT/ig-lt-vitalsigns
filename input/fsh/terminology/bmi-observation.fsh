ValueSet: BMIObservation
Id: bmi-observation
Title: "Body Mass Index observation codes (LOINC)"
Description: "LOINC codes for body mass index vital sign measurements in Observation.code."
* ^url = $bmi-observation-vs-url
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include $loinc#39156-5 "Body mass index (BMI) [Ratio]"
