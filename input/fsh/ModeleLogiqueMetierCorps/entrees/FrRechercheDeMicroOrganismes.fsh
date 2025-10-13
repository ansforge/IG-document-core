Logical: FrRechercheDeMicroOrganismes
Title: "Recherche de micro organismes"
Description: """Entrée Recherche de micro organismes"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l’observation"
* code 1..1 CodeableConcept "Code de l’observation"
* description 1..1 Narrative "Description narrative de l’observation"
* statut 1..1 code "Statut de l’observation. Fixé à la valeur 'completed'"
* date 1..1 dateTime "Date de l’observation"
* valeur 1..1 boolean "Valeur de l’observation"
* auteur 0..1 Auteur "Auteur"