Logical: FRLMEffetIndesirable	
Id: fr-lm-effet-indesirable
Title: "Modèle logique métier - FR LM Effet indesirable"
Description: """Entrée Effet indesirable"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* typeEffetIndesirable 1..1 CodeableConcept "Code de l'entrée. Type d'effet indésirable"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* dateDebutFin 0..1 dateTime "Date de début et de fin de l'effet indésirable"
* valeur 1..1 CodeableConcept "Valeur de l'observation"
* traitement 1..1 FRLMTraitement "Médicament, substance incriminée, posologie"
* probleme 0..* FRLMProbleme "Réaction observée"
* imputabiliteEffetIndesirable 0..1 FRLMImputabiliteEffetIndesirable "Imputabilité"
* graviteEffetIndesirable 1..1 FRLMGraviteEffetIndesirable "Gravité"
* evolutionEffetIndesirable 0..1 FRLMEvolutionEffetIndesirable "Evolution"
