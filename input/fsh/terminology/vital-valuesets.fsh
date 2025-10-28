CodeSystem: SolorTemporaryCodeSystem
Id: solor-temporary-codesystem
Title: "SNOMED CT Solor Extension Temporary Code System"
Description: "A set of codes that are defined in the Solor extension to the SNOMED CT code system. To be used until they are adopted by SNOMED CT."
//* ^url = "http://hl7.org/fhir/us/vitals/CodeSystem/SolorTemporaryCodeSystem"
* ^version = "2.0.0"
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* ^caseSensitive = false
* ^content = #complete
* ^count = 13
* #1461000205102 "Digital thermometer (physical object)" "A device used to measure temperature with digital readout."
* #2331000205106 "Non-contact infrared thermometer (physical object)" "A device used to measure temperature via infrared technology that does not come into contact with the skin."
* #24031000205108 "Thermoluminescent diode thermometer (physical object)" "A device used to measure temperature that uses a thermoluminescent diode."
* #641000205104 "Computer aided auscultation (procedure)" "A procedure that uses a computer aided device to measure blood pressure."
* #911000205109 "Measurement of blood pressure using intravascular transducer (procedure)" "A device that measures blood pressure intravascularly via a trandsducer."
* #961000205106 "Wearing street clothes, no shoes (finding)" "The subject is wearing clothing but not shoes."
* #971000205103 "Wearing street clothes with shoes (finding)" "The subject is wearing clothing and shoes."
* #24311000205101 "Stadiometer (physical object)" "A device used to measure a subject's height."
* #23861000205107 "Capnograph sensor device (physical object)" "A device that captures expelled air, either via nasal prongs or CPAP and is used to measure the number of breaths taken per minute."
* #23921000205109 "Respiration strain gauge (physical object)" "A device wrapped around a subject chest that measures the number of times a subject's chest expands with each inhalation.  This counts the breaths per minute."
* #24181000205106 "Patient lift scale (physical object)" "A device used to lift a patient out of or into bed and also has a scale to measure the subject's weight."
* #24781000205105 "Structure of left superficial temporal artery (body structure)" "A body structure of the superficial tempral artery on the left side of the body.  Currently part of the Solor SNOMED CT extension."
* #24791000205107 "Structure of right superficial temporal artery (body structure)" "A body structure of the superficial tempral artery on the right side of the body.  Currently part of the Solor SNOMED CT extension."



ValueSet: BodyLengthUnits
Id: ucum-bodylength
Title: "Body Length Units"
Description: "UCUM units for recording body length measures such as height and head circumference"
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-extensible"
* ^extension[=].valueBoolean = false
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/ucum-bodylength"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[=].value = "urn:oid:2.16.840.1.113883.4.642.3.958"
* ^identifier[+].use = #old
* ^identifier[=].system = "urn:ietf:rfc:3986"
* ^identifier[=].value = "urn:oid:2.16.840.1.113883.4.642.3.873"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR Project"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "UCUM is Copyright © 1999-2013 Regenstrief Institute, Inc. and The UCUM Organization, Indianapolis, IN. All rights reserved. See http://unitsofmeasure.org/trac//wiki/TermsOfUse for details"
* $ucum#cm
* $ucum#[in_i]


ValueSet: BMIUnits
Id: ucum-bmi
Title: "BMI Units"
Description: "UCUM units for recording BMI"
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-extensible"
* ^extension[=].valueBoolean = true
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/ucum-bmi"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR Project"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "UCUM is Copyright © 1999-2013 Regenstrief Institute, Inc. and The UCUM Organization, Indianapolis, IN. All rights reserved. See http://unitsofmeasure.org/trac//wiki/TermsOfUse for details"
* $ucum#kg/m2 "kilogram / (meter ^ 2)"


ValueSet: WaistCircumferenceCodes
Id: waist-circumference-codes
Title: "Waist Circumference Codes"
Description: "HL7 LT value set for waist circumference."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania" 
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#276361009 "Waist circumference (observable entity)"


ValueSet: ExertionPhase
Id: exertion-phase
Title: "Exertion Phase value set"
Description: "SELECT SNOMED CT code system values that contains terms for exercise associated with a measurement."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/exertionPhaseVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#255214003 "After exercise (qualifier value)"
* $sct#307166007 "Before exercise (qualifier value)"
* $sct#309604004 "During exercise (qualifier value)"
* $sct#263678003 "At rest (qualifier value)"

