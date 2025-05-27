Logical: EvolutionEffetIndesirable	
//Id: fr-evolution-effet-indesirable
Title: "Evolution effet indesirable"
Description: """Modèle logique métier de l'entrée Evolution effet indesirable"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* description 1..1 Narrative "Partie narrative de l'entrée"
* statut 1..1 code "Statut de l'entrée" 
* evolution 1..1 CodeableConcept "Evolution"