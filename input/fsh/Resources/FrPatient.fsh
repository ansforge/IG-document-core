// StructureDefinition for Patient
Profile: FrPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Patient
Id: fr-core-patient
Title: "patient"
Description: "Personne physique"
* ^status = #draft
* classCode 0..0 // Interdire l’attribut @typeCode
* determinerCode 0..0  // Interdire l’attribut @determinerCode
* name 1..1 // Rendre le name obligatoire
* administrativeGenderCode 1..1 // Rendre le administrativeGenderCode obligatoire
* birthTime 1..1 // Rendre le birthTime obligatoire
* maritalStatusCode 0..0 // Interdire l'élément maritalStatusCode
* religiousAffiliationCode 0..0 // Interdire l'élément religiousAffiliationCode
* raceCode 0..0 // Interdire l'élément raceCode
* sdtcRaceCode 0..0 // Interdire l'élément sdtcRaceCode
* ethnicGroupCode 0..0 // Interdire l'élément ethnicGroupCode
* sdtcEthnicGroupCode 0..0 // Interdire l'élément sdtcEthnicGroupCode
* languageCommunication 0..0 // Interdire l'élément languageCommunication