ValueSet: SleepStatus
Id: sleep-status
Title: "Sleep Status value set"
Description: "SELECT SNOMED CT code system values that contains terms used to indicate the state of wakefulness during measurement."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/sleepStatusVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#248220008 "Asleep (finding)"
* $sct#248218005 "Awake (finding)"

ValueSet: NumericResultInterpretationNonPanic
Id: numeric-result-int-non-panic
Title: "Numeric Result Interpretation without panic values, value set"
Description: "The HL7 V3:ObservationInterpretation code set (OID: 2.16.840.1.113883.5.83) that describes interpretations associated with a measured value, constrained to terms that are not those associated with 'panic' terms."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/NumericResultIntNonPanicVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* $observation-interpretation#A "Abnormal"
* $observation-interpretation#H "Higher Than Normal"
* $observation-interpretation#L "Lower Than Normal"

ValueSet: NumericResultInterpretationNom
Id: numeric-result-int
Title: "Numeric Result Interpretation value set"
Description: "The HL7 V3:ObservationInterpretation code set (OID: 2.16.840.1.113883.5.83) that describes interpretations associated with a measured value."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/NumericResultIntVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* $observation-interpretation#A "Abnormal"
* $observation-interpretation#H "Higher Than Normal"
* $observation-interpretation#L "Lower Than Normal"
* $observation-interpretation#HH "Panic High"
* $observation-interpretation#LL "Panic Low"
* $observation-interpretation#N "Normal"


ValueSet: BodyPosition
Id: body-position
Title: "Body Position value set"
Description: "SELECT SNOMED CT code system values the position in which the individual was in during a measurement."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/bodyPositionVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#30212006 "Fowler's position (finding)"
* $sct#26527006 "Inverse Trendelenburg position (finding)"
* $sct#102536004 "Left lateral decubitus position (finding)"
* $sct#414585002 "Left lateral tilt (finding)"
* $sct#10904000 "Orthostatic body position (finding)"
* $sct#1240000 "Prone body position (finding)"
* $sct#102538003 "Recumbent body position (finding)"
* $sct#423413008 "Reverse trendelenburg positioning (finding)"
* $sct#102535000 "Right lateral decubitus position (finding)"
* $sct#415346000 "Right lateral tilt (finding)"
* $sct#33586001 "Sitting position (finding)"
* $sct#40199007 "Supine body position (finding)"
* $sct#34106002 "Trendelenburg position (finding)"

ValueSet: VitalSignsBodyHeight
Id: observation-vitalsign-bodyheight
Title: "Vital Signs - Body Height"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing body height (including body length) vital sign measurements in Observation.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/observation-vitalsign-bodyheight"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include codes from system $loinc
    where CLASS in "LP7768-7,LP7769-5" and
    PROPERTY = "LP6822-3" and
    TIME_ASPCT = "LP6960-1" and
    SYSTEM = "LP310005-6" and
    SCALE_TYP = "LP7753-9"
* exclude codes from system $loinc where COMPONENT = "LP343922-3"
* exclude codes from system $loinc where COMPONENT = "LP343921-5"


ValueSet: HeightLengthMeasurementMethod
Id: height-length-measurement-method
Title: "Height Length Measurement Method value set"
Description: "SELECT SNOMED CT code system values that describe how the height/length was measured."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/heightLengthMeasMethodVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#414135002 "Estimated (qualifier value)"
* $sct#258104002 "Measured (qualifier value)"
* $sct#733985002 "Reported (qualifier value)"



ValueSet: HeightLengthMeasurementDevice
Id: height-length-meas-device
Title: "Height Length Measurement Device value set"
Description: "SELECT SNOMED CT code system values that describe the instrument used to measure the body height/length."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/heightLengthMeasDeviceVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#102304005 "Measuring ruler, device (physical object)"
* $sct#51791000 "Measuring tape, device (physical object)"
* SolorTemporaryCodeSystem#24311000205101 "Stadiometer (physical object)"


ValueSet: WeightMeasurementDevice
Id: weight-measurement-device
Title: "Weight Measurement Device value set"
Description: "SELECT SNOMED CT code system values that descibe the instrument used to measure the body weight."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/weightMeasurementDeviceVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#466289007 "Bed scale (physical object)"
* $sct#444063009 "Broselow Luten color coding system for pediatric weight estimation (assessment scale)"
* $sct#720689000 "Chair scale (physical object)"
* $sct#469204003 "Floor scale, electronic (physical object)"
* $sct#469787007 "Floor scale, mechanical (physical object)"
* $sct#58514003 "Infant scale (physical object)"
* $sct#462242008 "Patient sling scale (physical object)"
* $sct#466532009 "Wheelchair scale (physical object)"
* SolorTemporaryCodeSystem#24181000205106 "Patient lift scale (physical object)"


