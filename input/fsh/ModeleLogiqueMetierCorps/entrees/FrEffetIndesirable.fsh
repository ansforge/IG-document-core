Logical: FrEffetIndesirable	
Title: "Effet indesirable"
Description: """Entrée Effet indesirable"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* typeEffetIndesirable 1..1 CodeableConcept "Code de l'entrée. Type d'effet indésirable"
* description 1..1 Narrative "Description narrative"
* statut 1..1 code "Statut de l'entrée" 
* dateDebutFin 0..1 dateTime "Date de début et de fin de l'effet indésirable"
* valeur 1..1 CodeableConcept "Valeur de l'observation"
* traitement 1..1 FrTraitement "Médicament, substance incriminée, posologie"
* probleme 0..* FrProbleme "Réaction observée"
* imputabiliteEffetIndesirable 0..1 FrImputabiliteEffetIndesirable "Imputabilité"
* graviteEffetIndesirable 1..1 FrGraviteEffetIndesirable "Gravité"
* evolutionEffetIndesirable 0..1 FrEvolutionEffetIndesirable "Evolution"