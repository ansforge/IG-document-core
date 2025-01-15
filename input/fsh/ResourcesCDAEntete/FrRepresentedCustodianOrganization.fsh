// StructureDefinition for representedCustodianOrganization
Profile: FrRepresentedCustodianOrganization
Parent: http://hl7.org/cda/stds/core/StructureDefinition/CustodianOrganization
Id: fr-core-represented-custodian-organization
Title: "representedCustodianOrganization"
Description: "representedCustodianOrganization contient les éléments caractérisant la structure conservant le document, à savoir l'identifiant, le nom, les adresses géopostales et de télécommunication."
* ^status = #draft
* classCode 0..0 // Interdire l’attribut @classCode
* determinerCode 0..0 // Interdire l’attribut @determinerCode
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* id 1..1 // modifier la cardinalité de l'élément id 1..* ==> 1..1
* sdtcTelecom 0..0 // Interdire l'élément sdtcTelecom