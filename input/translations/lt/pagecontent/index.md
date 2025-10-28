# Lietuvos bazės diegimo vadovas

## Įvadas ir Tikslas

Šis Įgyvendinimo Gidas (IG) nurodo, kaip nuosekliai atvaizduoti ir keistis pagrindiniais, objektyviais paciento klinikiniais duomenimis – gyvybiniais parodymais – naudojant Fast Healthcare Interoperability Resources (FHIR) standartą. Tikslus ir standartizuotas šių bazinių matavimų fiksavimas yra kritinis komponentas paciento būklės vertinimui, skubios pagalbos teikimui, pokyčių stebėjimui ir tiksliai diagnozei nustatyti visose sveikatos priežiūros grandyse.

## Apimtis ir Pagrindiniai Stebėjimai

Šis gidas pateikia struktūrizuotus FHIR profilius ir gaires pagrindiniams gyvybiniams parodymams ir susijusiems antropometriniams duomenims, įskaitant:

- **Arterinis Kraujospūdis (AKS)**: Sistolinis ir diastolinis matavimas.
- **Širdies Susitraukimų Dažnis (ŠSD)**: Pulso matavimas.
- **Kūno Temperatūra**: Matavimas Celsijaus laipsniais.
- **Kvėpavimo Dažnis**: Įkvėpimų skaičius per minutę.
- **Antropometriniai duomenys**: Ūgis (Kūno ilgis) ir Svoris (Kūno masė), kurie naudojami kūno masės indekso (KMI) skaičiavimui.
- **Skausmo Įvertinimas**: Skausmo intensyvumo vertinimas naudojant patvirtintas skales.

## Kodėl verta naudoti šį gidą?

Priimdami šiuos profilius, diegėjai gali užtikrinti vieningą ir patikimą požiūrį į klinikinės informacijos valdymą:

- **Sąveika**: Palengvinti nepertraukiamą, semantinį gyvybinių parodymų duomenų mainus tarp matavimo prietaisų, Elektroninių sveikatos įrašų (ESI) sistemų, intensyvios terapijos skyrių monitorių ir telemedicinos sprendimų.
- **Klinikinė Kokybė**: Užtikrinti duomenų patikimumą ir tikslumą per privalomus matavimo vienetus (UCUM) ir standartizuotus kodus (LOINC, SNOMED CT), kurie yra būtini automatizuotam KMI ir kitiems gyvybinės svarbos rodiklių skaičiavimams.
- **Saugumas ir Sprendimų Palaikymas**: Sudaryti sąlygas automatinėms pavojaus signalų (alarmo) taisyklėms ir klinikinio sprendimo palaikymo sistemoms, kurios greitai atpažįsta kritinius paciento būklės pokyčius, remiantis standartizuotais duomenimis.

Naršykite toliau pateiktas skiltis, kad pasiektumėte profilius, terminologijos susiejimus ir išsamius pavyzdžius, reikalingus gyvybinių parodymų standartui įdiegti.


## IP teiginiai
<!-- { // dar nepalaiko i18n IG leidėjuje: % include ip-statements.xhtml %} -->

## Prisidėjusieji

| Vardas | Pareigos | Organizacija |
| ------------------------------------------------------------ | --------------------------------------------- | ---------------------------------------------------- |
| [Igor Bossenko](https://about.askigor.eu)     | Pagrindinis autorius               | [HELEX](https://helex.health) |
| [Peeter Ross](https://www.linkedin.com/in/peeter-ross-5378b74/) | Reviewer           | [TalTech](https://taltech.ee)               |
| Martynas Bieliauskas                           | Reviewer                 | [LMB](https://lmb.lt)               |
