Profile: BodyStructureBloodPressure
Parent: BodyStructureEuCore
Id: body-structure-blood-pressure
Title: "Body Structure for Blood Pressure"
Description: "Body Structure profile to describe where on the body a blood pressure measurement was taken."
* ^url = $body-structure-blood-pressure-url
* includedStructure ..1 MS
  * structure from BloodPressureMeasurementBodyLocation (required)
  * structure ^short = "A set of codes that describe site where on/in the body an observation or procedure took place"
  * structure MS
  * laterality ^short = "Laterality"
  * laterality MS 
  * bodyLandmarkOrientation	..1
    * landmarkDescription 1..1 MS
    * landmarkDescription from VitalSignsBodyPosition (extensible)
    * landmarkDescription ^short = "Body Position"
