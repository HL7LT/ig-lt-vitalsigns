# Translation

This Implementation Guide supports multi-lingual publication. The default language is English; Lithuanian (lt) translations are provided where available.

## How translations are managed

- **Source content**: English content is maintained in `input/pagecontent/` (e.g. index.md, guidance.md).
- **Translations**: Lithuanian translations live under `input/translations/lt/pagecontent/` with the same file names. The IG publisher uses the `translation-sources` and `i18n-lang` settings from the IG configuration to include them in the build.
- **Scope**: Currently, narrative pages (index, changelog, and this translation info) are translated. Artifact names and definitions follow the FHIR resource language; human-readable titles and descriptions in profiles and ValueSets may be translated in future.

If you want to contribute or correct translations, use the standard translation workflow for this IG (e.g. PO files under `input/translations/lt/` where applicable).
