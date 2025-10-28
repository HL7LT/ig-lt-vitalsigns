//Alias: $heightLengthMeasDeviceVS = http://hl7.org/fhir/us/vitals/ValueSet/heightLengthMeasDeviceVS
//Alias: $heightLengthMeasMethodVS = http://hl7.org/fhir/us/vitals/ValueSet/heightLengthMeasMethodVS

Profile: BodyHeight
Parent: LTBaseObservation
Id: body-height
Title: "Body Height"
Description: "The measurement in centimeters or feet and inches from the top of the head to the heel, usually while standing."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"

// >> Start of FHIR vital signs base profile
* obeys vs-bh-1
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."
* effective[x] ^condition = "vs-bh-1"
// << 

//> FHIR BodyWeight profile
* obeys vs-bh-2
* . ^short = "Body Height Profile (EE)"
* . ^definition = "This profile defines  how to represent body weight observations in FHIR using a standard LOINC code and UCUM units of measure."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS and BodyHeightCode 1..1 MS
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "This vital signs category"
* category[BodyHeightCode] = $loinc#8302-2
* category[BodyHeightCode] ^definition = "This body weight category"

* code from VitalSignsBodyHeight (preferred)
* code ^short = "Body Height"
* code ^definition = "Body Height."
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "VitalSignsBodyHeight"
* code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing body height (including body length) vital sign measurements in Observation.code."

* value[x] only Quantity
* valueQuantity from BodyLengthUnits (required)
* valueQuantity ^condition = "vs-bh-2"
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for body length measures such as Body Height and Head Circumference."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "BodyLengthUnits"
* valueQuantity ^binding.description = "cm | [in_i]"
* dataAbsentReason MS
* dataAbsentReason ^condition = "vs-bh-2"

//>> CIMI starting point
* extension contains
//    $observation-bodyPosition named bodyPosition 0..1 MS and
//    $observation-deviceCode named measurementDevice 0..1 MS and
    MeasurementSettingExt named MeasurementSetting 0..1 MS
// * extension[bodyPosition] ^short = "Body Position"
// * extension[bodyPosition].value[x] from $heightBodyPositionVS (extensible)
// * extension[measurementDevice] ^short = "Measurement Device Type"
// * extension[measurementDevice].value[x] from HeightLengthMeasDevice (extensible)
* extension[MeasurementSetting] ^short = "Measurement setting"
* interpretation from NumericResultInterpretationNonPanic (extensible)
* method MS
* method from HeightLengthMeasurementMethod (extensible)
//<< CIMI ends

* component 0..0
* bodySite ..0
* device only Reference(BodyHeightMeasurementDevice)
* device MS
* device ^short = "Body Height Measurement Device"
* bodyStructure only Reference(BodyStructureVitalSigns)
* bodyStructure MS
* bodyStructure ^short = "Describe body characteristics where on/in body an observation or procedure took place"


Profile: BodyHeightMeasurementDevice
Parent: Device
Id: device-body-height
Title: "Body Height Measurement Device"

* type from HeightLengthMeasurementDevice (extensible)


Invariant: vs-bh-1
Description: "if Observation.effective[x] (as dateTime) has a value then that value shall be precise at least to the day"
* severity = #error
* expression = "(effective as dateTime).toString().length() >= 8"

Invariant: vs-bh-2
Description: "For single vital signs observations (that do not require use of components or hasMember), then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "dataAbsentReason.exists() or value.exists()"
// * source = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
