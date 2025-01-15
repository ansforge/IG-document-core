// StructureDefinition for Order
Profile: FrOrder
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Order
Id: fr-core-order
Title: "order"
Description: "order représente la prescription à l’origine de l’acte dont résulte le document." 
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* classCode 0..0 // Interdire l’attribut classCode
* moodCode 0..0 // Interdire l’attribut moodCode
* id ^short = "Identifiant de la prescription, obligatoire pour :
- un CR de biologie pour porter l’Order Placer Number (numéro de la prescription attribué par le prescripteur)
- un CR d’imagerie pour porter l'Order Placer Number (numéro de la demande attribué par le demandeur), avec l'attribut @root contenant l'autorité d'affectation et l'attribut @extension contenant l'identifiant géré par cette autorité."
* id.root 1..1
* id.root ^short = "OID"
* id.extension 0..1
* id.extension ^short = "Obligatoire pour un CR d'imagerie"
* id.nullFlavor 0..0
* id.assigningAuthorityName	0..0
* id.displayable 0..0
* code 0..0
* priorityCode 0..0