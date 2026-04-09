# Gairės

Šiame puslapyje aprašoma, kaip praktiškai naudoti Lietuvos gyvybinių parodymų diegimo gidą.

## Priklausomybės

Šis IG remiasi:

- **LT Base** (`lt.hl7.fhir.base`): Naudokite bazinį [Observation](https://hl7.org/fhir/R5/observation.html) profilį **ObservationLt** visiems gyvybinių parodymų ir antropometriniams stebėjimams. Stebėjimų subjektas turėtų nurodyti **PatientLt**, kai atstovaujamai Lietuvos paciento kontekstui.
- **EU Base** ir **HL7 EU Base R5**: Papildomi apribojimai ir bendra terminologija iš Europos FHIR ekosistemos.

Užtikrinkite, kad jūsų diegimas įkelia šiuos paketus, kad profilių tikrinimas ir terminologijos išskyrimas veiktų teisingai.

## Stebėjimų ir prietaisų ištekliai

- **Stebėjimų profiliai** (pvz., [Blood Pressure Panel](StructureDefinition-blood-pressure-panel.html), [Heart Rate](StructureDefinition-heart-rate.html), [Body Height](StructureDefinition-body-height.html), [Body Weight](StructureDefinition-body-weight.html), [BMI](StructureDefinition-bmi.html), [Head Circumference](StructureDefinition-head-circumference.html), [Waist Circumference](StructureDefinition-waist-circumference.html)) atvaizduoja patį klinikinį matavimą. Naudokite juos gyvybinių parodymų ar antropometrinei reikšmei, efektyviam laikui, kūno vietai, metodui ir bet kokiam kontekstui (pvz., kūno padėtis, miego būsena) registruoti.
- **Prietaisų profiliai** ([Device Blood Pressure](StructureDefinition-device-blood-pressure.html), [Device Body Height](StructureDefinition-device-body-height.html), [Device Body Weight](StructureDefinition-device-body-weight.html), [Device Heart Rate](StructureDefinition-device-heart-rate.html)) atvaizduoja matavimo prietaisą. Susiekite prietaisą su stebėjimu per `Observation.device`, kai prietaisas žinomas ir aktualus atsekamumui ar kokybei.

Naudokite stebėjimus kiekvienam matavimui; pridėkite prietaiso išteklių ir nurodykite jį iš stebėjimo, kai reikia užfiksuoti, kuris prietaisas buvo naudotas.

## Kraujospūdis

[**Blood Pressure Panel**](StructureDefinition-blood-pressure-panel.html) stebėjimas grupuoja sistolinį, diastolinį ir (neprivalomą) vidutinį arterinį spaudimą viename ištekliuje:

- **code**: Kraujospūdžio panelė (LOINC privalomas; SNOMED CT neprivalomas dvigubam kodavimui). Žr. [Blood Pressure Panel Observation](ValueSet-bp-panel-observation.html) ir [Blood Pressure Panel Observation (SNOMED)](ValueSet-bp-panel-observation-snomed.html).
- **component**: Privalomi sistoliniai ir diastoliniai komponentai; vidutinis arterinis spaudimas neprivalomas.
- Naudokite [**body-position**](StructureDefinition-body-position.html) plėtinį, kai padėtis (pvz., sėdint, stovint) nėra iš anksto apibrėžta kode.
- Naudokite [**Body Structure Blood Pressure**](StructureDefinition-body-structure-blood-pressure.html), kai reikia užregistruoti anatominę vietą (pvz., kairę ranką) kaip atskirą išteklių ir nurodyti ją iš stebėjimo.

Susiejimas su reikšmių rinkiniais [matavimo metodui](ValueSet-bp-measurement-method.html), [kūno vietai](ValueSet-bp-measurement-body-location.html) ir [manžetės dydžiui](ValueSet-bp-cuff-size.html) užtikrina nuoseklų kodavimą.

## Antropometrija: ūgis, svoris, KMI

- [**Body Height**](StructureDefinition-body-height.html) ir [**Body Weight**](StructureDefinition-body-weight.html) stebėjimai registruoja ilgį / ūgį ir masę UCUM vienetais (pvz., cm, kg). Naudokite standartinius stebėjimų kodus ir vienetus iš susietų reikšmių rinkinių ([body-length-unit](ValueSet-body-length-unit.html) ir kt.).
- [**BMI**](StructureDefinition-bmi.html) apskaičiuojamas iš ūgio ir svorio. Registruokite jį kaip atskirą stebėjimą su KMI kodu; gidas nereikalauja apskaičiuoto ryšio ištekliuje, tačiau sistemos turėtų apskaičiuoti ir saugoti KMI, kai prieinami tiek ūgis, tiek svoris.

Kūno svoris gali naudoti [**associated-situation**](StructureDefinition-associated-situation.html) plėtinį (pvz., apsirengęs, po dializės), kai aktualus.

## Terminologija

- **Stebėjimų kodai**: LOINC privalomas stebėjimų kodams. SNOMED CT neprivalomas (išplečiamas) ten, kur gidas apibrėžia dvigubo kodavimo reikšmių rinkinius (pvz., kraujospūdžio panelė, širdies ritmas, kūno ūgis, kūno svoris, KMI, galvos apimtis, juosmens apimtis).
- **Vienetai**: Naudokite UCUM kiekybinėms reikšmėms. Gidas susieja vienetus su konkrečiais reikšmių rinkiniais (pvz., body-length-unit, vital-signs-rate-unit, bp-unit, bmi-unit), kad būtų naudojami tik leidžiami vienetai.
- **Terminologijos serveris**: Kanoninė terminologija (reikšmių rinkiniai ir kodų sistemos) skelbiama adresu **https://tx.hl7.lt/fhir/** ir yra nurodyta profilio susiejimuose. Reikalui esant išskirkite kodus ir tikrinkite susiejimus pagal tą bazę.

## Plėtiniai

Naudokite šiuos plėtinius, kai stebėjimo kontekstas dar nėra išreikštas kode ar pagrindiniuose elementuose:

| Plėtinys | Naudokite, kai |
|-----------|----------|
| [**body-position**](StructureDefinition-body-position.html) | Kūno padėtis stebėjimo metu (pvz., stovint, sėdint) nėra iš anksto apibrėžta stebėjimo kode. |
| [**sleep-status**](StructureDefinition-sleep-status.html) | Paciento miego / budėjimo būsena matavimo metu yra aktuali (pvz., kraujospūdžiui). |
| [**exercise-association**](StructureDefinition-exercise-association.html) | Stebėjimas susijęs su fizine veikla (pvz., krūvio fazė). |
| [**measurement-setting**](StructureDefinition-measurement-setting.html) | Aplinka (pvz., ambulatorinė, namų sąlygos) turi būti užregistruota. |
| [**associated-situation**](StructureDefinition-associated-situation.html) | Stebėjimą kvalifikuoja situacija (pvz., kūno svoris apsirengus, po dializės). |

## Tolesni žingsniai

- Žr. [**Profiles**](profiles.html) – visą stebėjimų, prietaisų ir plėtinių profilių sąrašą.
- Naršykite [**Artifacts**](artifacts.html) – visą profilių, plėtinių, reikšmių rinkinių ir pavyzdžių sąrašą.
- Naudokite šio gido [**Terminology**](terminology.html) ir [**Examples**](examples.html) puslapius trumpai kodų ir pavyzdinių egzempliorių apžvalgai.
