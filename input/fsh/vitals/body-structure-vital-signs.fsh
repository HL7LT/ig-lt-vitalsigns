Profile: BodyStructureVitalSigns
Parent: BodyStructure
Id: body-structure-vital-signs
Title: "Body Structure for Vital Signs"
* includedStructure ..1 MS
  * structure from BloodPressureMeasurementBodyLocationPrecoordinated (required)
  * structure ^short = "A set of codes that describe site where on/in the body an observation or procedure took place"
  * structure MS
  * laterality from $lateralityVS (required)
  * laterality ^short = "Laterality"
  * laterality MS 
  * bodyLandmarkOrientation	..1
    * landmarkDescription 1..1 MS
    * landmarkDescription from BodyPosition (extensible)
    * landmarkDescription ^short = "Body Position"