ValueSet: BodyWeightAssociatedSituation
Id: body-weight-associated-situation
Title: "Body Weight Associated Situation value set"
Description: "SELECT SNOMED CT code system values and temporary code system values that describe situations to be considered when interpreting measured values."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/BodyWeightAssociatedSituationVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#118643004 "Cast device (physical object)"
* $sct#257308009 "Oxygenator (physical object)"
* $sct#53350007 "Prosthesis (physical object)"
* $sct#248160001 "Undressed (finding)"
* SolorTemporaryCodeSystem#961000205106 "Wearing street clothes, no shoes (finding)"
* SolorTemporaryCodeSystem#971000205103 "Wearing street clothes with shoes (finding)"


ValueSet: VitalSignsBodyWeight
Id: vitalsign-bodyweight
Title: "Vital Signs - Body Weight"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing body weight vital sign measurements in Observation.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/observation-vitalsign-bodyweight"
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


ValueSet: HeartRateMeasurementDeviceVS
Id: heart-rate-meas-device
Title: "Heart Rate Measurement Device value set"
Description: "SELECT SNOMED CT code system values that describe the instrument used to measure the heart rate."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/heartRateMeasDeviceVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#467178001 "Bedside heart rate monitor (physical object)"
* $sct#43770009 "Doppler device (physical object)"
* $sct#86184003 "Electrocardiographic monitor and recorder (physical object)"
* $sct#469801002 "Invasive blood pressure monitor (physical object)"
* $sct#258057004 "Non-invasive blood pressure monitor (physical object)"
* $sct#448703006 "Pulse oximeter (physical object)"
* $sct#466093008 "Automatic-inflation electronic sphygmomanometer, non-portable (physical object)"
* $sct#466086009 "Automatic-inflation electronic sphygmomanometer, portable, arm/wrist (physical object)"
* $sct#466139008 "Automatic-inflation electronic sphygmomanometer, portable, finger (physical object)"
* $sct#711337005 "Implantable pulmonary artery pressure monitoring system (physical object)"
* $sct#774007007 "Wearable neonatal heart rate meter (physical object)"


ValueSet: HeartRateMeasurementBodyLocationPrecoordinated
Id: heart-rate-meas-body-location-precoordinated
Title: "Heart Rate Measurement Body Location Precoordinated value set"
Description: "SELECT SNOMED CT code system values that describe where on the body the heart rate was measured."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/heartRateMeasBodyLocationPrecoordVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#32062004 "Common carotid artery structure (body structure)"
* $sct#113263003 "Left common carotid artery structure (body structure)"
* $sct#65355003 "Right common carotid artery structure (body structure)"
* $sct#13383001 "Structure of apex of heart (body structure)"
* $sct#17137000 "Structure of brachial artery (body structure)"
* $sct#86547008 "Structure of dorsalis pedis artery (body structure)"
* $sct#7657000 "Structure of femoral artery (body structure)"
* $sct#723961002 "Structure of left brachial artery (body structure)"
* $sct#792817008 "Structure of left dorsalis pedis artery (body structure)"
* $sct#113270003 "Structure of left femoral artery (body structure)"
* $sct#25885001 "Structure of left popliteal artery (body structure)"
* $sct#214912001 "Structure of left posterior tibial artery (body structure)"
* $sct#50408007 "Structure of left pulmonary artery"
* $sct#368504007 "Structure of left radial artery (body structure)"
* $sct#368506009 "Structure of left ulnar artery (body structure)"
* $sct#43899006 "Structure of popliteal artery (body structure)"
* $sct#13363002 "Structure of posterior tibial artery (body structure)"
* $sct#45631007 "Structure of radial artery (body structure)"
* $sct#723962009 "Structure of right brachial artery (body structure)"
* $sct#792816004 "Structure of right dorsalis pedis artery (body structure)"
* $sct#69833005 "Structure of right femoral artery (body structure)"
* $sct#57832007 "Structure of right popliteal artery (body structure)"
* $sct#368503001 "Structure of right radial artery (body structure)"
* $sct#214811007 "Structure of right posterior tibial artery (body structure)"
* $sct#78480002 "Structure of right pulmonary artery (body structure)"
* $sct#368505008 "Structure of right ulnar artery (body structure)"
* $sct#15672000 "Structure of superficial temporal artery (body structure)"
* $sct#44984001 "Structure of ulnar artery (body structure)"
* SolorTemporaryCodeSystem#24781000205105 "Structure of left superficial temporal artery (body structure)"
* SolorTemporaryCodeSystem#24791000205107 "Structure of right superficial temporal artery (body structure)"


