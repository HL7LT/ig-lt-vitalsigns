Instance: patient-example
InstanceOf: PatientLt
Usage: #example
Title: "Patient: John Doe (example)"
Description: "An example Patient."

* identifier[0].use = #usual
* identifier[=].system = "http://hospital.org/patient-id"
* identifier[=].value = "10005"

* name[0].use = #official
* name[0].family = "Doe"
* name[0].given[0] = "John"
* name[0].text = "John Doe"

// Active Status (MS)
* active = true

// Gender (MS)
* gender = #male
