// StructureDefinition for RelatedPersonDocument
Profile: FrRelatedPersonDocument
Parent: FRCoreRelatedPersonProfile
Id: fr-related-person-document
Title: "Fr RelatedPerson Document"
Description: "Ce profil représente l'informateur non professionnel."

* relationship[Role].coding.code = #CON
* relationship[Role].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
* relationship[Role].coding.display = "Informateur"
* relationship[RelationType] 0..1
* relationship[RelationType] ^short = "Lien de la personne avec le patient/usager"
* relationship[RelationType] from $JDV_J11_RelationPatient_CISIS (required)
* name 1..1
* name ^short = "Nom de la personne"
* name only fr-human-name-document
  * family 1..1
  * given 0..1