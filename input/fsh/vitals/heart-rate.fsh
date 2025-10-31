

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
* category contains VSCat 1..1 MS and HeartRateCategory 1..1 MS
* category[VSCat] = $observation-category#vital-signs
* category[VSCat] ^definition = "This vital signs category"
* category[HeartRateCategory] = $loinc#8867-4
* code from HeartRateObservation (preferred)
* code ^short = "Heart Rate"
* code ^definition = "Heart Rate."
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "VitalSignsHeartRate"
* code ^binding.description = "This identifies the set of LOINC codes that are appropriate for representing heart rate vital sign measurements in Observation.code. <br/>R6! Proper link is https://build.fhir.org/valueset-observation-vitalsign-heartrate.html <br/>TODO: own valieset that based on SNOMED"

* valueQuantity from VitalSignsRateUnit (required)
* valueQuantity ^short = "Common UCUM rate units for vital signs including heart and respiratory rate. <br/>R6! Proper link is https://build.fhir.org/valueset-ucum-vitalsignsrate.html."
* valueQuantity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* valueQuantity ^binding.extension[=].valueMarkdown = "Common UCUM rate units for vital signs including heart and respiratory rate."
* valueQuantity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* valueQuantity ^binding.extension[=].valueString = "VitalSignsRateUnit"
* valueQuantity ^binding.description = "/min"
// <<

//>> Begin of the CIMI specification
* extension contains
//    ObsDeviceCode named measurementDevice 0..1 MS and
    ExerciseAssociation named exerciseAssociation 0..1 MS and
//    ObsBodyPosition named bodyPosition 0..1 MS and
    MeasurementSetting named measurementSetting 0..1 MS and
    SleepStatus named sleepStatus 0..1 MS and
    AssociatedSituation named associatedSituation 0..1 MS
// * extension[measurementDevice] ^short = "Measurement Device Type"
// * extension[measurementDevice].value[x] from HeartRateMeasurementDevice (extensible)
* extension[exerciseAssociation] ^short = "Exercise Association"
//* extension[bodyPosition] ^short = "Body Position"
//* extension[bodyPosition].value[x] from BodyPosition (extensible)
* extension[measurementSetting] ^short = "Measurement setting"
* extension[sleepStatus] ^short = "Sleep Status"
* extension[associatedSituation] ^short = "Associated Situation"

* bodySite MS
* bodySite from HeartRateMeasurementBodyLocation (extensible)
* method MS
* method from HeartRateMeasurementMethod (extensible)
* interpretation from NumericResultInterpretation (extensible)
//>> End of the CIMI specification

* component 0..0
* device only Reference(DeviceHeartRate)
* device MS
* device ^short = "Heart Rate Measurement Device"
* bodyStructure only Reference(BodyStructureBloodPressure)
* bodyStructure MS
* bodyStructure ^short = "Describe body characteristics where on/in body an observation or procedure took place"
* bodySite ..0




Invariant: vshree-1
Description: "if Observation.effective[x] (as dateTime) has a value then that value shall be precise at least to the day"
* severity = #error
* expression = "(effective as dateTime).toString().length() >= 8"

Invariant: vshree-2
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"


// Example: Heart Rate
Instance: example-heart-rate
InstanceOf: HeartRate
Usage: #example
Title: "Example Heart Rate Observation"
Description: "Example observation representing the patient's heart rate measured at rest."
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[HeartRateCategory] = $loinc#8867-4 "Heart rate"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-28T09:25:00+03:00"
* valueQuantity.value = 72
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* method = $sct#113011001 "Palpation (procedure)"
* extension[exerciseAssociation].valueCodeableConcept = $sct#229065009 "Exercise therapy (regime/therapy)"
* extension[sleepStatus].valueCodeableConcept = $sct#248220008 "Asleep (finding)"
* interpretation = $observation-interpretation#N "Normal"
* device = Reference(example-device-heart-rate)
* bodyStructure = Reference(example-body-structure-blood-pressure)
* note.text = "Measured manually while patient was seated and relaxed."

