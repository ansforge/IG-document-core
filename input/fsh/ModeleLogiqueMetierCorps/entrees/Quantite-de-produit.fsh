Logical: QuantiteProduit 
//Id: fr-quantite-de-produit
Title: "Quantité de produit"
Description: """Modèle logique métier de l'entrée Quantité de produit"""
Characteristics: #can-be-target

* independant 1..1 boolean "Booléen. Valeur fixée à 'false'"
* quantiteProduit 1..1 Quantity "Quantité de produit"