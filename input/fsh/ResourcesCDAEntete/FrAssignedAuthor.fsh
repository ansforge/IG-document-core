// StructureDefinition for Author
Profile: FrAssignedAuthor
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedAuthor
Id: fr-core-assigned-author
Title: "assignedAuthor"
Description: "assignedAuthor contient les éléments permettant de décrire l’auteur."
* ^status = #draft
* nullFlavor 0..0 // interdire le nullFlavor dans assignedAuthor
* typeId.nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdit l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdit l’attribut @displayable dans typeId
* classCode 0..0
* sdtcIdentifiedBy 0..0
* id.nullFlavor 0..0 // interdire le nullFlavor dans assignedAuthor.id
* id.root 1..1
* id.root ^short = "- Pour un professionnel : '1.2.250.1.71.4.2.1'
- Pour le patient/usager : OID de l'autorité d'affectation de l'INS
- Pour un système de structure : '1.2.250.1.71.4.2.1' 
- Pour un SNR : OID de l'éditeur 
- Pour le DP : '1.2.250.1.71.4.2.1'"
* id.extension 1..1
* id.extension ^short = "Valeur de l’identifiant"
* id.assigningAuthorityName	0..0
* id.displayable 0..0
* code from https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS (required)
* assignedPerson only fr-core-person
* assignedAuthoringDevice only fr-core-authoring-device
* representedOrganization only fr-core-represented-organization