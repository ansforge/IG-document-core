/* Equivalents EHDSObservation précisés en commentaires pour chaque donnée métier */
Logical: FRLMObservation
Id: fr-lm-observation
//Parent: EHDSObservation
Title: "Modèle logique métier - FR LM Observation"
Description: """Entrée observation"""
Characteristics: #can-be-target

// utilisé dans EHDSObservation.header
* observationIdentifiant 1..1 Identifier "Identifiant de l'observation"
// observationCode
* observationCode 1..1 CodeableConcept "Code de l'observation"
// n'est pas utilisé EHDSObservation
* observationDescription 1..1 Narrative "Description narrative de l'observation"
<<<<<<< HEAD
// performer
* observationStatut 1..1 code "Statut de l'observation"
=======
// status
* observationStatut 1..1 code "Statut de l'observation"
// observationDate[x]
>>>>>>> 5e0db1b74db1f7070b04b37fcf6def2b1b99bfe7
* observationDate 0..1 dateTime "Date de l'observation"
* observationNombreRenouvellements 0..1 Range "Nombre de renouvellements possibles" 
//observationResult : 0..1
* observationResultat 0..* CodeableConcept "Valeur de l'observation"
// observationInterpretation
* observationInterpretation 0..1 CodeableConcept "Interprétation"
// observationMethod
* observationMethode 0..1 CodeableConcept "Méthode"
// anatomicLocation
* observationLocalisationAnatomique 0..1 CodeableConcept "Localisation anatomique"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)" 
//performer
<<<<<<< HEAD
* observationAuteur 0..1 FRLMAuteur "Auteur de l'observation"
=======
* observationAuteur 0..1 FRLMAuteur "Auteur de l'observation"
>>>>>>> 5e0db1b74db1f7070b04b37fcf6def2b1b99bfe7
