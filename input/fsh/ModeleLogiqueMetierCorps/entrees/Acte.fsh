Logical: Acte
//Parent: EHDSProcedure
//Id: fr-acte
Title: "Acte"
Description: """Modèle logique métier de l'entrée Acte"""
Characteristics: #can-be-target

//identifier 
* identifiant 1..* Identifier "Identifiant de l'acte"
* description 1..1 Narrative "Description narrative"
* code 1..1 CodeableConcept "Code de l'acte"
* titre 0..1 string "Titre de l'entrée"
* statut 1..1 code "Statut de l'acte"
* date 0..1 dateTime "Date de l'acte"
* priorite 0..1 CodeableConcept "Priorité"
//anatomicLocation
* localisationAnatomique 0..1 CodeableConcept "Localisation anatomique"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)" 
* voieDAbord 0..1 CodeableConcept "Voie d’abord"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
//performer
* perfomer 0..* PersonneStructure "Intervenant"
* auteur 0..* Auteur "Auteur: Si différent de celui de l’entête"
* informateur 0..* Informateur "Informateur: Si différent de celui de l’entête"
* participant 0..* ParticipantCorps "Participant: Si différent de celui de l’entête"
//encounter
* circonstances 0..* Rencontre "Circonstances ayant décidé de l’acte. Réference interne à une Rencontre"
//reasonReference
* reason 0..* ReferenceInterne "Motif de l'acte"
//deviceUsed
* dispositifMedical  0..* DispositifMedical "Réference interne à un DispositifMedical"
// reasonReference
* difficulte 0..1 SimpleObservation "Difficulté"
// reasonReference
* scores 0..* SimpleObservation "Scores"