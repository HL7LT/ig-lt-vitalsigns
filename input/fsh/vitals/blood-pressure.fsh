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

// >> Start of FHIR vital signs base profile
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "Vital Signs are point in time measurements and are recorded using the dateTime data type"
* effective[x] ^definition = "Vital Signs are point in time measurements and are recorded using the dateTime data type."
* effective[x] ^condition = "vsp-2"

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains VSCat 1..1 MS and BPCategory 1..1
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "This vital signs category"
* category[BPCategory] = $loinc#85354-9
* code from BloodPressurePanelObservation (preferred)
* code ^short = "Blood Pressure"
* code ^definition = "Blood Pressure."
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "BloodPressurePanelObservation"
* code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing an arterial systolic and diastolic BP panel of vital sign measurements in Observation.code."
* value[x] ..0
* component ..* MS
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "extension.url"
* component ^slicing.discriminator[+].type = #pattern
* component ^slicing.discriminator[=].path = "extension.value"

// * component ^slicing.discriminator[0].type = #value
// * component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^short = "Used when reporting systolic and diastolic blood pressure."
* component ^definition = "Used when reporting systolic and diastolic blood pressure."
* component contains
    SystolicBP 1..1 MS and
    DiastolicBP 1..1 MS
* component[SystolicBP] obeys vsp-3-sbp
* component[SystolicBP].code = $loinc#8480-6
* component[SystolicBP].extension 1..
* component[SystolicBP].extension ^slicing.discriminator[0].type = #value
* component[SystolicBP].extension ^slicing.discriminator[=].path = "url"
* component[SystolicBP].extension ^slicing.discriminator[+].type = #value
* component[SystolicBP].extension ^slicing.discriminator[=].path = "value"
* component[SystolicBP].extension ^slicing.rules = #open
* component[SystolicBP].extension contains $observation-component-category named SBPCode 1..1
* component[SystolicBP].extension[SBPCode].value[x] 1..1
* component[SystolicBP].extension[SBPCode].value[x] = $loinc#8480-6
* component[SystolicBP].code 1..
* component[SystolicBP].code from BloodPressureSystolicObservation (preferred)
* component[SystolicBP].code ^short = "Systolic Blood Pressure"
* component[SystolicBP].code ^definition = "Systolic Blood Pressure."
* component[SystolicBP].code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[SystolicBP].code ^binding.extension[=].valueString = "BloodPressureSystolicObservation"
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
* component[SystolicBP].valueQuantity ^binding.extension[=].valueString = "BloodPressureUnit"
* component[SystolicBP].valueQuantity ^binding.description = "mm[Hg]"
* component[SystolicBP].valueQuantity from BloodPressureUnit (required)
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
* component[DiastolicBP].extension contains $observation-component-category named DBPCode 1..1
* component[DiastolicBP].extension[DBPCode].value[x] 1..1
* component[DiastolicBP].extension[DBPCode].value[x] = $loinc#8462-4

* component[DiastolicBP].code 1..
* component[DiastolicBP].code from BloodPressureDiastolicObservation (preferred)
* component[DiastolicBP].code ^short = "Diastolic Blood Pressure"
* component[DiastolicBP].code ^definition = "Diastolic Blood Pressure."
* component[DiastolicBP].code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[DiastolicBP].code ^binding.extension[=].valueString = "BloodPressureDiastolicObservation"
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

* component[DiastolicBP].valueQuantity from BloodPressureUnit (required)
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
    //bodyPosition named bodyPosition 0..1 MS and
    SleepStatus named sleepStatus 0..1 MS and
    ExerciseAssociation named exerciseAssociation 0..1 MS and
    MeasurementSetting named measurementSetting 0..1 MS 
//* extension[bodyPosition] ^short = "Body Position"
//* extension[bodyPosition].value[x] from BodyPosition (extensible)
* extension[sleepStatus] ^short = "Sleep Status"
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[measurementSetting] ^short = "Measurement setting"
* status MS

* effective[x] 1.. MS
* value[x] ..0
* interpretation ..1
* interpretation from NumericResultInterpretation (extensible)
// * bodySite MS
// * bodySite from BloodPressureMeasurementBodyLocation (extensible)
// * bodySite ^binding.description = "A set of codes that describe where on/in the body an observation or procedure took place"
* method MS
* method from BloodPressureMeasurementMethod (extensible)
* method ^binding.description = "A set of codes that describe the method used to measure a blood pressure"
* specimen ..0

