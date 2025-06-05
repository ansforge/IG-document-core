Logical: DICOMQuantitySubordonnee
//Id: fr-dicom-quantity-subordonnee
Title: "DICOM Quantity Subordonnee"
Description: """Modèle logique métier de l'entrée DICOM Quantity Subordonnee"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'observation"
* code 1..1 CodeableConcept "Code de l'observation"
* description 0..1 Narrative "Partie narrative de l'observation"
* statut 1..1 code "status de l'observation"
* date 0..1 dateTime "Date de l'observation"
* valeur 1..1 Quantity "Valeur de l'observation"
* interpretation 0..1 CodeableConcept "Interprétation code de l'observation"
* methode 0..1 CodeableConcept "Méthode code de l'observation"
* lateralite 0..1 CodeableConcept "Latéralité et topographie" 
  * ^binding.description = "jdv-localisation-anatomique-cisis (1.2.250.1.213.1.1.5.694)"
  * topographique 0..1 CodeableConcept "Précision topographique"
    * nom 1..1 CodeableConcept "name"
    * valeur 1..1 CodeableConcept "Valeur de la topographie"
      * ^binding.description = "jdv-modificateur-topographique-cisis (1.2.250.1.213.1.1.5.688)"