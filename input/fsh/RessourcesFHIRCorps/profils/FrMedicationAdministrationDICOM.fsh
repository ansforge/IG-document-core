Profile: FrMedicationAdministrationDICOM
Parent: MedicationAdministration
Id: fr-medication-administration-dicom
Title: "MedicationAdministration - Fr Procedural Medication DICOM"
Description: "FrMedicationAdministrationDICOM permet d'enregistrer l’administration de produits (hors radiopharmaceutiques) : produit administré,
dose administrée, voie d’administration, numéro de lot, autres informations liées à l’administration d’un produit"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* status MS
* status = #completed
* dosage MS
* dosage ^short = "Dosage"
* dosage.route MS 
* dosage.route ^short = "Voie d'administration : Terminologie utilisée : EDQM - Standard terms / classe ROA (Voie d'administration)"
* dosage.dose MS
* dosage.dose ^short = "Dose à administrer"
* dosage.rateQuantity MS
* dosage.rateQuantity ^short = "Rythme d'administration"

* medication[x] MS
* medication[x] ^short = "Produit de santé administré"
* medicationReference MS
* medicationReference ^short = "Référence au produit de santé administré"
* medicationReference only Reference (FrMedication) //ou bien medicationCodeableConcept