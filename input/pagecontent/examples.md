# Examples Overview

This page lists the example instances included in the IG. Use them as reference for building valid vital signs and anthropometric resources. Full JSON is available under [**Artifacts**](artifacts.html).

## Patient

| Example | Description |
|---------|-------------|
| [**patient-example**](Patient-patient-example.html) | Example Patient (PatientLt) referenced by all observation and device examples. |

## Observations

| Example | Profile | Description |
|---------|---------|-------------|
| [**observation-blood-pressure-example**](Observation-observation-blood-pressure-example.html) | [Blood Pressure Panel](StructureDefinition-blood-pressure-panel.html) | Blood pressure panel with systolic, diastolic, and mean arterial pressure; seated measurement; device reference; interpretation. |
| [**observation-heart-rate-example**](Observation-observation-heart-rate-example.html) | [Heart Rate](StructureDefinition-heart-rate.html) | Heart rate observation with value and unit. |
| [**observation-body-height-example**](Observation-observation-body-height-example.html) | [Body Height](StructureDefinition-body-height.html) | Body height (length) measurement. |
| [**observation-body-weight-example**](Observation-observation-body-weight-example.html) | [Body Weight](StructureDefinition-body-weight.html) | Body weight measurement. |
| [**observation-bmi-example**](Observation-observation-bmi-example.html) | [BMI](StructureDefinition-bmi.html) | Body mass index observation (e.g. derived from height and weight). |
| [**observation-head-circumference-example**](Observation-observation-head-circumference-example.html) | [Head Circumference](StructureDefinition-head-circumference.html) | Head circumference measurement. |
| [**observation-waist-circumference-example**](Observation-observation-waist-circumference-example.html) | [Waist Circumference](StructureDefinition-waist-circumference.html) | Waist circumference with optional interpretation. |

## Devices

| Example | Profile | Description |
|---------|---------|-------------|
| [**device-blood-pressure-example**](Device-device-blood-pressure-example.html) | [Device Blood Pressure](StructureDefinition-device-blood-pressure.html) | Blood pressure monitor device, referenced by the blood pressure panel example. |
| [**device-body-height-example**](Device-device-body-height-example.html) | [Device Body Height](StructureDefinition-device-body-height.html) | Device used for height/length measurement. |
| [**device-body-weight-example**](Device-device-body-weight-example.html) | [Device Body Weight](StructureDefinition-device-body-weight.html) | Scale or device for body weight. |
| [**device-heart-rate-example**](Device-device-heart-rate-example.html) | [Device Heart Rate](StructureDefinition-device-heart-rate.html) | Heart rate measurement device. |

## Body Structure

| Example | Profile | Description |
|---------|---------|-------------|
| [**bodystructure-blood-pressure-example**](BodyStructure-bodystructure-blood-pressure-example.html) | [Body Structure Blood Pressure](StructureDefinition-body-structure-blood-pressure.html) | Anatomical location for blood pressure measurement (e.g. arm), for use when observation references a body site. |

All observation examples reference [**patient-example**](Patient-patient-example.html) where a subject is required. The blood pressure panel example also references [**device-blood-pressure-example**](Device-device-blood-pressure-example.html) to show how to link an observation to the measuring device.
