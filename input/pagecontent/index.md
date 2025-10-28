# Lithuanian Base Implementation Guide

## Introduction and Purpose

This Implementation Guide (IG) specifies how to consistently represent and exchange core, objective patient clinical data—vital signs—using the Fast Healthcare Interoperability Resources (FHIR) standard. The accurate and standardized capture of these fundamental measurements is a critical component for patient status assessment, provision of emergency care, monitoring of changes over a long time perspective, and accurate diagnosis across all healthcare settings. Modern EHR systems and telemedicine solutions require this data to be not only recorded but also machine-readable, allowing algorithms and artificial intelligence systems to quickly process the information.

## Scope and Core Observations

This guide provides structured FHIR profiles and guidance for core vital signs and associated anthropometric data, including:

- **Arterial Blood Pressure (ABP)**: Systolic and diastolic measurement. The profiles also include requirements for capturing measurement circumstances (e.g., sitting, standing, or using ambulatory monitoring) and the measurement location, ensuring full clinical context.
- **Heart Rate (HR)**: Pulse measurement.
- **Body Temperature**: Measurement in degrees Celsius.
- **Respiratory Rate**: Number of breaths per minute.
- **Anthropometric Data**: Height (Body length) and Weight (Body mass), which are used for calculating Body Mass Index (BMI). These measurements are especially critical for assessing the risk of obesity and related chronic diseases (cardiovascular disease, diabetes).
- **Pain Assessment**: Evaluation of pain intensity using validated scales. Pain is often referred to as the fifth vital sign; this IG standardizes the assessment using scales such as NRS (Numeric Rating Scale) and VAS (Visual Analog Scale).

## Why Use This Guide?

By adopting these profiles, implementers can ensure a unified and reliable approach to clinical information management:

- **Interoperability**: Facilitate seamless, semantic exchange of vital signs data between measuring devices, Electronic Health Record (EHR) systems, Intensive Care Unit monitors, and telemedicine solutions. This enables smooth data transfer to regional and national health data warehouses, supporting epidemiological analysis.
- **Clinical Quality**: Ensure data reliability and accuracy through mandatory units of measure (UCUM) and standardized codes (LOINC, SNOMED CT), which are essential for automated calculation of BMI and other vital indicators. Structured data reduces the risk of interpretation errors and enhances clinician confidence in the information when making crucial decisions.
- **Safety and Decision Support**: Enable automatic alarm rules and clinical decision support systems that quickly recognize critical changes in a patient's condition, based on standardized data. This automation is particularly important for the early detection of sepsis, hypotension, or other life-threatening conditions.

Navigate the sections below to access the profiles, terminology bindings, and detailed examples needed to implement the vital signs standard.

## IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

## Contributors

| Name                                             | Role                          | Organization                                    |
| ------------------------------------------------ | ----------------------------- | ----------------------------------------------- |
| [Igor Bossenko](https://about.askigor.eu)     | Primary Author                | [HELEX](https://helex.health) |
| [Peeter Ross](https://www.linkedin.com/in/peeter-ross-5378b74/) | Reviewer           | [TalTech](https://taltech.ee)               |
| Martynas Bieliauskas                           | Reviewer                 | [LMB](https://lmb.lt)               |
