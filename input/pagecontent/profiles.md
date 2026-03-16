# Profiles

This page lists the StructureDefinition profiles defined in the Lithuanian Vital Signs Implementation Guide. Use them to ensure consistent representation of vital signs and anthropometric data across systems.

## Why these profiles matter

- **For implementers and reporting:** Standardised profiles enable interoperable exchange between devices, EHRs, and national or regional repositories. Consistent structure and bindings support aggregation, analytics, and reuse of vital signs data without custom mappings.
- **For clinicians:** Profiles encode required observation codes (LOINC, SNOMED CT), units (UCUM), and optional context (body position, device, measurement setting). This supports accurate data capture, calculation of derived values (e.g. BMI), and reliable use in decision support and care pathways.

## Observation profiles

| Profile | Purpose |
|--------|---------|
| [**Blood Pressure Panel**](StructureDefinition-blood-pressure-panel.html) | Groups systolic, diastolic, and optional mean arterial pressure with method, body location, and device context. |
| [**Heart Rate**](StructureDefinition-heart-rate.html) | Pulse measurement with optional body location and method. |
| [**Body Height**](StructureDefinition-body-height.html) | Body length/height in standard units (e.g. cm). |
| [**Body Weight**](StructureDefinition-body-weight.html) | Body mass with optional associated situation (e.g. dressed, after dialysis). |
| [**BMI**](StructureDefinition-bmi.html) | Body mass index for obesity and metabolic risk assessment. |
| [**Head Circumference**](StructureDefinition-head-circumference.html) | Head circumference for paediatric and growth assessment. |
| [**Waist Circumference**](StructureDefinition-waist-circumference.html) | Waist circumference for metabolic and cardiovascular risk. |

## Device profiles

| Profile | Purpose |
|--------|---------|
| [**Device Blood Pressure**](StructureDefinition-device-blood-pressure.html) | Blood pressure monitor; reference from observations when device is known. |
| [**Device Body Height**](StructureDefinition-device-body-height.html) | Device used for height/length measurement. |
| [**Device Body Weight**](StructureDefinition-device-body-weight.html) | Scale or device for body weight. |
| [**Device Heart Rate**](StructureDefinition-device-heart-rate.html) | Heart rate measurement device. |

## Body Structure

| Profile | Purpose |
|--------|---------|
| [**Body Structure Blood Pressure**](StructureDefinition-body-structure-blood-pressure.html) | Anatomical site for blood pressure measurement (e.g. arm); reference from observation when site is modelled as a separate resource. |

## Extensions

Extensions add context that may not be precoordinated in the observation code:

| Extension | Purpose |
|-----------|---------|
| [**body-position**](StructureDefinition-body-position.html) | Body position during measurement (e.g. sitting, standing). |
| [**sleep-status**](StructureDefinition-sleep-status.html) | Sleep/awake status at time of measurement. |
| [**exercise-association**](StructureDefinition-exercise-association.html) | Association with exercise (e.g. exertion phase). |
| [**measurement-setting**](StructureDefinition-measurement-setting.html) | Setting (e.g. ambulatory, home). |
| [**associated-situation**](StructureDefinition-associated-situation.html) | Qualifying situation (e.g. body weight when dressed, after dialysis). |

For implementation details and bindings, see [**Guidance**](guidance.html). For terminology used by these profiles, see [**Terminology**](terminology.html); for sample instances, see [**Examples**](examples.html).
