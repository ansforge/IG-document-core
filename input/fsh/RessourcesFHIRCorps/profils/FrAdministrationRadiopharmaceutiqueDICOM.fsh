Profile: FrAdministrationRadiopharmaceutiqueDICOM
Parent: MedicationAdministration
Id: fr-administration-radiopharmaceutique-dicom
Title: "MedicationAdministration - Fr Administration radiopharmaceutique DICOM"
Description: "FrAdministrationRadiopharmaceutiqueDICOM permet d'enregistrer l’administration de produits radiopharmaceutiques :
produit administré, dose administrée, voie d’administration, numéro de lot, autres informations liées à l’administration d’un produit"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category ^short = "Type de traitement"
* category.coding.code = #440252007
* category.coding.system = $SCT
* category.coding.display = "administration de produits radiopharmaceutiques"
* dosage MS
* dosage ^short = "Dosage"
* dosage.route MS 
* dosage.route ^short = "Voie d'administration : Terminologie utilisée : EDQM - Standard terms / classe ROA (Voie d'administration)"
* dosage.dose MS
* dosage.dose ^short = "Dose à administrer"
* dosage.rateQuantity MS
* dosage.rateQuantity ^short = "Rythme d'administration"

* medication[x] MS
* medication[x] ^short = "Produit radiopharmaceutique"
* medicationReference ^short = "Référence au produit radiopharmaceutique"
* medicationReference only Reference (FrMedicationDocument) //ou bien medicationCodeableConcept