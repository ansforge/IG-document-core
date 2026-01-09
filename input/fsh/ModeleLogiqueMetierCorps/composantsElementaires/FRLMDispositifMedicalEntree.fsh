/* Equivalents EHDSDeviceUse précisés en commentaires pour chaque donnée métier */
Logical: FRLMDispositifMedicalEntree
Id: fr-lm-dispositif-medical-entree
//Parent: EHDSDeviceUse
Title: "Modèle logique métier - FR LM Dispositif médical"
Description: """Dispositif médical"""
Characteristics: #can-be-target

//identifier
* identifiant 1..* Identifier "Identifiant de l'observation"
// EHDSDeviceUse.text
* description 1..1 Narrative "Partie narrative de l'observation"
* statut 1..1 code "Statut de l'observation"
// EHDSDeviceUse.implantDate 
* date 1..1 dateTime "Date d'utilisation ou de présence chez le patient"
// Absent dans le modèle EHDSDeviceUse et pas d'équivalent en FHIR --> Peut être inclus comme extension ?
* renouvellement 0..1 Range "Nombre de renouvellement(s) possible(s)"
// Absent dans le modèle EHDSDeviceUse et pas d'équivalent en FHIR --> Peut être inclus comme extension ?
* quantite 0..1 Quantity "Quantité"
// EHDSDeviceUse.endDate 
* duree 0..1 dateTime "Durée d'utilisation"
// performer : EHDSDeviceUse.source 0..1 
* performer 0..* FRLMPersonneStructure "Dispensateur"
// Absent dans le modèle EHDSDeviceUse et pas d'équivalent en FHIR --> Peut être inclus comme extension ?
* auteur 0..* FRLMAuteur "Prescripteur"
// en FHIR et EHDS : 1..1
* dispositifMedical 1..* FRLMDispositifMedical "Dispositif médical"
// créer un modèle métier pour l'entrée En rapport avec une Affection Longue Durée (ALD)
// en FHIR : DeviceUseStatement.reasonReference
* affectionLongueDuree 0..1 Base  "Entrée En rapport avec une Affection Longue Durée (ALD)"
// créer un modèle métier pour l'entrée En rapport avec accident travail
// en FHIR : DeviceUseStatement.reasonReference
* accidentTravail 0..1 Base  "Entrée En rapport avec accident travail"
// créer un modèle métier pour l'entrée En rapport avec la prevention
// en FHIR : DeviceUseStatement.reasonReference
* prevention 0..1 Base  "Entrée En rapport avec la prevention"
// créer un modèle métier pour l'entrée Non remboursable
// en FHIR : DeviceUseStatement.reasonReference
* nonRemboursable 0..1 Base  "Entrée Non remboursable"