* component contains MeanArterialBP 0..1 MS
* component[MeanArterialBP] ^short = "Mean Arterial Blood Pressure"
* component[MeanArterialBP].extension 1..
* component[MeanArterialBP].extension ^slicing.discriminator[0].type = #value
* component[MeanArterialBP].extension ^slicing.discriminator[=].path = "url"
* component[MeanArterialBP].extension ^slicing.discriminator[+].type = #value
* component[MeanArterialBP].extension ^slicing.discriminator[=].path = "value"
* component[MeanArterialBP].extension ^slicing.rules = #open
* component[MeanArterialBP].extension contains $observation-component-category named MeanCode 1..1
* component[MeanArterialBP].extension[MeanCode].value[x] 1..1
* component[MeanArterialBP].extension[MeanCode].value[x] = $loinc#8478-0

* component[MeanArterialBP].code = $loinc#8478-0
* component[MeanArterialBP].code MS
* component[MeanArterialBP].code ^short = "Mean blood pressure"
* component[MeanArterialBP].value[x] only Quantity
* component[MeanArterialBP].value[x] MS
* component[MeanArterialBP].value[x].value 1.. MS
* component[MeanArterialBP].value[x].unit 1.. MS
* component[MeanArterialBP].value[x].system 1.. MS
* component[MeanArterialBP].value[x].system = $ucum (exactly)
* component[MeanArterialBP].value[x].code 1.. MS
* component[MeanArterialBP].value[x].code = #mm[Hg] (exactly)
//>> End of the CIMI specification

//>>> Start of custom things
* device only Reference(BloodPressureMeasurementDevice)
* device MS
* device ^short = "Blood Pressure Device"
* bodyStructure only Reference(BodyStructureBloodPressure)
* bodyStructure MS
* bodyStructure ^short = "Describe body characteristics where on/in body an observation or procedure took place"
* bodySite ..0

Profile: BloodPressureMeasurementDevice
Parent: Device
Id: device-blood-pressure
Title: "Blood Pressure Measurement Device"

* type from BloodPressureMeasurementDeviceType (extensible)
* property ^slicing.discriminator.type = #value
// * property ^slicing.discriminator.path = "$this"
* property ^slicing.discriminator.path = "type"
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
* expression = "component.all(value.exists() or dataAbsentReason.exists())"

Invariant: vsp-3-dbp
Description: "If the diastolic BP component exists and there is no component value a component data absent reason must be present."
* severity = #error
* expression = "component.all(value.exists() or dataAbsentReason.exists())"



Instance: example-blood-pressure
InstanceOf: BloodPressurePanel
Title: "Example Blood Pressure Observation"
Description: "Example observation representing a patient’s blood pressure measurement."
Usage: #example

* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[BPCategory] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-08-01T10:00:00Z"
* interpretation = $observation-interpretation#N "Normal"
* device = Reference(example-blood-pressure-device)
* note.text = "Patient was seated for 5 minutes before measurement."

// Systolic BP component 
* component[SystolicBP].extension[SBPCode].valueCodeableConcept = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity.value = 117
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[SystolicBP].valueQuantity.code = #mm[Hg]
* component[SystolicBP].interpretation = $observation-interpretation#N "Normal"

// Diastolic BP component 
* component[DiastolicBP].extension[DBPCode].valueCodeableConcept = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity.value = 78
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[DiastolicBP].valueQuantity.code = #mm[Hg]
* component[DiastolicBP].interpretation = $observation-interpretation#N "Normal"

// Mean Arterial BP component (optional) 
* component[MeanArterialBP].code = $loinc#8478-0 "Mean blood pressure"
* component[MeanArterialBP].valueQuantity.value = 91
* component[MeanArterialBP].valueQuantity.unit = "mmHg"
* component[MeanArterialBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[MeanArterialBP].valueQuantity.code = #mm[Hg]


Instance: example-blood-pressure-device
InstanceOf: BloodPressureMeasurementDevice
Title: "Example Blood Pressure Measurement Device"
Description: "Automated digital blood pressure monitor with adult cuff."
Usage: #example

* status = #active
* type = $sct#258057004 "Non-invasive blood pressure monitor (physical object)"
* manufacturer = "Omron Healthcare"
* property[BPCuffSize].type = urn:iso:std:iso:11073:10101#528391
* property[BPCuffSize].valueCodeableConcept = $sct#720737000 "Blood pressure cuff, adult size (physical object)"