ValueSet: HeartRateMeasurementMethod
Id: heart-rate-measurement-method
Title: "Heart Rate Measurement Method value set"
Description: "SELECT SNOMED CT code system values that describe how the heart rate was measured."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/heartRateMeasMethodVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#37931006 "Auscultation (procedure)"
* $sct#268447006 "Doppler studies (procedure)"
* $sct#29303009 "Electrocardiographic procedure (procedure)"
* $sct#13385008 "Mediate auscultation (procedure)"
* $sct#264598005 "Oximetry (procedure)"
* $sct#113011001 "Palpation (procedure)"
* $sct#277917001 "Thoracic impedance cardiography (procedure)"
* $sct#239516002 "Monitoring procedure (regime/therapy)"
* SolorTemporaryCodeSystem#641000205104 "Auscultation - automatic (procedure)"


ValueSet: VitalSignsHeartRate
Id: vitalsign-heartrate
Title: "Vital Signs - Heart Rate"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing heart rate vital sign measurements in Observation.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/observation-vitalsign-heartrate"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include codes from system $loinc
    where COMPONENT in "LP72677-5,LP308218-9,LP308219-7,LP308220-5,LP308221-3" and
    PROPERTY = "LP6839-7" and
    TIME_ASPCT = "LP6960-1" and
    SCALE_TYP = "LP7753-9"
* exclude codes from system $loinc where SYSTEM = "LP310004-9"


ValueSet: VitalSignsPanel
Id: vitalsign-panel
Title: "Vital Signs - Panel"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing a panel of vital sign measurements in Observation.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
// * ^url = "http://hl7.org/fhir/ValueSet/observation-vitalsign-panel"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include codes from system $loinc
    where CLASS = "LP31904-3" and
    TIME_ASPCT = "LP6960-1" and
    SYSTEM = "LP310005-6"


Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

ValueSet: VitalSignsRateUnits
Id: ucum-vitalsigns-rate
Title: "Vital Signs Rate Units"
Description: "UCUM rate units for recording vital signs including heart and respiratory rate."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-extensible"
* ^extension[=].valueBoolean = true
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/ucum-vitalsignsrate"
* ^version = "6.0.0-ballot3"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR Project"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "UCUM is Copyright © 1999-2013 Regenstrief Institute, Inc. and The UCUM Organization, Indianapolis, IN. All rights reserved. See http://unitsofmeasure.org/trac//wiki/TermsOfUse for details"
* $ucum#/min "per minute"


ValueSet: MeasurementSetting
Id: measurement-setting
Title: "Measurement Setting value set"
Description: "SELECT SNOMED CT code system values that contains terms that indicate the surroundings the individual was in during the measurement (i.e. home, clinic, hospital, etc.)."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/MeasSettingVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#285201006 "Hospital environment (environment)"
* $sct#264362003 "Home (environment)"
* $sct#257585005 "Clinic (environment)"


ValueSet: BloodPressureMeasurementDeviceType
Id: bp-measurement-device-type
Title: "Blood Pressure Measurement Device value set"
Description: "SELECT SNOMED CT code system values that describe the isntrument used to measure the blood pressure."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/bpMeasDeviceVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#309641003 "Aneroid sphygmomanometer (physical object)"
* $sct#43770009 "Doppler device (physical object)"
* $sct#469801002 "Invasive blood pressure monitor (physical object)"
* $sct#309642005 "Mercury sphygmomanometer (physical object)"
* $sct#258057004 "Non-invasive blood pressure monitor (physical object)"
* $sct#466093008 "Automatic-inflation electronic sphygmomanometer, non-portable (physical object)"
* $sct#466086009 "Automatic-inflation electronic sphygmomanometer, portable, arm/wrist (physical object)"
* $sct#466139008 "Automatic-inflation electronic sphygmomanometer, portable, finger (physical object)"



ValueSet: BloodPressureCuffSize
Id: bp-cuff-size
Title: "Blood Pressure Cuff Size value set"
Description: "SELECT SNOMED CT code system values that describe the size of blood pressure cuff in use."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/bpCuffSizeVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#720736009 "Blood pressure cuff, pediatric size (physical object)"
* $sct#720737000 "Blood pressure cuff, adult size (physical object)"


