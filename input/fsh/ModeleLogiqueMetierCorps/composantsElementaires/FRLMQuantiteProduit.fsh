Logical: FRLMQuantiteProduit 
Id: fr-lm-quantite-produit
Title: "Modèle logique métier - FR LM Quantité de produit"
Description: """Quantité de produit"""
Characteristics: #can-be-target

* independant 1..1 boolean "Booléen. Valeur fixée à 'false'"
* quantiteProduit 1..1 Quantity "Quantité de produit"
