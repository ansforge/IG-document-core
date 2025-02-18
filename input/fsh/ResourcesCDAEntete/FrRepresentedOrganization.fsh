// StructureDefinition for representedOrganization
Profile: FrRepresentedOrganization
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organization
Id: fr-core-represented-organization
Title: "representedOrganization"
<<<<<<< HEAD
Description: "Structure pour le compte de laquelle intervient le professionnel."
* ^status = #draft
* classCode 0..0 
* determinerCode 0..0
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
//* name 0..1
* standardIndustryClassCode from https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS
=======
Description: "L'élément de l'en-tête du CDA representedOrganization permet de représenter la structure pour le compte de laquelle intervient le professionnel."
* ^status = #draft
* classCode 0..0 
* determinerCode 0..0
* typeId.nullFlavor 0..0 
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* id ^short = "Identifiant de la structure : 
- Si le responsable est un professionnel : Identifiant de la structure pour le compte de laquelle intervient le professionnel. 
- Si le responsable est un SNR : SIREN de l'éditeur. 
- Si le responsable est le DP : Identifiant du DP."
* name ^short = "Nom de la structure : 
- Si le responsable est un professionnel : Nom de la structure. 
- Si le responsable est un SNR : Nom de l'éditeur. 
- Si le responsable est le DP : Dossier Pharmaceutique."
* telecom ^short = "Coordonnées télécom de la structure :  
- Si le responsable est un professionnel : Coordonnées télécom de la structure. 
- Si le responsable est un SNR : non renseigné. 
- Si le responsable est le DP : non renseigné."
* addr ^short = "Adresse géopostale de la structure : 
- Si le responsable est un professionnel : Adresse géopostale de la structure. 
- Si le responsable est un SNR : non renseigné. 
- Si le responsable est le DP : non renseigné."
* standardIndustryClassCode ^short = "Cadre d'exercice du professionnel : 
- Si le responsable est un professionnel : Cadre d'exercice. 
- Si le responsable est un SNR : non renseigné. 
- Si le responsable est le DP : non renseigné."
* standardIndustryClassCode.nullFlavor 0..0
* standardIndustryClassCode.code from https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS
>>>>>>> main
