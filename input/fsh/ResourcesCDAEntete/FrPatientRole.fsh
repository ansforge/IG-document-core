// StructureDefinition for PatientRole
Profile: FrPatientRole
Parent: http://hl7.org/cda/stds/core/StructureDefinition/PatientRole
Id: fr-core-patient-role
Title: "PatientRole"
Description: "Description du patient/usager"
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* realmCode 0..0  // Interdire l’élément realmCode
* typeId 0..0 // Interdire l’élément typeId
* templateId 0..0 // Interdire l’élément templateId
* classCode 0..0 // Interdire l’attribut @typeCode
* sdtcIdentifiedBy 0..0 // Interdire l’élément sdtcIdentifiedBy
* providerOrganization 0..0 // Interdire l’élément providerOrganization
* patient 1..1 // Ajouter une contrainte sur la cardinalité

* patient only fr-core-patient // patient est de type fr-core-patient