

Profile: HeartRate
Parent: LTBaseObservation
Id: heart-rate
Title: "Heart Rate"
Description: "The number of heart beats in a minute."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

// >> Start of FHIR vital signs base profile
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."
* effective[x] ^condition = "vshree-1"

* value[x] only Quantity
* value[x] ^condition = "vshree-2"
* dataAbsentReason ^condition = "vshree-2"
// << 

// >> Start of FHIR HeartRate profile
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS and HeartRateCode 1..1 MS
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "This vital signs category"
* category[HeartRateCode] = $loinc#8867-4
* code from VitalSignsHeartRate (preferred)
* code ^short = "Heart Rate"
* code ^definition = "Heart Rate."
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "VitalSignsHeartRate"
* code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing heart rate vital sign measurements in Observation.code. <br/>R6! Proper link is https://build.fhir.org/valueset-observation-vitalsign-heartrate.html <br/>TODO: own valieset that based on SNOMED"

* valueQuantity from VitalSignsRateUnits (required)
* valueQuantity ^short = "Common UCUM rate units for vital signs including heart and respiratory rate. <br/>R6! Proper link is https://build.fhir.org/valueset-ucum-vitalsignsrate.html."
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM rate units for vital signs including heart and respiratory rate."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "VitalSignsRateUnits"
* valueQuantity ^binding.description = "/min"
// <<

//>> Begin of the CIMI specification
* extension contains
//    ObsDeviceCode named measurementDevice 0..1 MS and
    ExerciseAssociationExt named exerciseAssociation 0..1 MS and
//    ObsBodyPosition named bodyPosition 0..1 MS and
    MeasurementSettingExt named measurementSetting 0..1 MS and
    SleepStatusExt named sleepStatus 0..1 MS and
    AssociatedSituationExt named associatedSituation 0..1 MS
// * extension[measurementDevice] ^short = "Measurement Device Type"
// * extension[measurementDevice].value[x] from HeartRateMeasurementDeviceVS (extensible)
* extension[exerciseAssociation] ^short = "Exercise Association"
//* extension[bodyPosition] ^short = "Body Position"
//* extension[bodyPosition].value[x] from BodyPosition (extensible)
* extension[measurementSetting] ^short = "Measurement setting"
* extension[sleepStatus] ^short = "Sleep Status"
* extension[associatedSituation] ^short = "Associated Situation"

* bodySite MS
* bodySite from HeartRateMeasurementBodyLocationPrecoordinated (extensible)
* method MS
* method from HeartRateMeasurementMethod (extensible)
* interpretation from NumericResultInterpretationNom (extensible)
//>> End of the CIMI specification

* component 0..0
* device only Reference(HeartRateMeasurementDevice)
* device MS
* device ^short = "Heart Rate Measurement Device"
* bodyStructure only Reference(BodyStructureVitalSigns)
* bodyStructure MS
* bodyStructure ^short = "Describe body characteristics where on/in body an observation or procedure took place"
* bodySite ..0

Profile: HeartRateMeasurementDevice
Parent: Device
Id: device-heart-rate
Title: "Heart Rate Measurement Device"

* type from HeartRateMeasurementDeviceVS (extensible)



Invariant: vshree-1
Description: "if Observation.effective[x] (as dateTime) has a value then that value shall be precise at least to the day"
* severity = #error
* expression = "(effective as dateTime).toString().length() >= 8"

Invariant: vshree-2
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"
