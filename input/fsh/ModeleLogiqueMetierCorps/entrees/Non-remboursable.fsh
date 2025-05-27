Logical: NonRemboursable 
//Id: fr-non-remboursable
Title: "Non remboursable"
Description: """Modèle logique métier de l'entrée Non remboursable"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Type de l'entrée"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* statut = #completed
* horodatage 0..1 dateTime "Horodatage de l'entrée"
* resultat 1..1 CodeableConcept "Résultat de l'observation"
* auteur 0..* Auteur "Auteur"