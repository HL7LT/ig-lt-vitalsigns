# Pavyzdžių apžvalga

Šiame puslapyje išvardyti gide pateikti pavyzdiniai egzemplioriai. Naudokite juos kaip nuorodą kuriant tinkamus gyvybinių parodymų ir antropometrinių išteklių egzempliorius. Visas JSON prieinamas skiltyje [**Artifacts**](artifacts.html).

**Kodėl tai svarbu:** Pavyzdžiai parodo, kaip profilius užpildyti realiomis situacijomis (subjektas, prietaisas, plėtiniai, vienetai). Diegėjams jie mažina integravimo pastangas; klinikams iliustruoja, kaip struktūrizuoti duomenys palaiko nuoseklų registravimą ir pakartotinį naudojimą priežiūros scenarijuose.

## Pacientas

| Pavyzdys | Aprašymas |
|---------|-------------|
| [**patient-example**](Patient-patient-example.html) | Pavyzdinis pacientas (PatientLt), naudojamas visuose stebėjimų ir prietaisų pavyzdžiuose. |

## Stebėjimai

| Pavyzdys | Profilis | Aprašymas |
|---------|---------|-------------|
| [**observation-blood-pressure-example**](Observation-observation-blood-pressure-example.html) | [Blood Pressure Panel](StructureDefinition-blood-pressure-panel.html) | Kraujospūdžio panelė su sistoliniu, diastoliniu ir vidutiniu arteriu spaudimu; matavimas sėdint; prietaiso nuoroda; interpretacija. |
| [**observation-heart-rate-example**](Observation-observation-heart-rate-example.html) | [Heart Rate](StructureDefinition-heart-rate.html) | Širdies ritmo stebėjimas su reikšme ir vienetu. |
| [**observation-body-height-example**](Observation-observation-body-height-example.html) | [Body Height](StructureDefinition-body-height.html) | Kūno ūgio (ilgio) matavimas. |
| [**observation-body-weight-example**](Observation-observation-body-weight-example.html) | [Body Weight](StructureDefinition-body-weight.html) | Kūno svorio matavimas. |
| [**observation-bmi-example**](Observation-observation-bmi-example.html) | [BMI](StructureDefinition-bmi.html) | Kūno masės indekso stebėjimas (pvz., apskaičiuotas iš ūgio ir svorio). |
| [**observation-head-circumference-example**](Observation-observation-head-circumference-example.html) | [Head Circumference](StructureDefinition-head-circumference.html) | Galvos apimties matavimas. |
| [**observation-waist-circumference-example**](Observation-observation-waist-circumference-example.html) | [Waist Circumference](StructureDefinition-waist-circumference.html) | Juosmens apimtis su neprivaloma interpretacija. |

## Prietaisai

| Pavyzdys | Profilis | Aprašymas |
|---------|---------|-------------|
| [**device-blood-pressure-example**](Device-device-blood-pressure-example.html) | [Device Blood Pressure](StructureDefinition-device-blood-pressure.html) | Kraujospūdžio matuoklio prietaisas, nurodytas kraujospūdžio panelės pavyzdyje. |
| [**device-body-height-example**](Device-device-body-height-example.html) | [Device Body Height](StructureDefinition-device-body-height.html) | Prietaisas, naudojamas ūgio / ilgio matavimui. |
| [**device-body-weight-example**](Device-device-body-weight-example.html) | [Device Body Weight](StructureDefinition-device-body-weight.html) | Svarstyklės ar prietaisas kūno svoriui matuoti. |
| [**device-heart-rate-example**](Device-device-heart-rate-example.html) | [Device Heart Rate](StructureDefinition-device-heart-rate.html) | Širdies ritmo matavimo prietaisas. |

## Kūno struktūra

| Pavyzdys | Profilis | Aprašymas |
|---------|---------|-------------|
| [**bodystructure-blood-pressure-example**](BodyStructure-bodystructure-blood-pressure-example.html) | [Body Structure Blood Pressure](StructureDefinition-body-structure-blood-pressure.html) | Anatominė kraujospūdžio matavimo vieta (pvz., ranka), naudojama, kai stebėjimas nurodo kūno vietą. |

Visi stebėjimų pavyzdžiai nurodo [**patient-example**](Patient-patient-example.html), kai reikalingas subjektas. Kraujospūdžio panelės pavyzdys taip pat nurodo [**device-blood-pressure-example**](Device-device-blood-pressure-example.html), parodant, kaip susieti stebėjimą su matavimo prietaisu.
