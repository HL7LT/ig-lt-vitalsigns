# Terminologijos apžvalga

Šiame puslapyje apibendriama Lietuvos gyvybinių parodymų diegimo gide naudojama terminologija (reikšmių rinkiniai ir kodų sistemos). Išsamias apibrėžtis ir susiejimus žr. [**Artifacts**](artifacts.html).

**Kodėl tai svarbu:** Nuoseklūs kodai ir vienetai leidžia sąveikiai keistis duomenimis ir teikti ataskaitas (pvz., registrams ir analitikai). Klinikams standartizuoti susiejimai palaiko teisingą duomenų fiksavimą, automatizuotus skaičiavimus (pvz., KMI) ir patikimą naudojimą sprendimų palaikyme.

## Stebėjimų kodai

Stebėjimų profiliai susieti su LOINC ir, kur taikytina, SNOMED CT:

- **Kraujospūdis**: Panelės ir komponento kodai (sistolinis, diastolinis, vidutinis) — [bp-panel-observation](ValueSet-bp-panel-observation.html), [bp-panel-observation-snomed](ValueSet-bp-panel-observation-snomed.html), [bp-systolic-observation](ValueSet-bp-systolic-observation.html), [bp-diastolic-observation](ValueSet-bp-diastolic-observation.html), [bp-mean-observation](ValueSet-bp-mean-observation.html).
- **Širdies ritmas**: [heart-rate-observation](ValueSet-heart-rate-observation.html), [heart-rate-observation-snomed](ValueSet-heart-rate-observation-snomed.html).
- **Kūno ūgis / ilgis**: [body-height-observation](ValueSet-body-height-observation.html), [body-height-observation-snomed](ValueSet-body-height-observation-snomed.html).
- **Kūno svoris**: [body-weight-observation](ValueSet-body-weight-observation.html), [body-weight-observation-snomed](ValueSet-body-weight-observation-snomed.html).
- **KMI**: [bmi-observation](ValueSet-bmi-observation.html), [bmi-observation-snomed](ValueSet-bmi-observation-snomed.html).
- **Galvos apimtis**: [head-circumference-observation](ValueSet-head-circumference-observation.html), [head-circumference-observation-snomed](ValueSet-head-circumference-observation-snomed.html).
- **Juosmens apimtis**: [waist-circumference-observation-loinc](ValueSet-waist-circumference-observation-loinc.html), [waist-circumference-observation-snomed](ValueSet-waist-circumference-observation-snomed.html).

LOINC privalomas stebėjimų kodams; SNOMED CT neprivalomas (išplečiamas) dvigubam kodavimui, kur apibrėžtas SNOMED reikšmių rinkinys.

## Vienetai

- **Kūno ilgis / ūgis**: pvz., cm, m — [body-length-unit](ValueSet-body-length-unit.html).
- **Kūno svoris**: pvz., kg (per kūno svorio stebėjimo susiejimus).
- **Kraujospūdis**: mmHg — [bp-unit](ValueSet-bp-unit.html).
- **Širdies ritmas**: dūžiai per minutę — [vital-signs-rate-unit](ValueSet-vital-signs-rate-unit.html).
- **KMI**: kg/m² — [bmi-unit](ValueSet-bmi-unit.html).

Visos kiekybinės reikšmės naudoja UCUM; gidas riboja leidžiamus vienetus per išvardytus reikšmių rinkinius.

## Kraujospūdžio kontekstas

- **Matavimo metodas**: [bp-measurement-method](ValueSet-bp-measurement-method.html) — kaip buvo išmatuotas kraujospūdis (pvz., auskuliacija, oscilometrija).
- **Kūno vieta**: [bp-measurement-body-location](ValueSet-bp-measurement-body-location.html) — matavimo vieta (pvz., ranka, riešas).
- **Manžetės dydis**: [bp-cuff-size](ValueSet-bp-cuff-size.html) — manžetės dydis, kai aktualus.
- **Kūno padėtis**: [vital-signs-body-position](ValueSet-vital-signs-body-position.html) (sėdint, stovint ir pan.).

## Širdies ritmo kontekstas

- **Matavimo metodas**: [heart-rate-measurement-method](ValueSet-heart-rate-measurement-method.html).
- **Kūno vieta**: [heart-rate-measurement-body-location](ValueSet-heart-rate-measurement-body-location.html) (pvz., riešas, pirštas).
- **Krūvio fazė**: [exertion-phase](ValueSet-exertion-phase.html) — poilsis, fizinio krūvio metu, atsigavimas ir kt.

## Prietaisų tipai

Prietaisų tipų reikšmių rinkiniai naudojami prietaisų profiliuose:

- [device-type-blood-pressure](ValueSet-device-type-blood-pressure.html) — kraujospūdžio matuokliai.
- [device-type-height-length](ValueSet-device-type-height-length.html) — ūgio / ilgio matavimas.
- [device-type-weight](ValueSet-device-type-weight.html) — svarstyklės.
- [device-type-heart-rate](ValueSet-device-type-heart-rate.html) — širdies ritmo matavimas.

## Kitas kontekstas

- **Kūno padėtis**: [vital-signs-body-position](ValueSet-vital-signs-body-position.html) — naudojamas [body-position](StructureDefinition-body-position.html) plėtinyje.
- **Miego būsena**: [vital-signs-sleep-status](ValueSet-vital-signs-sleep-status.html) — naudojamas [sleep-status](StructureDefinition-sleep-status.html) plėtinyje.
- **Matavimo aplinka**: [measurement-environment](ValueSet-measurement-environment.html) — pvz., namų sąlygos, ambulatorinė.
- **Kūno svorio susijusi situacija**: [body-weight-associated-situation](ValueSet-body-weight-associated-situation.html) — pvz., apsirengęs, po dializės.
- **Rezultato interpretacija**: [numeric-result-interpretation](ValueSet-numeric-result-interpretation.html), [waist-circumference-result-interpretation](ValueSet-waist-circumference-result-interpretation.html).

## Kodų sistema

- [**SNOMED Vital Signs Extension**](CodeSystem-snomed-vitalsigns-extension.html): Vietinė kodų sistema, išplečianti SNOMED CT gyvybinių parodymų konceptais, naudojamais šiame gide.

## Terminologijos išskyrimas

Kanoninė terminologija skelbiama adresu **https://tx.hl7.lt/fhir/**. Naudokite šį bazinį URL reikšmių rinkinių ir kodų sistemų ištekliams išskirti bei egzempliorių kodams tikrinti.