ValueSet: BloodPressureMeasurementMethod
Id: bp-measurement-method
Title: "Blood Pressure Measurement Method value set"
Description: "SELECT SNOMED CT code system values that describe how a blood pressure was measured."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/bpMeasMethodVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#77938009 "Arterial pressure monitoring, invasive method (regime/therapy)"
* $sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* $sct#37931006 "Auscultation (procedure)"
* $sct#765172009 "Doppler ultrasound (procedure)"
* $sct#13385008 "Mediate auscultation (procedure)"
* $sct#113011001 "Palpation (procedure)"
* $sct#31813000 "Vascular oscillometry (procedure)"
* SolorTemporaryCodeSystem#911000205109 "Measurement of blood pressure using intravascular transducer (procedure)"
* SolorTemporaryCodeSystem#641000205104 "Auscultation - automatic (procedure)"

ValueSet: VitalSignsBPPanel
Id: vitalsign-bppanel
Title: "Vital Signs - BP Panel"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing an arterial szstolic and diastolic BP panel of vital signs measurements in Observation.component.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/observation-vitalsign-bppanel"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* $loinc#35094-2 "Blood pressure panel"
* $loinc#55417-0 "Short blood pressure panel"
* $loinc#85354-9 "Blood pressure panel with all children optional"


ValueSet: VitalSignsSystolicBP
Id: vitalsign-systolicbp
Title: "Vital Signs - Systolic BP"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing an arterial systolic BP vital sign measurement in Observation.component.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/observation-vitalsign-systolicbp"
* ^version = "6.0.0-ballot3"
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

ValueSet: VitalSignsDiastolicBP
Id: vitalsign-diastolicbp
Title: "Vital Signs - Diastolic BP"
Description: "This value set defines the set of LOINC codes considered to be appropriate for representing an arterial diastolic BP vital sign measurement in Observation.component.code."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/observation-vitalsign-diastolicbp"
* ^version = "6.0.0-ballot3"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include codes from system $loinc
    where COMPONENT in "LP72831-8,LP304516-0,LP304518-6,LP304517-8,LP304501-2" and
    PROPERTY = "LP6847-0" and
    TIME_ASPCT = "LP6960-1" and
    SYSTEM = "LP7034-4" and
    SCALE_TYP = "LP7753-9"

ValueSet: BloodPressureUnits
Id: ucum-bp
Title: "Blood Pressure Units"
Description: "UCUM units for recording blood pressure."
* ^meta.lastUpdated = "2025-10-26T17:42:56.640+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-extensible"
* ^extension[=].valueBoolean = true
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
//* ^url = "http://hl7.org/fhir/ValueSet/ucum-bp"
* ^version = "6.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "FHIR Project"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "UCUM is Copyright © 1999-2013 Regenstrief Institute, Inc. and The UCUM Organization, Indianapolis, IN. All rights reserved. See http://unitsofmeasure.org/trac//wiki/TermsOfUse for details"
* $ucum#mm[Hg] "millimeter of mercury"


ValueSet: BloodPressureMeasurementBodyLocationPrecoordinated
Id: bp-measurement-body-location-precoordinated
Title: "Blood Pressure Measurement Body Location Precoordinated value set"
Description: "SELECT SNOMED CT code system values that describe the location on the body where the blood pressure was measured."
//* ^url = "http://hl7.org/fhir/us/vitals/ValueSet/bpmeasbodylocationprecoord"
* ^version = "2.0.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#49256001 "Structure of dorsal digital artery of foot (body structure)"
* $sct#368469003 "Structure of proper volar digital arteries (body structure)"
* $sct#17137000 "Structure of brachial artery (body structure)"
* $sct#723961002 "Structure of left brachial artery (body structure)"
* $sct#723962009 "Structure of right brachial artery (body structure)"
* $sct#7657000 "Structure of femoral artery (body structure)"
* $sct#113270003 "Structure of left femoral artery (body structure)"
* $sct#69833005 "Structure of right femoral artery (body structure)"
* $sct#45631007 "Structure of radial artery (body structure)"
* $sct#368504007 "Structure of left radial artery (body structure)"
* $sct#368503001 "Structure of right radial artery (body structure)"
* $sct#13363002 "Structure of posterior tibial artery (body structure)"
* $sct#214912001 "Structure of left posterior tibial artery (body structure)"
* $sct#214811007 "Structure of right posterior tibial artery (body structure)"
* $sct#54247002 "Ascending aorta structure (body structure)"
* $sct#281130003 "Descending aorta structure (body structure)"
* $sct#57034009 "Aortic arch structure (body structure)"
* $sct#7832008 "Abdominal aorta structure (body structure)"