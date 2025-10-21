Logical: FRLMEvenementIndesirablePendantHospitalisation
Id: fr-lm-evenement-indesirable-pendant-hospitalisation
Title: "Modèle logique métier - FR LM Evènements indésirables pendant l'hospitalisation"
Description: """Entrée Evènements indésirables pendant l'hospitalisation"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l’observation"
* code 1..1 CodeableConcept "Code de l’observation"
* description 1..1 Narrative "Description narrative de l’observation"
* statut 1..1 code "Statut de l’observation. Fixé à 'completed'"
* date 1..1 dateTime "Date de l’observation"
* valeur 1..1 string "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation."
* auteur 0..1 FRLMAuteur "Auteur"
