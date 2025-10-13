Logical: FrAllergieOuHypersensibilite
///Parent: EHDSAllergyIntolerance
Title: "Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie"
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
* participant 0..1 FrParticipantCorps "Agent responsable"
//EHDSAllergyIntolerance.allergyManifestation
* probleme 0..* FrProbleme "Réaction observée"
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
* certitude 0..1 FrCertitude "Certitude"
  * ^binding.description = "HL7_condition-ver-status"
//EHDSAllergyIntolerance.criticality
* criticite 0..1 FrCriticite "Criticité"
  * ^binding.description = "HL7_allergy_intolerance_criticality"
// patient 0..0