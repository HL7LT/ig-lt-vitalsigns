# Lithuanian Vital Signs Implementation Guide

## Introduction and Purpose

This **Implementation Guide (IG)** specifies how to consistently represent and exchange **core patient physiological and anthropometric measurements** using the **Fast Healthcare Interoperability Resources (FHIR)** standard. Accurate, structured, and **machine-readable vital signs data** is essential for **patient assessment**, **emergency care**, **long-term monitoring**, **diagnosis**, and **secondary use** across healthcare settings.

This guide supports the **standardized exchange of vital signs data** between **clinical systems**, **medical devices**, **telemedicine solutions**, and **national health data infrastructures**, enabling reliable interpretation by both clinicians and digital systems.

## Audience

This guide is intended for **implementation guide authors, system vendors, integrators, healthcare solution developers, and other stakeholders** involved in exchanging **vital signs data using FHIR**. Readers are expected to have at least a **basic familiarity with FHIR** and to refer to the **core FHIR specification** where additional background is needed.

## Scope and Key Content

This guide provides **structured FHIR profiles and implementation guidance** for **core vital signs** and associated **anthropometric data**, including:

- **Arterial Blood Pressure (ABP):** Systolic, diastolic, and mean arterial pressure represented as a panel, including relevant measurement context such as **body position**, **measurement location**, and **device details**.
- **Heart Rate (HR):** Pulse or heart rate measurements, with support for **body location** and **measurement method** where relevant.
- **Anthropometric Data:** Body height, body weight, and **Body Mass Index (BMI)**, supporting **growth assessment** and **risk evaluation** related to obesity and chronic disease.
- **Head Circumference:** Head circumference measurements, primarily used in **paediatric** and **growth assessment** contexts.
- **Waist Circumference:** Waist circumference measurements used in **metabolic** and **cardiovascular risk assessment**.

Supporting artifacts also include **Device profiles** (for example, blood pressure monitors, scales, height-length devices, and heart rate devices), a **BodyStructure profile** for **blood pressure measurement site**, and **extensions** for **body position**, **sleep status**, **exercise association**, **measurement setting**, and **associated situations**.

## Why Use This Guide?

By adopting these profiles and guidance, implementers can support a standardized approach to:

- **Interoperability:** Facilitate **seamless, semantic exchange** of vital signs data between **medical devices**, **Electronic Health Record (EHR) systems**, **hospital systems**, **telemedicine platforms**, and **national health information infrastructures**.
- **Data Quality:** Improve the **consistency**, **completeness**, and **reliability** of measurements through **standardized structures**, **terminology bindings**, and **units of measure**, reducing ambiguity and supporting accurate interpretation.
- **Clinical Utility:** Support **safer and more effective clinical workflows**, including **longitudinal monitoring**, **risk assessment**, **automated calculations**, **alerting**, and **clinical decision support** based on structured vital signs data.

## How to Navigate This Guide

This guide is organized into several sections that support implementation from overview to detailed conformance artifacts. All **conformance** and **example resources** are listed on the [**Artifacts**](artifacts.html) page. Key sections include:

- [**Artifacts**](artifacts.html) — Complete list of **profiles, extensions, terminology resources, and example instances** defined by this guide.
- [**Profiles**](profiles.html) — **StructureDefinitions** for vital signs observations, devices, supporting resources, and extensions.
- [**Terminology**](terminology.html) — **ValueSets** and terminology bindings used by the profiles.
- [**Examples**](examples.html) — Example instances for observations, devices, and related resources.
- [**Guidance**](guidance.html) — Additional implementation guidance and **modelling recommendations**.
- [**Changelog**](changelog.html) — Summary of notable changes across versions of the guide.

## IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

## Contributors

| Name | Role | Organization |
|------|------|--------------|
| [Igor Bossenko](https://about.askigor.eu) | Primary Author | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus-1512813b2/) | Co-Author | [HELEX Solutions](https://helex.solutions) |
| [Peeter Ross](https://www.linkedin.com/in/peeter-ross-5378b74/) | Reviewer | [TalTech](https://taltech.ee) |
| Martynas Bieliauskas | Reviewer | [LMB](https://lmb.lt) |