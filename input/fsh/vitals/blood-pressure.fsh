Alias: $lateralityVS = http://hl7.org/fhir/ValueSet/bodystructure-relative-location


Profile: BloodPressurePanel
Parent: LTBaseObservation
Id: blood-pressure-panel
Title: "Blood Pressure Panel"
Description: "Blood Pressure Panel; a grouping of systolic, diastolic, and mean arterial blood pressure components."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Tallinn University of Technology (TalTech)"
* ^contact[0].name = "Tallinn University of Technology (TalTech)"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://taltech.ee/emedlab"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "MIT"


//>> requirements of the EEBaseObservation
// * category.coding[obscat].code = #vital-signs

// >> Start of FHIR vital signs base profile
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."
* effective[x] ^condition = "vsp-2"

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS and BPCode 1..1
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "This vital signs category"
* category[BPCode] = $loinc#85354-9
* code from VitalSignsBPPanel (preferred)
* code ^short = "Blood Pressure"
* code ^definition = "Blood Pressure."
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "VitalSignBPPanel"
* code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing an arterial systolic and diastolic BP panel of vital sign measurements in Observation.code."
* value[x] ..0
* component ..* MS
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "extension.url"
* component ^slicing.discriminator[+].type = #pattern
* component ^slicing.discriminator[=].path = "extension.value"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Used when reporting systolic and diastolic blood pressure."
* component ^definition = "Used when reporting systolic and diastolic blood pressure."
* component contains
    SystolicBP 1..1 MS and
    DiastolicBP 1..1 MS
* component[SystolicBP] obeys vsp-3-sbp
* component[SystolicBP].extension 1..
* component[SystolicBP].extension ^slicing.discriminator[0].type = #value
* component[SystolicBP].extension ^slicing.discriminator[=].path = "url"
* component[SystolicBP].extension ^slicing.discriminator[+].type = #pattern
* component[SystolicBP].extension ^slicing.discriminator[=].path = "value"
* component[SystolicBP].extension ^slicing.rules = #open
* component[SystolicBP].extension contains ObsComponentCategory named SBPCode 1..1
* component[SystolicBP].extension[SBPCode].value[x] 1..1
* component[SystolicBP].extension[SBPCode].value[x] = $loinc#8480-6
* component[SystolicBP].code 1..
* component[SystolicBP].code from VitalSignsSystolicBP (preferred)
* component[SystolicBP].code ^short = "Systolic Blood Pressure"
* component[SystolicBP].code ^definition = "Systolic Blood Pressure."
* component[SystolicBP].code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[SystolicBP].code ^binding.extension[=].valueString = "VitalSignSystolicBP"
* component[SystolicBP].code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing an arterial systolic BP vital sign measurement in Observation.component.code."
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].valueQuantity only Quantity
* component[SystolicBP].valueQuantity MS
* component[SystolicBP].valueQuantity ^short = "Vital Sign Systolic BP Component Value recorded with UCUM mm[Hg]"
* component[SystolicBP].valueQuantity ^definition = "Vital Sign Systolic BP Component Value recorded with UCUM mm[Hg]."
* component[SystolicBP].valueQuantity ^condition = "vsp-3-sbp"
* component[SystolicBP].valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* component[SystolicBP].valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for Blood Pressure."
* component[SystolicBP].valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[SystolicBP].valueQuantity ^binding.extension[=].valueString = "BloodPressureUnits"
* component[SystolicBP].valueQuantity ^binding.description = "mm[Hg]"
* component[SystolicBP].valueQuantity from BloodPressureUnits (required)
* component[SystolicBP].valueQuantity.value 1.. MS
* component[SystolicBP].valueQuantity.unit 1.. MS
* component[SystolicBP].valueQuantity.system 1.. MS
* component[SystolicBP].valueQuantity.system = $ucum (exactly)
* component[SystolicBP].valueQuantity.code 1.. MS
* component[SystolicBP].valueQuantity.code = #mm[Hg] (exactly)


* component[SystolicBP].dataAbsentReason MS
* component[SystolicBP].dataAbsentReason ^condition = "vsp-3-sbp"
* component[DiastolicBP] obeys vsp-3-dbp
* component[DiastolicBP].extension 1..
* component[DiastolicBP].extension ^slicing.discriminator[0].type = #value
* component[DiastolicBP].extension ^slicing.discriminator[=].path = "url"
* component[DiastolicBP].extension ^slicing.discriminator[+].type = #pattern
* component[DiastolicBP].extension ^slicing.discriminator[=].path = "value"
* component[DiastolicBP].extension ^slicing.rules = #open
* component[DiastolicBP].extension contains ObsComponentCategory named DBPCode 1..1
* component[DiastolicBP].extension[DBPCode].value[x] 1..1
* component[DiastolicBP].extension[DBPCode].value[x] = $loinc#8462-4
* component[DiastolicBP].code 1..
* component[DiastolicBP].code from VitalSignsDiastolicBP (preferred)
* component[DiastolicBP].code ^short = "Diastolic Blood Pressure"
* component[DiastolicBP].code ^definition = "Diastolic Blood Pressure."
* component[DiastolicBP].code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[DiastolicBP].code ^binding.extension[=].valueString = "VitalSignDiastolicBP"
* component[DiastolicBP].code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing an arterial diastolic BP vital sign measurement in Observation.component.code."
* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].valueQuantity only Quantity
* component[DiastolicBP].valueQuantity MS
* component[DiastolicBP].valueQuantity ^short = "Vital Sign DiastolicBP BP Component Value recorded with UCUM mm[Hg]"
* component[DiastolicBP].valueQuantity ^definition = "Vital Sign DiastolicBP BP Component Value recorded with UCUM mm[Hg]."
* component[DiastolicBP].valueQuantity ^condition = "vsp-3-dbp"
* component[DiastolicBP].valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* component[DiastolicBP].valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM units for Blood Pressure."
* component[DiastolicBP].valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[DiastolicBP].valueQuantity ^binding.extension[=].valueString = "BloodPressureUnits"
* component[DiastolicBP].valueQuantity ^binding.description = "mm[Hg]"

