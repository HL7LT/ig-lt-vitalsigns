# Terminology Overview

This page summarizes the terminology (ValueSets and CodeSystems) used in the Lithuanian Vital Signs IG. For full definitions and bindings, see [**Artifacts**](artifacts.html).

## Observation codes

Observation profiles bind to LOINC and, where applicable, SNOMED CT:

- **Blood pressure**: Panel and component codes (systolic, diastolic, mean) — [bp-panel-observation](ValueSet-bp-panel-observation.html), [bp-panel-observation-snomed](ValueSet-bp-panel-observation-snomed.html), [bp-systolic-observation](ValueSet-bp-systolic-observation.html), [bp-diastolic-observation](ValueSet-bp-diastolic-observation.html), [bp-mean-observation](ValueSet-bp-mean-observation.html).
- **Heart rate**: [heart-rate-observation](ValueSet-heart-rate-observation.html), [heart-rate-observation-snomed](ValueSet-heart-rate-observation-snomed.html).
- **Body height/length**: [body-height-observation](ValueSet-body-height-observation.html), [body-height-observation-snomed](ValueSet-body-height-observation-snomed.html).
- **Body weight**: [body-weight-observation](ValueSet-body-weight-observation.html), [body-weight-observation-snomed](ValueSet-body-weight-observation-snomed.html).
- **BMI**: [bmi-observation](ValueSet-bmi-observation.html), [bmi-observation-snomed](ValueSet-bmi-observation-snomed.html).
- **Head circumference**: [head-circumference-observation](ValueSet-head-circumference-observation.html), [head-circumference-observation-snomed](ValueSet-head-circumference-observation-snomed.html).
- **Waist circumference**: [waist-circumference-observation-loinc](ValueSet-waist-circumference-observation-loinc.html), [waist-circumference-observation-snomed](ValueSet-waist-circumference-observation-snomed.html).

LOINC is required for observation codes; SNOMED CT is optional (extensible) for dual coding where a SNOMED ValueSet is defined.

## Units

- **Body length/height**: e.g. cm, m — [body-length-unit](ValueSet-body-length-unit.html).
- **Body weight**: e.g. kg (via body weight observation bindings).
- **Blood pressure**: mmHg — [bp-unit](ValueSet-bp-unit.html).
- **Heart rate**: beats per minute — [vital-signs-rate-unit](ValueSet-vital-signs-rate-unit.html).
- **BMI**: kg/m² — [bmi-unit](ValueSet-bmi-unit.html).

All quantity values use UCUM; the IG restricts allowed units via the listed ValueSets.

## Blood pressure context

- **Measurement method**: [bp-measurement-method](ValueSet-bp-measurement-method.html) — how blood pressure was obtained (e.g. auscultation, oscillometry).
- **Body location**: [bp-measurement-body-location](ValueSet-bp-measurement-body-location.html) — site of measurement (e.g. arm, wrist).
- **Cuff size**: [bp-cuff-size](ValueSet-bp-cuff-size.html) — cuff size when relevant.
- **Body position**: [vital-signs-body-position](ValueSet-vital-signs-body-position.html) (sitting, standing, etc.).

## Heart rate context

- **Measurement method**: [heart-rate-measurement-method](ValueSet-heart-rate-measurement-method.html).
- **Body location**: [heart-rate-measurement-body-location](ValueSet-heart-rate-measurement-body-location.html) (e.g. wrist, finger).
- **Exertion phase**: [exertion-phase](ValueSet-exertion-phase.html) — rest, during exercise, recovery, etc.

## Device types

ValueSets for device type are used by Device profiles:

- [device-type-blood-pressure](ValueSet-device-type-blood-pressure.html) — blood pressure monitors.
- [device-type-height-length](ValueSet-device-type-height-length.html) — height/length measurement.
- [device-type-weight](ValueSet-device-type-weight.html) — weight scales.
- [device-type-heart-rate](ValueSet-device-type-heart-rate.html) — heart rate measurement.

## Other context

- **Body position**: [vital-signs-body-position](ValueSet-vital-signs-body-position.html) — used by the [body-position](StructureDefinition-body-position.html) extension.
- **Sleep status**: [vital-signs-sleep-status](ValueSet-vital-signs-sleep-status.html) — used by the [sleep-status](StructureDefinition-sleep-status.html) extension.
- **Measurement environment**: [measurement-environment](ValueSet-measurement-environment.html) — e.g. home, ambulatory.
- **Body weight associated situation**: [body-weight-associated-situation](ValueSet-body-weight-associated-situation.html) — e.g. dressed, after dialysis.
- **Result interpretation**: [numeric-result-interpretation](ValueSet-numeric-result-interpretation.html), [waist-circumference-result-interpretation](ValueSet-waist-circumference-result-interpretation.html).

## CodeSystem

- [**SNOMED Vital Signs Extension**](CodeSystem-snomed-vitalsigns-extension.html): Local CodeSystem extending SNOMED CT for vital signs concepts used in this IG.

## Resolving terminology

Canonical terminology is published at **https://tx.hl7.lt/fhir/**. Use this base URL to resolve ValueSet and CodeSystem resources and to validate codes in instances.
