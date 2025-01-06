// StructureDefinition for representedOrganization
Profile: FrRepresentedOrganization
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organization
Id: fr-core-represented-organization
Title: "representedOrganization"
Description: "Structure pour le compte de laquelle intervient le professionnel."
* ^status = #draft
* classCode 0..0 
* determinerCode 0..0
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* name 0..1
* standardIndustryClassCode from https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS