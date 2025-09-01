ValueSet: FrValueSetVaccineTranslation
Id: fr-doc-vs-vaccine-translation
Title: "Fr ValueSet Vaccine-Translation pour les autres codifications"
Description: "Systèmes autorisés pour les autres codifications (équivalent CDA translation)."

//* include codes from system urn:oid:1.2.250.1.213.2.3.2       // CIP : Code Identifiant de Présentation
//CIP_Entity : Entité de présentation (code CIP)
* include codes from system https://smt.esante.gouv.fr/terminologie-bdpm/
* include codes from system urn:oid:1.2.250.1.213.2.61        // UCD : Unités Communes de Dispensation
* include codes from system https://smt.esante.gouv.fr/terminologie-atc  // ATC : Classification anatomique, thérapeutique et chimique
* include codes from system urn:oid:1.2.250.1.213.2.59        // MV : Médicament Virtuel

* ^experimental = false