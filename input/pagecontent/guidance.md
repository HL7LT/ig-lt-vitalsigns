# Guidance

This page describes how to use the Lithuanian Vital Signs Implementation Guide in practice.

## Dependencies

This IG builds on:

- **LT Base** (`lt.hl7.fhir.base`): Use the base [Observation](https://hl7.org/fhir/R5/observation.html) profile **ObservationLt** for all vital sign and anthropometric observations. The subject of observations should reference **PatientLt** when representing Lithuanian patient context.
- **EU Base** and **HL7 EU Base R5**: Additional constraints and shared terminology from the European FHIR ecosystem.

Ensure your implementation loads these packages so that profile validation and terminology resolution work correctly.

## Observation vs Device resources

- **Observation profiles** (e.g. [Blood Pressure Panel](StructureDefinition-blood-pressure-panel.html), [Heart Rate](StructureDefinition-heart-rate.html), [Body Height](StructureDefinition-body-height.html), [Body Weight](StructureDefinition-body-weight.html), [BMI](StructureDefinition-bmi.html), [Head Circumference](StructureDefinition-head-circumference.html), [Waist Circumference](StructureDefinition-waist-circumference.html)) represent the clinical measurement itself. Use them to record the vital sign or anthropometric value, effective time, body site, method, and any context (e.g. body position, sleep status).
- **Device profiles** ([Device Blood Pressure](StructureDefinition-device-blood-pressure.html), [Device Body Height](StructureDefinition-device-body-height.html), [Device Body Weight](StructureDefinition-device-body-weight.html), [Device Heart Rate](StructureDefinition-device-heart-rate.html)) represent the measuring device. Link the device to the observation via `Observation.device` when the device is known and relevant for traceability or quality.

Use observations for every measurement; add a Device resource and reference it from the observation when you need to record which device was used.

## Blood pressure

The [**Blood Pressure Panel**](StructureDefinition-blood-pressure-panel.html) observation groups systolic, diastolic, and (optionally) mean arterial pressure in a single resource:

- **code**: Blood pressure panel (LOINC required; SNOMED CT optional for dual coding). See [Blood Pressure Panel Observation](ValueSet-bp-panel-observation.html) and [Blood Pressure Panel Observation (SNOMED)](ValueSet-bp-panel-observation-snomed.html).
- **component**: Required components for systolic and diastolic; mean arterial pressure is optional.
- Use the [**body-position**](StructureDefinition-body-position.html) extension when the position (e.g. sitting, standing) is not precoordinated in the code.
- Use [**Body Structure Blood Pressure**](StructureDefinition-body-structure-blood-pressure.html) when you need to record the anatomical site (e.g. left arm) as a separate resource and reference it from the observation.

Binding to ValueSets for [measurement method](ValueSet-bp-measurement-method.html), [body location](ValueSet-bp-measurement-body-location.html), and [cuff size](ValueSet-bp-cuff-size.html) ensures consistent coding.

## Anthropometrics: height, weight, BMI

- [**Body Height**](StructureDefinition-body-height.html) and [**Body Weight**](StructureDefinition-body-weight.html) observations record length/height and mass in UCUM units (e.g. cm, kg). Use the standard observation codes and units from the bound ValueSets ([body-length-unit](ValueSet-body-length-unit.html), etc.).
- [**BMI**](StructureDefinition-bmi.html) is derived from height and weight. Record it as a separate Observation with the BMI code; the IG does not require a computed relationship in the resource, but systems should calculate and store BMI when both height and weight are available.

Body weight can use the [**associated-situation**](StructureDefinition-associated-situation.html) extension (e.g. dressed, after dialysis) when relevant.

## Terminology

- **Observation codes**: LOINC is required for observation codes. SNOMED CT is optional (extensible) where the IG defines dual-coding ValueSets (e.g. blood pressure panel, heart rate, body height, body weight, BMI, head circumference, waist circumference).
- **Units**: Use UCUM for quantity values. The IG binds units to specific ValueSets (e.g. body-length-unit, vital-signs-rate-unit, bp-unit, bmi-unit) so that only allowed units are used.
- **Terminology server**: Canonical terminology (ValueSets and CodeSystems) is published at **https://tx.hl7.lt/fhir/** and is referenced in profile bindings. Resolve codes and validate bindings against that base when needed.

## Extensions

Use the following extensions when the observation context is not already expressed in the code or core elements:

| Extension | Use when |
|-----------|----------|
| [**body-position**](StructureDefinition-body-position.html) | The position of the body during the observation (e.g. standing, sitting) is not precoordinated in the observation code. |
| [**sleep-status**](StructureDefinition-sleep-status.html) | The patient’s sleep/awake status at the time of measurement is relevant (e.g. for blood pressure). |
| [**exercise-association**](StructureDefinition-exercise-association.html) | The observation is associated with exercise (e.g. exertion phase). |
| [**measurement-setting**](StructureDefinition-measurement-setting.html) | The setting (e.g. ambulatory, home) needs to be recorded. |
| [**associated-situation**](StructureDefinition-associated-situation.html) | The observation is qualified by a situation (e.g. body weight when dressed, after dialysis). |

## Next steps

- See [**Profiles**](profiles.html) for a full list of observation, device, and extension profiles.
- Browse [**Artifacts**](artifacts.html) for the full list of profiles, extensions, ValueSets, and examples.
- Use the [**Terminology**](terminology.html) and [**Examples**](examples.html) pages in this IG for a concise overview of codes and sample instances.
