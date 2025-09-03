Profile: FrAdministrationProduitsDeSanteDICOM
Parent: MedicationAdministration
Id: fr-administration-produits-de-sante-dicom
Title: "MedicationAdministration - Fr Administration produits de santé DICOM"
Description: "FrAdministrationProduitsDeSanteDICOM permet d'enregistrer l’administration de produits (hors radiopharmaceutiques) : produit administré,
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
* medicationReference only Reference (FrMedicationDocument) //ou bien medicationCodeableConcept