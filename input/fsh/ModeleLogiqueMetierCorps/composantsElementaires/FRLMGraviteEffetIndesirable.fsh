Logical: FRLMGraviteEffetIndesirable
Id: fr-lm-gravite-effet-indesirable	
Title: "Modèle logique métier - FR LM Gravite effet indesirable"
Description: """Gravite effet indesirable"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* description 1..1 Narrative "Partie narrative de l'entrée"
* statut 1..1 code "Statut de l'entrée" 
* niveauGravite 1..1 CodeableConcept "Niveau de gravité"
