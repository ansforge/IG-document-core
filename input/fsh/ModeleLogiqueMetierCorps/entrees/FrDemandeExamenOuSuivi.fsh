Logical: FrDemandeExamenOuSuivi
//Parent: EHDSServiceRequest
Title: "Demande d'examen ou de suivi / Objectif à atteindre"
Description: """Entrée Demande d'examen ou de suivi / Objectif à atteindre"""
Characteristics: #can-be-target

//serviceIdentifier
* identifiant 1..1 Identifier "Identifiant de l'entrée"
//serviceCode
* typeDemande 1..1 CodeableConcept "Type de la demande"
//serviceText
* description 1..1 string "Description narrative de l'entrée"
//serviceStatut
* statutDemande 1..1 code "Statut de la demande"
//occurance[x] dateTime
* date 1..1 dateTime "Date prévisionnelle de l'examen, du suivi, de l'objectif"
// Absent du modèle EHDS / Pas d’équivalent FHIR
* resultat 0..1 CodeableConcept "Résultat de la demande"
// Absent du modèle EHDS / Pas d’équivalent FHIR
* interpretation 0..1 CodeableConcept "Interprétation"
// Absent du modèle EHDS / Pas d’équivalent FHIR
* methode 0..1 CodeableConcept "Méthode"
//anatomicLocation
* cible 0..1 CodeableConcept "Cible"
// ServiceRequest.requester
* auteur 0..1 Auteur "Auteur de la demande"