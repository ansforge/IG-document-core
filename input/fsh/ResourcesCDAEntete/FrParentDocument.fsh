// StructureDefinition for parentDocument
Profile: FrParentDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ParentDocument
Id: fr-core-parent-document
Title: "parentDocument"
Description: "Document de référence." 
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* id 1..1
* id ^short = "Identifiant unique du document de référence"
* id.assigningAuthorityName	0..0
* id.displayable 0..0
* id.root 1..1
* id.root ^short = "Valeur de l'OID du document de référence"
* id.extension ^short = "Chaine de caractères du document de référence"
