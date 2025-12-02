Logical: FRLMProduitSante
Id: fr-lm-produit-sante
//Parent : EHDSMedication
Title: "Modèle logique métier - FR LM Produit de santé"
Description: """Produit de santé"""
Characteristics: #can-be-target

* medicament 1..1 Base "Médicament"
  * codeProduit 1..1 CodeableConcept "Code du produit de santé"
    * autreCodification 0..* CodeableConcept "Produit de santé / Autre codification" 
  * nomProduit 1..1 Identifier "Nom du produit (contenant aussi le dosage et la forme galénique)"
  * formeGalenique 0..1 CodeableConcept "Forme galénique du produit de santé"
  * numeroLot  0..1 string "Numéro de lot "
  * dateExpiration 0..1 dateTime "Date d'expiration du produit"
  * conditionnement  0..1 Base "Conditionnement"
  * equivalentGenerique 0..* Base "Code de regroupement ATC"
  * substanceActive  0..* Base "Substance active"
