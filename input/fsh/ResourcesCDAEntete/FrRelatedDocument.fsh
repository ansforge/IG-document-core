// StructureDefinition for RelatedDocument
Profile: FrRelatedDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RelatedDocument
Id: fr-core-related-document
Title: "relatedDocument"
Description: "RelatedDocument référence un document existant (à remplacer ou transformé)." 
* ^status = #draft
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode ^short = "'RPLC' pour remplacement :
Seul le remplacement au sens annulation et remplacement 
du document référencé par la version courante du 
document est autorisé.

'XFRM' pour transformation :
La relation est portée par le document CDA transformé (et 
pas par le document de référence). 
"
* parentDocument ^short = "Document de référence."
* parentDocument only fr-core-parent-document