ValueSet: FrValueSetCodeProduit
Id: fr-doc-vs-code-produit
Title: "Fr ValueSet Codes ATC ou CIS pour les vaccins"
Description: "Ce jeu de valeurs contient les systèmes ATC et CIS (ANSM) utilisés pour coder les vaccins."


* include codes from system https://smt.esante.gouv.fr/terminologie-atc // ATC
// CIS: termino non trouvé dans l'IG : Terminologies de Santé
/*
* include codes from system urn:oid:1.2.250.1.213.2.3.1 // CIS
*/
// CIS_Entity
* include codes from system https://smt.esante.gouv.fr/terminologie-bdpm/ // Entité de spécialité Code CIS
* ^experimental = false