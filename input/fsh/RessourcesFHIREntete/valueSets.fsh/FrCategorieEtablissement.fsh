ValueSet: FRCoreValueSetCategorieEtablissement
Id: fr-core-vs-categorie-etablissement
Title: "FRCoreValueSetCategorieEtablissement"
Description: "ValueSet : CategorieEtablissement"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension.valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"

* include codes from system https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement

* ^experimental = false
