// StructureDefinition for PatientRole
Profile: FrPatientRole
Parent: http://hl7.org/cda/stds/core/StructureDefinition/PatientRole
Id: fr-core-patient-role
<<<<<<< HEAD
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
=======
Title: "patientRole"
Description: "L'élément de l'en-tête du CDA patientRole permet de décrire le patient/usager."
* ^status = #draft
* nullFlavor 0..0
* realmCode 0..0
* typeId 0..0
* templateId 0..0
* classCode 0..0
* sdtcIdentifiedBy 0..0
* providerOrganization 0..0
* id ^short = "Identifiant du patient."
* id.nullFlavor 0..0
* id.root 1..1
* id.root ^short = "Valeur de l’OID de l’autorité d’affectation de l’identifiant du patient/usager."
* id.extension 0..1
* id.extension ^short = "Valeur de l’identifiant du patient/usager."
* id.assigningAuthorityName	0..0
* id.displayable 0..0
* addr ^short = "Adresse géopostale."
* telecom ^short = "Coordonnées télécom."
* patient 1..1
* patient only fr-core-patient // patient est de type fr-core-patient
* patient ^short = "Personne physique."
>>>>>>> main