* component[DiastolicBP].valueQuantity from BloodPressureUnits (required)
* component[DiastolicBP].valueQuantity.value 1.. MS
* component[DiastolicBP].valueQuantity.unit 1.. MS
* component[DiastolicBP].valueQuantity.system 1.. MS
* component[DiastolicBP].valueQuantity.system = $ucum (exactly)
* component[DiastolicBP].valueQuantity.code 1.. MS
* component[DiastolicBP].valueQuantity.code = #mm[Hg] (exactly)

* component[DiastolicBP].dataAbsentReason MS
* component[DiastolicBP].dataAbsentReason ^condition = "vsp-3-dbp"

// << 

//>> Begin of the CIMI specification
* extension contains
    //ObsBodyPosition named bodyPosition 0..1 MS and
    SleepStatusExt named sleepStatus 0..1 MS and
    ExerciseAssociationExt named exerciseAssociation 0..1 MS and
    MeasurementSettingExt named MeasurementSetting 0..1 MS 
//* extension[bodyPosition] ^short = "Body Position"
//* extension[bodyPosition].value[x] from BodyPosition (extensible)
* extension[sleepStatus] ^short = "Sleep Status"
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[MeasurementSetting] ^short = "Measurement setting"
* status MS

* effective[x] 1.. MS
* value[x] ..0
* interpretation ..1
* interpretation from NumericResultInterpretationNom (extensible)
// * bodySite MS
// * bodySite from BloodPressureMeasurementBodyLocationPrecoordinated (extensible)
// * bodySite ^binding.description = "A set of codes that describe where on/in the body an observation or procedure took place"
* method MS
* method from BloodPressureMeasurementMethod (extensible)
* method ^binding.description = "A set of codes that describe the method used to measure a blood pressure"
* specimen ..0
* component contains MeanArterialBP 0..1 MS
* component[MeanArterialBP] ^short = "Mean Arterial Blood Pressure"
* component[MeanArterialBP].code = $loinc#8478-0
* component[MeanArterialBP].code MS
* component[MeanArterialBP].code ^short = "Mean blood pressure"
* component[MeanArterialBP].value[x] only Quantity
* component[MeanArterialBP].value[x] MS
* component[MeanArterialBP].value[x].value 1.. MS
* component[MeanArterialBP].value[x].unit 1.. MS
* component[MeanArterialBP].value[x].system 1.. MS
* component[MeanArterialBP].value[x].system = "http://unitsofmeasure.org" (exactly)
* component[MeanArterialBP].value[x].code 1.. MS
* component[MeanArterialBP].value[x].code = #mm[Hg] (exactly)

//>> End of the CIMI specification

//>>> Start of custom things
* device only Reference(BloodPressureMeasurementDevice)
* device MS
* device ^short = "Blood Pressure Device"
* bodyStructure only Reference(BodyStructureVitalSigns)
* bodyStructure MS
* bodyStructure ^short = "Describe body characteristics where on/in body an observation or procedure took place"
* bodySite ..0

Profile: BloodPressureMeasurementDevice
Parent: Device
Id: device-blood-pressure
Title: "Blood Pressure Measurement Device"

* type from BloodPressureMeasurementDeviceType (required)
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "$this"
* property ^slicing.rules = #open
* property contains BPCuffSize 0..1 MS
* property[BPCuffSize] ^short = "Cuff Size"
* property[BPCuffSize].type MS
* property[BPCuffSize].type = urn:iso:std:iso:11073:10101#528391 (exactly)
* property[BPCuffSize].value[x] only CodeableConcept
* property[BPCuffSize].valueCodeableConcept MS
* property[BPCuffSize].valueCodeableConcept from BloodPressureCuffSize (extensible)


//<<<

Invariant: vsp-2
Description: "if Observation.effective[x] (as dateTime) has a value then that value shall be precise at least to the day"
* severity = #error
* expression = "(effective as dateTime).toString().length() >= 8"

Invariant: vsp-3-sbp
Description: "If the systolic BP component exists and there is no component value a component data absent reason must be present."
* severity = #error
* expression = "component.value.exists() or component.dataAbsentReason.exists()"

Invariant: vsp-3-dbp
Description: "If the diastolic BP component exists and there is no component value a component data absent reason must be present."
* severity = #error
* expression = "component.value.exists() or component.dataAbsentReason.exists()"
