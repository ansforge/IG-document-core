Logical: Rencontre
//Parent : EHDSInpatientEncounter
//Id: fr-rencontre
Title: "Rencontre"
Description: """Modèle logique métier de l'entrée Rencontre"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* typeRencontre 1..1 CodeableConcept "Type de rencontre"
* description 0..1 Narrative "Description narrative"
* dateRencontre 0..1 dateTime "Date de la rencontre"
* confirmationRencontre 0..1 CodeableConcept "Confirmation attendue" 
* executant 0..* PersonneStructure "Exécutant"
* auteur 0..* Auteur "Auteur"
* informateur 0..* Informateur "Informateur"
* participant 0..1 ParticipantCorps "Lieu d'exécution (PersonneStructure)"
* autreParticipant  0..1 ParticipantCorps "Participant (utilisable dans le corps du document uniquement)"