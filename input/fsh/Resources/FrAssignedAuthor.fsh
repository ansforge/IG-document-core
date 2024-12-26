// StructureDefinition for Author
Profile: FrAssignedAuthor
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedAuthor
Id: fr-core-assignedAuthor
Title: "assignedAuthor"
Description: "assignedAuthor contient les éléments permettant de décrire l’auteur."
* ^status = #draft

// interdire le nullFlavor dans assignedAuthor.id
* id.nullFlavor 0..0
/* Invariant: invariant-nullFlavor-forbidden-assignedAuthorId
Description: "nullFlavor must not be present in assignedAuthor.id."
Severity: error
Expression: "id.extension.where(url = 'http://hl7.org/fhir/StructureDefinition/nullFlavor').exists().not()"
 */
