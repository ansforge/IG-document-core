// StructureDefinition for FrMedicationDispense
// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FrMedicationDispense
Parent: MedicationDispense
Id: fr-medication-dispense
Title: "MedicationDispense - Fr Dispense Item"
Description: "FrMedicationDispenseDocument permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
  * ^short = "Identifiant"
* type 1..1 MS
  * ^short = "Complétude de la dispensation" 
  * coding from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis
* quantity 1..1 MS
  * ^short = "Quantité : Unité issue de EDQM Packaging / classe CON (Récipient)"
  * unit from FrValueSetEDQM

* medication[x] MS
* medication[x] only CodeableConcept or Reference(FrMedication)
  * ^short = "Médicament délivré"
* authorizingPrescription 0..1 MS 
  * ^short = "Référence de la prescription"
* authorizingPrescription only Reference (FrMedicationRequest)
* supportingInformation 0..1 MS 
  * ^short = "Posologie"
* supportingInformation only Reference (FrMedicationAdministration)
* dosageInstruction.patientInstruction MS 
  * ^short = "Instructions au patient"
* dosageInstruction.additionalInstruction MS 
  * ^short = "Instruction au patient sous forme codée"
* dosageInstruction.text MS 
  * ^short = "Instructions au dispensateur"
* substitution MS
  * ^short = "Acte de substitution"
  * type 1..1 MS
  * type = #G "Substitution autorisée par un produit générique"