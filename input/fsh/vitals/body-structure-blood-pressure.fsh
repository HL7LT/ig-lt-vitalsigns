Profile: BodyStructureBloodPressure
Parent: BodyStructureEuCore
Id: body-structure-blood-pressure
Title: "Body Structure for Blood Pressure"
* includedStructure ..1 MS
  * structure from BloodPressureMeasurementBodyLocation (required)
  * structure ^short = "A set of codes that describe site where on/in the body an observation or procedure took place"
  * structure MS
  * laterality ^short = "Laterality"
  * laterality MS 
  * bodyLandmarkOrientation	..1
    * landmarkDescription 1..1 MS
    * landmarkDescription from BodyPosition (extensible)
    * landmarkDescription ^short = "Body Position"

Instance: example-body-structure-blood-pressure
InstanceOf: BodyStructureBloodPressure
Usage: #example
Title: "Example Body Structure for Blood Pressure"
Description: "Example showing where on the body a blood pressure measurement was taken."
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#7657000 "Structure of femoral artery (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].bodyLandmarkOrientation.landmarkDescription = $sct#33586001 "Sitting position (finding)"
