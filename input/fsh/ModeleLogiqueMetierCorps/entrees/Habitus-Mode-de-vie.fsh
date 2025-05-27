Logical: HabitusModeDeVieEntry	
//Id: fr-habitus-Mode-de-vie
Title: "Habitus Mode de vie"
Description: """Modèle logique métier de l'entrée Habitus Mode de vie"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée. Élément observé"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* horodatage 0..1 dateTime "Horodatage de l'entrée"
* resultat 1..1 CodeableConcept "Résultat de l’observation effectuée"