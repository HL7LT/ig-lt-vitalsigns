# Profiliai

Šiame puslapyje išvardyti Lietuvos gyvybinių parodymų diegimo gide apibrėžti StructureDefinition profiliai. Naudokite juos, kad užtikrintumėte nuoseklų gyvybinių parodymų ir antropometrinių duomenų atvaizdavimą sistemose.

## Kodėl šie profiliai svarbūs?

- **Diegėjams ir ataskaitoms:** Standartizuoti profiliai leidžia sąveikiai keistis duomenimis tarp prietaisų, ESI ir nacionalinių ar regioninių saugyklų. Nuosekli struktūra ir susiejimai palaiko gyvybinių parodymų duomenų agregavimą, analitiką ir pakartotinį naudojimą be papildomų schemų.
- **Klinikams:** Profiliai apibrėžia privalomus stebėjimo kodus (LOINC, SNOMED CT), vienetus (UCUM) ir neprivalomą kontekstą (kūno padėtis, prietaisas, matavimo aplinka). Tai palaiko tikslų duomenų fiksavimą, išvestinių reikšmių skaičiavimą (pvz., KMI) ir patikimą naudojimą sprendimų palaikyme ir priežiūros scenarijuose.

## Stebėjimų profiliai

| Profilis | Paskirtis |
|--------|---------|
| [**Blood Pressure Panel**](StructureDefinition-blood-pressure-panel.html) | Grupuoja sistolinį, diastolinį ir neprivalomą vidurinį arterinį spaudimą su metodo, kūno vietos ir prietaiso kontekstu. |
| [**Heart Rate**](StructureDefinition-heart-rate.html) | Pulso matavimas su neprivaloma kūno vieta ir metodu. |
| [**Body Height**](StructureDefinition-body-height.html) | Kūno ilgis / ūgis standartiniais vienetais (pvz., cm). |
| [**Body Weight**](StructureDefinition-body-weight.html) | Kūno masė su neprivaloma susijusia situacija (pvz., apsirengęs, po dializės). |
| [**BMI**](StructureDefinition-bmi.html) | Kūno masės indeksas nutukimo ir metabolinės rizikos vertinimui. |
| [**Head Circumference**](StructureDefinition-head-circumference.html) | Galvos apimtis pediatriniam ir augimo vertinimui. |
| [**Waist Circumference**](StructureDefinition-waist-circumference.html) | Juosmens apimtis metabolinei ir širdies ir kraujagyslių rizikai. |

## Prietaisų profiliai

| Profilis | Paskirtis |
|--------|---------|
| [**Device Blood Pressure**](StructureDefinition-device-blood-pressure.html) | Kraujospūdžio matuoklis; nurodykite iš stebėjimų, kai prietaisas žinomas. |
| [**Device Body Height**](StructureDefinition-device-body-height.html) | Prietaisas, naudojamas ūgio / ilgio matavimui. |
| [**Device Body Weight**](StructureDefinition-device-body-weight.html) | Svarstyklės ar prietaisas kūno svoriui matuoti. |
| [**Device Heart Rate**](StructureDefinition-device-heart-rate.html) | Širdies ritmo matavimo prietaisas. |

## Kūno struktūra

| Profilis | Paskirtis |
|--------|---------|
| [**Body Structure Blood Pressure**](StructureDefinition-body-structure-blood-pressure.html) | Anatominė vieta kraujospūdžiui matuoti (pvz., ranka); nurodykite iš stebėjimo, kai vieta modeliuojama kaip atskiras resursas. |

## Plėtiniai

Plėtiniai prideda kontekstą, kuris gali būti neapibrėžtas stebėjimo kode:

| Plėtinys | Paskirtis |
|-----------|---------|
| [**body-position**](StructureDefinition-body-position.html) | Kūno padėtis matavimo metu (pvz., sėdint, stovint). |
| [**sleep-status**](StructureDefinition-sleep-status.html) | Miego / budėjimo būsena matavimo metu. |
| [**exercise-association**](StructureDefinition-exercise-association.html) | Ryšys su fizine veikla (pvz., krūvio fazė). |
| [**measurement-setting**](StructureDefinition-measurement-setting.html) | Aplinka (pvz., ambulatorinė, namų sąlygos). |
| [**associated-situation**](StructureDefinition-associated-situation.html) | Kvalifikuojanti situacija (pvz., kūno svoris apsirengus, po dializės). |

Diegimo išsamumui ir susiejimams žr. [**Guidance**](guidance.html). Šių profilių terminologijai žr. [**Terminology**](terminology.html); pavyzdiniams egzemplioriams žr. [**Examples**](examples.html).
