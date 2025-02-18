// StructureDefinition for AssignedCustodian
Profile: FrAssignedCustodian
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedCustodian
Id: fr-core-assigned-custodian
Title: "assignedCustodian"
<<<<<<< HEAD
Description: "assignedCustodian, contient l’élément representedCustodianOrganization caractérisant la structure conservant le document."
* ^status = #draft
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* classCode 0..0 // Interdire l’attribut @classCode
=======
Description: "L'élément de l'en-tête du CDA assignedCustodian contient l’élément representedCustodianOrganization caractérisant la structure conservant le document."
* ^status = #draft
* typeId.nullFlavor 0..0 
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0 
* classCode 0..0
* representedCustodianOrganization ^short = "Structure"
>>>>>>> main
* representedCustodianOrganization only fr-core-represented-custodian-organization