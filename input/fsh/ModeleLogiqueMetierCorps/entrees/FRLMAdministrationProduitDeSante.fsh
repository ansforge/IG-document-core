Logical: FRLMAdministrationProduitDeSante
Id: fr-lm-administration-produit-de-sante
// Parent: EHDSMedicationAdministration
Title: "Modèle logique métier - FR LM Administration produit de sante"
Description: """Entrée Administration produit de sante"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* description 0..1 Narrative "Partie narrative de l'entrée"
* statut 1..1 code "Statut de l'entrée"
* voieAdministration 0..1 CodeableConcept "Voie d'administration" 
  * ^binding.description = "EDQM (0.4.0.127.0.16.1.1.2.1)"
* dose 0..1 Quantity "Dose à administrer"
* rythme 0..1 Range "Rythme d'administration"
* medicament 1..1 Base "Médicament"
  * produit 1..1 Base "Produit de santé"
    * codeProduit 0..1 CodeableConcept "Code du produit"
      * ^binding.description = "CIP (1.2.250.1.213.2.3.2)"
      * ^binding.description = "UCD (1.2.250.1.213.2.61) + code ATC"
      * autreCodification 0..1 CodeableConcept "Autre(s) codification(s)"
        * ^binding.description = "ATC (2.16.840.1.113883.6.73) or CIS (1.2.250.1.213.2.3.1) or MV (1.2.250.1.213.2.59)"  
    * nomMarque 0..1 string "Nom de marque du produit"
    * numeroLot 0..1 string "Numéro de lot"