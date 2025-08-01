Logical: ObservationGrossesse
//Id: fr-observation-sur-la-grossesse
Title: "Observation sur la grossesse"
Description: """Modèle logique métier de l'entrée Observation sur la grossesse"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'observation"
* code 1..1 CodeableConcept	"Type d'observation"
* description 1..1 Narrative  "Description narrative de l'observation"
* statut 1..1 code	"Statut de l'observation"
* date 1..1 dateTime "Date de l'observation"
* resultat 1..1 CodeableConcept "Résultat de l’observation effectuée"