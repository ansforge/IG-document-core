/* Equivalents EHDSImmunization précisés en commentaires pour chaque donnée métier */
Logical: FRLMVaccination
Id: fr-lm-vaccination
//Parent : EHDSImmunization
Title: "Modèle logique métier - FR LM Vaccination"
Description: """Entrée Vaccination"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l’entrée"
//Absent du modèle EHDS / Pas d’équivalent FHIR
* code 1..1 CodeableConcept "Type d'acte : vaccination"
// text
* description 1..1 Narrative "Partie narrative de l’entrée" 
* statut 1..1 code "Statut de l’entrée" 
* dateVaccination 1..1 dateTime "Période de vaccination souhaitable" 
//Absent du modèle EHDS / équivalent FHIR : Immunization.route
* voieAadministration 0..1 CodeableConcept "Voie d’administration" 
//Absent du modèle EHDS / équivalent FHIR : Immunization.site
* regionAnatomique 0..* CodeableConcept "Région anatomique d'administration" 
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
//Absent du modèle EHDS / équivalent FHIR : Immunization.doseQuantity  
* doseVaccination 0..1 Quantity "Dose administrée" 
// administeredProduct	0..1	EHDSMedication
* vaccin 1..1 FRLMProduitSante "Vaccin" 
* prescription 0..1 FRLMPrescriptionEntree "Référence de la prescription"
// doseNumber 
* rangVaccination 0..1 FRLMRangVaccination "Rang de la vaccination" 
// Immunization.reaction.detail
* reaction 0..* FRLMProbleme "Réaction observée suite au vaccin"
* commentaire 0..1 FRLMCommentaireER "Commentaire" 
* DoseAntigene 0..* FRLMDoseAntigene "Dose d'antigène"
