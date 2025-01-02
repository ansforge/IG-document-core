// StructureDefinition for Author
Profile: FrAssignedAuthor
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedAuthor
Id: fr-core-assigned-author
Title: "assignedAuthor"
Description: "assignedAuthor contient les éléments permettant de décrire l’auteur."
* ^status = #draft

// interdire le nullFlavor dans assignedAuthor
* nullFlavor 0..0 


* typeId.nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdit l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdit l’attribut @displayable dans typeId
* classCode 0..0
* sdtcIdentifiedBy 0..0

// interdire le nullFlavor dans assignedAuthor.id
* id.nullFlavor 0..0
/* Invariant: invariant-nullFlavor-forbidden-assignedAuthorId
Description: "nullFlavor must not be present in assignedAuthor.id."
Severity: error
Expression: "id.extension.where(url = 'http://hl7.org/fhir/StructureDefinition/nullFlavor').exists().not()"
 */


* code from https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS/ (required)