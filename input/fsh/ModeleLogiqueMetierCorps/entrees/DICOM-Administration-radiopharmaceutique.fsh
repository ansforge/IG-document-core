Logical: DICOMAdministrationRadiopharmaceutique
//Id: fr-dicom-administration-radiopharmaceutique
Title: "DICOM Administration radiopharmaceutique"
Description: """Modèle logique métier de l'entrée DICOM Administration radiopharmaceutique"""
Characteristics: #can-be-target

* typeTraitement 1..1 CodeableConcept "Type de traitement"
* voieAdministration 0..1 CodeableConcept "Voie d'administration" 
  * ^binding.description = "EDQM (0.4.0.127.0.16.1.1.2.1)"
* dose 0..1 Quantity "Dose à administrer"
* rythme 0..1 Range "Rythme d'administration"
* medicament 1..1 Base "Médicament"
  * produit 1..1 Base "Produit de santé"
    * codeProduit 0..1 CodeableConcept "Code du produit radiopharmaceutique"
      * autreCodification 0..1 CodeableConcept "Autre(s) codification(s) : Valeur issue de l'ATC niveau 2"
        * ^binding.description = "ATC (2.16.840.1.113883.6.73)"  
    * nomMarque 0..1 string "Nom de marque du produit"
    * numeroLot 0..1 string "Numéro de lot"
