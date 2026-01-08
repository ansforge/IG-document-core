Logical: FRLMModaliteSortie
Id: fr-lm-modalite-sortie
Title: "Modèle logique métier - FR LM Modalité de sortie"
Description: """Modalité de sortie"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l’observation"
* code 1..1 CodeableConcept "Code de l’observation"
* description 1..1 Narrative "Description narrative de l’observation"
* statut 1..1 code "Statut de l’observation. Fixé à la valeur 'completed'"
* date 1..1 dateTime "Date de l’observation"
* modaliteSortie 1..1 CodeableConcept "Modalité d'entrée"
  * ^binding.description = "jdv-modalite-sortie-CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
* auteur 0..1 FRLMAuteur "Auteur"
