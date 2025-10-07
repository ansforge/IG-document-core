// StructureDefinition for FrMedicationAdministration
Profile: FrMedicationAdministration
Parent: MedicationAdministration
Id: fr-medication-administration
Title: "MedicationAdministration - Fr Medication"
Description: "
 - FrMedicationAdministrationDocument permert de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement est en attente d’administration c’est-à dire qu’il a été prescrit."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..* MS
  * ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
* category MS
  * ^short = "Acte ou situation"
* status 1..1 MS
  * ^short = "Statut"
* status = #completed
* effective[x] only Period
* effectivePeriod MS
  * ^short = "Durée du traitement"
// R5 : occurenceTiming
// Fréquence d'administration

* dosage
  * extension contains FrMedicationAdministrationFrequency named frequenceAdministration 0..1
  // Dosages progressifs ou fractionnés
  * extension contains FrMedicationAdministrationSequenceExtension named sequence 0..*
  // Dosages conditionnels
  //* extension contains http://hl7.org/fhir/StructureDefinition/note named dosagesConditionnels 0..* 
  * route MS
  * route from FrValueSetEDQM
  * route ^short = "Voie d'administration"
  * route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)" 
  * site MS
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * dose MS
    * ^short = "Dose à administrer"

* dosage.rate[x] MS
* dosage.rateRatio MS
  * ^short = "doseMaximale"
* dosage.rateQuantity MS
  * ^short = "rythme d'administration"

// Médicament
* medication[x] MS
* medication[x] only CodeableConcept or Reference(FrMedication or FrMedicationsCombinaison)

// Prescription : Utilisation de l'extension FrPrescription ou l'élément request qui fait référence (MedicationRequest) ?
* extension contains FrPrescriptionExtension named Prescription 0..* MS 

// Instruction au patient
* dosage.text MS
  * ^short = "Instruction au patient"

// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(FrCondition or Observation)

// Précondition ou bien utiliser l'extnexion FHIR "note" ??
* extension contains FrPreconditionExtension named precondition 0..1
  * ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."
