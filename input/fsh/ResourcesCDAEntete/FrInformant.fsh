// StructureDefinition for Informant
Profile: FrInformant
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Informant
Id: fr-core-informant
Title: "informant"
Description: "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* contextControlCode 0..0
* assignedEntity only fr-core-assigned-entity // assignedEntity est de type fr-core-assigned-entity
* assignedEntity ^short = "Professionnel / Structure / Patient/usager ayant fourni des informations relatives au document."
* relatedEntity ^short = "Informateur non professionnel ayant fourni des informations relatives au document. 
Ou : Personne de confiance désignée par le patient/usager.
Ou : Personne à prévenir en cas d’urgence. 
Ou : Aidant du patient/usager. ou : Personne aidée"
* relatedEntity only fr-core-related-entity // relatedEntity est de type fr-core-related-entity