Logical: FRLMEvolutionEffetIndesirable	
Id: fr-lm-evolution-effet-indesirable
Title: "Modèle logique métier - FR LM Evolution effet indesirable"
Description: """Evolution effet indesirable"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* description 1..1 Narrative "Partie narrative de l'entrée"
* statut 1..1 code "Statut de l'entrée" 
* evolution 1..1 CodeableConcept "Evolution"
