Logical: FRLMTransfusionDeProduitsSanguins
Id: fr-lm-transfusion-de-produits-sanguins
Title: "Modèle logique métier - FR LM Transfusion de produits sanguins"
Description: """Transfusion de produits sanguins"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* description 1..1 Narrative "Description narrative de l'entrée"
* statut 1..1 code "Statut de l'entrée. Fixé à la valeur 'completed'"
* date 1..1 dateTime "Date de l'entrée"
* transfusionProduitSanguin 1..1 boolean "Transfusion de produit sanguin"
* auteur 0..1 FRLMAuteur "Auteur"
