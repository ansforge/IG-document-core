Logical: DoseAntigene
//Id: fr-dose-antigene
Title: "Dose d'antigène"
Description: """Modèle logique métier de l'entrée Dose d'antigène"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de la fourniture du DM"
* doseAntigene 1..1 Quantity "Dose d'antigène"
* antigene 1..1 ProduitSante "Antigène"