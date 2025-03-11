// StructureDefinition for RelatedPersonDocument
Profile: FrRelatedPersonDocument
Parent: RelatedPerson
Id: fr-related-person-document
Title: "Fr RelatedPerson Document"
Description: "Ce profil représente l'informateur non professionnel."

* relationship 0..1
* relationship ^short = "Lien de la personne avec le patient/usager"
* relationship from $JDV_J11_RelationPatient_CISIS (required)
* address ^short = "Adresse"
* telecom ^short = "Coordonnées télécom"
* name 1..1
* name ^short = "Nom de la personne"
* name only fr-human-name-document