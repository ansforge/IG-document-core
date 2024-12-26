// StructureDefinition for PatientRole
Profile: FrPatientRole
Parent: http://hl7.org/cda/stds/core/StructureDefinition/PatientRole
Id: fr-core-patientRole
Title: "PatientRole"
Description: "Description du patient/usager "
* ^status = #draft
* nullFlavor 0..0 // Interdit l’attribut @nullFlavor
* realmCode 0..0  // Interdit l’élément realmCode
* typeId 0..0 // Interdit l’élément typeId
* templateId 0..0 // Interdit l’élément templateId
* classCode 0..0 // Interdit l’attribut @typeCode
* sdtcIdentifiedBy 0..0 // Interdit l’élément sdtcIdentifiedBy
* providerOrganization 0..0 // Interdit l’élément providerOrganization
* patient 1..1 // Ajouter une contrainte sur la cardinalité