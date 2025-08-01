Logical: Naissance
//Id: fr-naissance
Title: "Naissance"
Description: """Modèle logique métier de l'entrée Naissance"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept	"Code de l'entrée"
* statut 1..1 code	"Statut de l'entrée"
* periode 1..1 dateTime "Période des observations"
* resultat 1..1 CodeableConcept "Résultat de l’observation effectuée"
* identificationNouveauNe 1..1 Sujet "Identification du nouveau né"
* observationNaissance 1..* ObservationGrossesse "Observation sur la naissance"