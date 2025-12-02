Logical: FRLMDoseAntigene
Id: fr-lm-dose-antigene
Title: "Modèle logique métier - FR LM Dose d'antigène"
Description: """Entrée Dose d'antigène"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de la fourniture du DM"
* doseAntigene 1..1 Quantity "Dose d'antigène"
* antigene 1..1 FRLMProduitSante "Antigène"
