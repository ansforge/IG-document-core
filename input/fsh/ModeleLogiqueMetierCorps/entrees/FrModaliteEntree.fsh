Logical: FrModaliteEntree
Title: "Modalité d'entrée"
Description: """Entrée Modalité d'entrée"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l’observation"
* code 1..1 CodeableConcept "Code de l’observation"
* description 1..1 Narrative "Description narrative de l’observation"
* statut 1..1 code "Statut de l’observation. Fixé à la valeur 'completed'"
* date 1..1 dateTime "Date de l’observation"
* modaliteEntree 1..1 CodeableConcept "Modalité d'entrée"
  * ^binding.description = "jdv-modalite-entree-cisis (1.2.250.1.213.1.1.5.73)"
* auteur 0..* Auteur "Auteur"