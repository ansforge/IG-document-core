Logical: AllergieOuHypersensibilite
//Id: fr-allergie-ou-hypersensibilite
///Parent: EHDSAllergyIntolerance
Title: "Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie"
Description: """Modèle logique métier de l'entrée Allergie ou hypersensibilite"""
Characteristics: #can-be-target

//identifier
* identifiant 1..* Identifier "Identifiant de l’entrée" 
//allergyDescription
* description 1..1 Narrative "Partie narrative de l’entrée"
//typeOfPropensity
* type 1..1 CodeableConcept "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
* statut  0..1 code "Statut de l’entrée"
* statut = #completed
//onsetDate
* date 1..1 dateTime "Date de début"
//* endDateLifePeriod 0..0
//* onsetLifePeriod 0..0
//agentOrAllergen
* participant 0..1 ParticipantCorps "Agent responsable"
//allergyManifestation
* probleme 0..* Probleme "Réaction observée"
  /*
  * description 0..0
  * date 0..0
  * severity 0..0
  * description
  * manifestation 0..0
  */
//status
* statutClique 0..1 CodeableConcept "Statut clinique de l'allergie"
  * ^binding.description = "HL7_allergyintolerance-clinical"
//certainty
* certitude 0..1 Certitude "Certitude"
  * ^binding.description = "HL7_condition-ver-status"
//criticality
* criticite 0..1 Criticite "Criticité"
  * ^binding.description = "HL7_allergy_intolerance_criticality"
// patient 0..0