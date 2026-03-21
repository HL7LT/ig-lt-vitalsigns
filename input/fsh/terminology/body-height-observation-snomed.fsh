ValueSet: BodyHeightObservationSNOMED
Id: body-height-observation-snomed
Title: "Body Height observation codes (SNOMED CT)"
Description: "SNOMED CT codes for body height vital sign measurements in Observation.code."
* ^url = $body-height-observation-snomed-vs-url
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include $sct#50373000 "Body height (observable entity)"
