Logical: TransfertDuPatient
//Id: fr-transfert-du-patient
Title: "Transfert du patient"
Description: """Modèle logique métier de l'entrée Transfert du patient"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l’entrée"
* code 1..1 CodeableConcept "Code de l’entrée"
* description 1..1 Narrative "Texte décrivant le transfert"
* statut 1..1 code "Statut du transfert"
* dateTransfert 0..1 dateTime "Date du transfert"
* destination 0..1 ParticipantCorps "Destination"