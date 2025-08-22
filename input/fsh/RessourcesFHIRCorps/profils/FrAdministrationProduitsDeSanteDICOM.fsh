Profile: FrAdministrationProduitsDeSanteDICOM
Parent: MedicationAdministration
Id: Fr-administration-produits-de-sante-DICOM
Title: "MedicationAdministration - Fr Administration Produits De Santé DICOM"
Description: "FrAdministrationProduitsDeSanteDICOM permet d'enregistrer l’administration de produits (hors radiopharmaceutiques) : produit administré,
dose administrée, voie d’administration, numéro de lot, autres informations liées à l’administration d’un produit"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* status MS
* status = #completed
* dosage MS
* dosage.route MS 
* dosage.route ^short = "Voie d'administration : Terminologie utilisée : EDQM - Standard terms / classe ROA (Voie d'administration)"
* dosage.dose MS
* dosage.dose ^short = "Dose à administrer"
* dosage.rateQuantity ^short = "Rythme d'administration"

* medicationReference MS
* medicationReference ^short = "Médicament"
* medicationReference only Reference (Medication) //ou bien medicationCodeableConcept