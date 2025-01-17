// StructureDefinition for Patient
Profile: FrPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Patient
Id: fr-core-patient
Title: "patient"
Description: "Personne physique"
* ^status = #draft
* nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans  patient
* typeId.nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdit l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdit l’attribut @displayable dans typeId
* determinerCode 0..0  // Interdire l’attribut @determinerCode
* name 1..1 // Rendre le name obligatoire
* name.nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans name
* administrativeGenderCode 1..1 // Rendre le administrativeGenderCode obligatoire
* administrativeGenderCode from https://mos.esante.gouv.fr/NOS/JDV_J143-AdministrativeGender-CISIS/FHIR/JDV-J143-AdministrativeGender-CISIS
* birthTime 1..1 // Rendre le birthTime obligatoire
* maritalStatusCode 0..0 // Interdire l'élément maritalStatusCode
* religiousAffiliationCode 0..0 // Interdire l'élément religiousAffiliationCode
* raceCode 0..0 // Interdire l'élément raceCode
* sdtcRaceCode 0..0 // Interdire l'élément sdtcRaceCode
* ethnicGroupCode 0..0 // Interdire l'élément ethnicGroupCode
* sdtcEthnicGroupCode 0..0 // Interdire l'élément sdtcEthnicGroupCode
* languageCommunication 0..0 // Interdire l'élément languageCommunication
