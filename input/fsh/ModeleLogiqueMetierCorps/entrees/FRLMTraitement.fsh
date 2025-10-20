Logical: FRLMTraitement
Id: fr-lm-traitement
//Parent: EHDSMedicationAdministration	
Title: "Modèle logique métier - FR LM Traitement"
Description: """Entrée Traitement"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée. L'entrée Traitement doit être identifiée de manière unique"
// Absent du modèle EHDS / pas d'équivalent FHIR
* code 0..1 CodeableConcept "Acte ou situation"
// ou text ?
* note 1..1 Narrative "Partie narrative de l’entrée"
* status 1..1 code "Statut de l’entrée"
// choix obligatoire dans le modèle EHDS et en FHIR
* occurancePeriod 0..1 dateTime "Durée du traitement"
// choix obligatoire dans le modèle EHDS et en FHIR
* occuranceDateTim 0..1 Period "Fréquence d'administration"
* dosage 0..1 Base "Dosage"
  * route  0..1 CodeableConcept "Voie d'administration" 
  * site 0..* CodeableConcept "Région anatomique d'administration"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)" 
  * dose 0..1 Quantity "Dose à administrer"
  * rate[x] 0..1 Ratio or Quantity  "Rythme d'administration"

* medicament 1..1 FRLMProduitSante "Médicament"
* reason 0..* FRLMReferenceInterne "Motif du traitement"
// MedicationAdministration.request
* prescription 0..* FRLMPrescriptionEntree "Prescription"
// MedicationAdministration.supportingInformation
* subordinateTreatment 0..* FRLMTraitementSubordonne "Traitement subordonné"
//MedicationAdministration.supportingInformation
* instructionsPatient 0..1 FRLMInstructionsPatient "Instruction au patient"
//MedicationAdministration.supportingInformation ou MedicationAdministration.instantiates?
* precondition 0..1 Base "Précondition"
