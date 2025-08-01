Logical: EffetIndesirable	
//Id: fr-effet-indesirable
Title: "Effet indesirable"
Description: """Modèle logique métier de l'entrée Effet indesirable"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* typeEffetIndesirable 1..1 CodeableConcept "Code de l'entrée. Type d'effet indésirable"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* dateDebutFin 0..1 dateTime "Date de début et de fin de l'effet indésirable"
* valeur 1..1 CodeableConcept "Valeur de l'observation"
* traitement 1..1 Traitement "Médicament, substance incriminée, posologie"
* probleme 0..* Probleme "Réaction observée"
* imputabiliteEffetIndesirable 0..1 ImputabiliteEffetIndesirable "Imputabilité"
* graviteEffetIndesirable 1..1 GraviteEffetIndesirable "Gravité"
* evolutionEffetIndesirable 0..1 EvolutionEffetIndesirable "Evolution"