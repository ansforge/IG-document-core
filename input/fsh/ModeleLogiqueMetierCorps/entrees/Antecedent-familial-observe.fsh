Logical: AntecedentFamilialObserve
//Id: fr-antecedent-familial-observe
Title: "Antécédent familial observé"
Description: "Modèle logique métier de l'entrée Antécédent familial"
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'observation"
* code 1..1 CodeableConcept "Code de l'observation"
* descriptionNarrative 1..1 Narrative "Description narrative de l'observation"
* statut 1..1 code "Statut de l'observation"
* horodatage 0..1 time "Horodatage de l'entrée"
* resultat 1..1 CodeableConcept "Résultat de l'observation effectuée"
* interpretation 0..1 CodeableConcept "Interprétation"
* methode 0..1 CodeableConcept "	Méthode utilisée"
* site 0..1 CodeableConcept "Site"
* auteur 0..1 Auteur "Auteur de l'observation"