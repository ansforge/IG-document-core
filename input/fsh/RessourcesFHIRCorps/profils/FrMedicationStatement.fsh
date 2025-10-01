// StructureDefinition for FrMedicationStatement
Profile: FrMedicationStatement
Parent: MedicationStatement
Id: fr-medication-statement
Title: "MedicationStatement - Fr Medication"
Description: "
 - FrMedicationStatement permet de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement a déjà été administré ou si information rapporté par le patient ou si aucun traitement."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..* MS
  * ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
* basedOn only Reference(FrMedicationRequest)
* partOf only Reference(FrMedicationAdministration)
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

* dosage MS
  // Dosages progressifs, fractionnés 
  * sequence MS
  // Dosages conditionnels
  * asNeeded[x] MS 
  * extension contains FrAdministrationFrequency named frequenceAdministration 0..1
  * route MS
  * route from FrValueSetEDQM
  * route ^short = "Voie d'administration"
  * route ^binding.description = "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)" 
  * site MS
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  
  //* dose MS
   // * ^short = "Dose à administrer"

* dosage.doseAndRate.rate[x] MS
* dosage.doseAndRate.rateRatio MS
  * ^short = "doseMaximale"
* dosage.doseAndRate.rateQuantity MS
  * ^short = "rythme d'administration"
//Instructions au patient
// si codé : 
* dosage.additionalInstruction MS 
  * ^short = "Instructions au patient"
  // si non codé : 
* dosage.additionalInstruction.text MS 
  * ^short = "Instruction au patient"
// Médicament
* medication[x] MS
* medication[x] only CodeableConcept or Reference(FrMedication or FrMedicationsCombinaison)

// Prescription : Utilisation de l'extension FrPrescription ou l'élément request qui fait référence (MedicationRequest) ?
* extension contains FrPrescriptionExtension named Prescription 0..* MS 

// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(FrCondition or Observation)

// Ou bien utilisation de l'extnexion FHIR note ??
* extension contains FrPreconditionExtension named precondition 0..1