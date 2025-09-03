// StructureDefinition for FrMedicationAdministrationDocument
Profile: FrMedicationAdministrationDocument
Parent: MedicationAdministration
Id: fr-medication-administration-document
Title: "MedicationAdministration - Fr Traitement"
Description: "
 - L'entrée 'Traitement' est une entrée de type 'substanceAdministration' décrivant les modalités d'administration d'un médicament au patient.
 - Elle permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement est en attente d’administration (c’est-à dire qu’il a été prescrit) : 
  • @moodCode='INT'"

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..* MS
  * ^short = "Identifiant de l'entrée. L'entrée Traitement doit être identifiée de manière unique."
* category MS
  * ^short = "Acte ou situation"
* category from FrValueSetMedicationAdministrationCategory (preferred)
* text 1..1 MS
  * ^short = "Partie narrative de l’entrée"
* status 1..1 MS
  * ^short = "Statut de l’entrée"
* status = #completed
* effective[x] only Period
* effectivePeriod MS
  * ^short = "Durée du traitement"
// R5 : occurenceTiming
// Fréquence d'administration

* dosage
  * extension contains FrAdministrationFrequency named frequenceAdministration 0..1
  // Dosages progressifs ou fractionnés
  * extension contains FrSequenceExtension named sequence 0..*
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
* medication[x] only CodeableConcept or Reference(FrMedicationDocument or FrMedicationsCombinaisonDocument)

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