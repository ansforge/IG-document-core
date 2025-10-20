Logical: FRLMAllergieOuHypersensibilite
Id: fr-lm-allergie-ou-hypersensibilite
///Parent: EHDSAllergyIntolerance
Title: "Modèle logique métier - FR LM Allergie ou Hypersensibilité"
Description: """Entrée Allergie ou hypersensibilite"""
Characteristics: #can-be-target

//EHDSAllergyIntolerance.identifier
* identifiant 1..* Identifier "Identifiant de l’entrée" 
//EHDSAllergyIntolerance.allergyDescription
* description 1..1 Narrative "Partie narrative de l’entrée"
//EHDSAllergyIntolerance.typeOfPropensity
* type 1..1 CodeableConcept "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
* statut  0..1 code "Statut de l’entrée"
* statut = #completed
//EHDSAllergyIntolerance.onsetDate
* date 1..1 dateTime "Date de début"
//* endDateLifePeriod 0..0
//* onsetLifePeriod 0..0
//EHDSAllergyIntolerance.agentOrAllergen
* participant 0..1 FRLMParticipantCorps "Agent responsable"
//EHDSAllergyIntolerance.allergyManifestation
* probleme 0..* FRLMProbleme "Réaction observée"
  /*
  * description 0..0
  * date 0..0
  * severity 0..0
  * description
  * manifestation 0..0
  */
//EHDSAllergyIntolerance.status
* statutClique 0..1 CodeableConcept "Statut clinique de l'allergie"
  * ^binding.description = "HL7_allergyintolerance-clinical"
//EHDSAllergyIntolerance.certainty
* certitude 0..1 FRLMCertitude "Certitude"
  * ^binding.description = "HL7_condition-ver-status"
//EHDSAllergyIntolerance.criticality
* criticite 0..1 FRLMCriticite "Criticité"
  * ^binding.description = "HL7_allergy_intolerance_criticality"
// patient 0..0
