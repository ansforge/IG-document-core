Profile: FrAllergyIntolerance
Parent: AllergyIntolerance
Id: fr-allergie-intolerance
Title: "AllergyIntolerance - Fr Allergie et intolérance"
Description: "FrAllergyIntolerance est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Identifiant"

* code 1..1 MS
* code ^short = "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-indesirable-previsible-cisis

* onset[x] MS
* onset[x] ^short = "Date d'identification d'allergie ou d'intolérance"
* onsetPeriod MS
* onsetPeriod ^short = "Dates de début et de fin"
* onsetPeriod.start 1..1
* onsetPeriod.end 0..1

* criticality MS
* criticality ^short = "Criticité"

* verificationStatus MS
* verificationStatus ^short = "Certitude"
* verificationStatus from FrValueSetAllergieIntoleranceVerificationStatus
//* verificationStatus from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis

* clinicalStatus MS
* clinicalStatus ^short = "Statut clinique"

* patient MS
* patient ^short = "Patient concerné par l'allergie ou intolérance"
* patient only Reference(FrPatientINSDocument or FrPatientDocument)

* reaction MS
* reaction ^short = "Réaction observée"

* reaction.substance MS
* reaction.substance ^short = """Agent responsable de l'allergie :
pour les médicaments :
Pour les médicaments : code CIP ou UCD
Pour les substances : code SMS
Pour les substances non présentes dans SMS (par exemple feuille de millepertuis ou extrait d’organe) : texte libre
pour les aliments : CIM-11 (2.16.840.1.113883.6.347) / Chapitre X Codes d’extensions / Substances / Allergènes ou Substances, essentiellement non médicinales
pour les agents environnementaux ou physiques : CIM-11 (2.16.840.1.113883.6.347) / Chapitre X Codes d’extensions / Substances / Allergènes ou Substances, essentiellement non médicinales
pour les allergènes pouvant induire une contre-indication à la vaccination : à partir du jeu de valeurs jdv-allergie-vaccin-cisis (1.2.250.1.213.1.1.5.100)"""

* reaction.manifestation MS
* reaction.manifestation ^short = "Symptômes/signes cliniques associés à l’événement"

* reaction.severity MS
* reaction.severity ^short = "Sévérité"

* reaction.note 0..1 MS
* reaction.note ^short = "Commentaire"

* reaction.onset MS
* reaction.onset ^short = "Dates de début et de fin du problème"