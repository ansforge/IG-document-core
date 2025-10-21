Logical: FRLMRencontre
Id: fr-lm-rencontre
//Parent : EHDSInpatientEncounter
Title: "Modèle logique métier - FR LM Rencontre"
Description: """Entrée Rencontre"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* typeRencontre 1..1 CodeableConcept "Type de rencontre"
* description 0..1 Narrative "Description narrative"
* dateRencontre 0..1 dateTime "Date de la rencontre"
* confirmationRencontre 0..1 CodeableConcept "Confirmation attendue" 
* executant 0..* FRLMPersonneStructure "Exécutant"
* auteur 0..* FRLMAuteur "Auteur"
* informateur 0..* FRLMInformateur "Informateur"
* participant 0..1 FRLMParticipantCorps "Lieu d'exécution (PersonneStructure)"
* autreParticipant  0..1 FRLMParticipantCorps "Participant (utilisable dans le corps du document uniquement)"