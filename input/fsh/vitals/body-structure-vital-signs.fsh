Profile: BodyStructureVitalSigns
Parent: BodyStructure
Id: body-structure-vital-signs
Title: "Body Structure for Vital Signs"
* includedStructure ..1 MS
  * structure from BloodPressureMeasurementBodyLocation (required)
  * structure ^short = "A set of codes that describe site where on/in the body an observation or procedure took place"
  * structure MS
  * laterality from $lateralityVS (required)
  * laterality ^short = "Laterality"
  * laterality MS 
  * bodyLandmarkOrientation	..1
    * landmarkDescription 1..1 MS
    * landmarkDescription from BodyPosition (extensible)
    * landmarkDescription ^short = "Body Position"

Instance: example-body-structure-vitals
InstanceOf: BodyStructureVitalSigns
Usage: #example
Title: "Example Body Structure for Vital Signs"
Description: "Example showing where on the body a vital sign (e.g., blood pressure) measurement was taken."
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#723962009 "Structure of right brachial artery (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right (qualifier value)"
* includedStructure[0].bodyLandmarkOrientation.landmarkDescription = $sct#33586001 "Sitting position (finding)"
