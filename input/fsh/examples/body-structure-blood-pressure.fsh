Instance: bodystructure-blood-pressure-example
InstanceOf: BodyStructureBloodPressure
Title: "BodyStructure: Blood Pressure Measurement Site (example)"
Description: "Example showing where on the body a blood pressure measurement was taken."
Usage: #example

* patient = Reference(patient-example)
* includedStructure[0].structure = $sct#7657000 "Structure of femoral artery (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].bodyLandmarkOrientation.landmarkDescription = $sct#33586001 "Sitting position (finding)"
