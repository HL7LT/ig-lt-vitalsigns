Profile: BodyWeight
Parent: LTBaseObservation
Id: body-weight
Title: "Body Weight"
Description: "The measured mass of an individual's body."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

// >> Start of FHIR vital signs base profile
* obeys vs-bw-1
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."
* effective[x] ^condition = "vs-bw-1"
* value[x] only Quantity
// << 

//> FHIR BodyWeight profile
* obeys vs-bw-2
* . ^short = "Body Weight Profile (EE)"
* . ^definition = "This profile defines  how to represent body weight observations in FHIR using a standard LOINC code and UCUM units of measure."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS and BodyWeightCode 1..1 MS
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "This vital signs category"
* category[BodyWeightCode] = $loinc#29463-7
* category[BodyWeightCode] ^definition = "This body weight category"

* code from VitalSignsBodyWeight (preferred)
* code ^short = "Body Weight"
* code ^definition = "Body Weight."
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "VitalSignsBodyWeight"
* code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing body weight vital sign measurements in Observation.code."

* valueQuantity MS
* valueQuantity from BodyWeightUnits (required)
* valueQuantity ^condition = "vs-bw-2"
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for Body Weight."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "BodyWeightUnits"
* valueQuantity ^binding.description = "g | kg  | [lb_av]"
* dataAbsentReason MS
* dataAbsentReason ^condition = "vs-bw-2"
//<< 


//>> CIMI starts
* extension contains
//    $observation-deviceCode named measurmentDevice 0..1 MS and
    AssociatedSituationExt named associatedSituation 0..1 MS and
    MeasurementSettingExt named measurementSetting 0..1 MS
//* extension[measurmentDevice] ^short = "Measurement Device Type"
//* extension[measurmentDevice].value[x] from $weightMeasurementDeviceVS (extensible)
* extension[associatedSituation] ^short = "Associated Situation"
* extension[associatedSituation].value[x] only CodeableConcept
* extension[associatedSituation].valueCodeableConcept only CodeableConcept
* extension[associatedSituation].valueCodeableConcept from BodyWeightAssociatedSituation (extensible)
* extension[associatedSituation].valueCodeableConcept ^sliceName = "valueCodeableConcept"
* extension[associatedSituation] ^short = "Description of the state of dress of the person at the time of weighing"
* extension[measurementSetting] ^short = "Measurement setting"
* interpretation from NumericResultInterpretationNonPanic (extensible)
//<< CIMI ends 

* component 0..0
* bodyStructure ..0
* bodySite ..0
* device only Reference(BodyWeightMeasurementDevice)
* device MS
* device ^short = "Body Weight Measurement Device"


Profile: BodyWeightMeasurementDevice
Parent: Device
Id: device-body-weight
Title: "Body Weight Measurement Device"

* type from WeightMeasurementDevice (extensible)


Invariant: vs-bw-1
Description: "if Observation.effective[x] (as dateTime) has a value then that value shall be precise at least to the day"
* severity = #error
* expression = "(effective as dateTime).toString().length() >= 8"

Invariant: vs-bw-2
Description: "For single vital signs observations (that do not require use of components or hasMember), then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "dataAbsentReason.exists() or value.exists()"
// * source = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
