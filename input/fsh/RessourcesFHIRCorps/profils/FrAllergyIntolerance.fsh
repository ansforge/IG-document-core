Profile: FrAllergyIntolerance
Parent: AllergyIntolerance
Id: fr-allergie-intolerance
Title: "AllergyIntolerance - Fr AllergyIntolerance"
Description: "FrAllergyIntolerance est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Identifiant"

* code 1..1 MS
* code ^short = "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-indesirable-previsible-cisis

* onsetPeriod MS
* onsetPeriod ^short = "Dates de début et de fin"
* onsetPeriod.start 1..1
* onsetPeriod.end 0..1

* criticality MS
* criticality ^short = "Criticité"

* verificationStatus MS
* verificationStatus ^short = "Certitude"
* verificationStatus from FrValueSetConditionVerificationStatus (required)
//* verificationStatus from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis

* clinicalStatus MS
* clinicalStatus ^short = "Statut clinique"

* reaction MS
* reaction ^short = "Réaction observée"

* reaction.manifestation ^short = "Symptômes/signes cliniques associés à l’événement"

* reaction.severity MS
* reaction.severity ^short = "Sévérité"

* reaction.note 0..1 MS
* reaction.note ^short = "Commentaire"

* reaction.onset MS
* reaction.onset ^short = "Dates de début et de fin du problème"