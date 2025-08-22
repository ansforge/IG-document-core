Profile: FrObservationBatterieExamenBiologieMedicale
Parent: Observation
Id: fr-batterie-examen-biologie-medicale
Title: "Observation - Fr Observation Batterie Examen Biologie Medicale"
Description: "Cette observation permet de décrire des examens de biologie médicale comprenant un ou plusieurs éléments porteurs de résultats et d'éventuels commentaires interprétant cet ensemble de résultats."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Code de la batterie d'examen"
* code MS
* code only CodeableConceptIPS
* code.text ^short = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"

* code.coding.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* code.coding.extension.valueCoding ^short = "Code d'identification d'attente national ou code de portée locale"

// Si specimen provenant du corps du patient ou extérieur au patient :
* subject  only Reference(FrPatientINSDocument or FrPatientDocument)
* specimen only Reference(FrSpecimen)

* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer contains
    laboratoireExecutant 0..1 and
    auteur 0..1 and
    participant 0..1

// Laboratoire sous-traitant
* performer[laboratoireExecutant] only Reference(FrOrganizationDocument)

* performer[laboratoireExecutant].extension contains $event-performerFunction named performerFunction 0..*
* performer[laboratoireExecutant].extension[performerFunction].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

// Auteur
* performer[auteur] only Reference(FrPractitionerRoleDocument)
* performer[auteur].extension contains $event-performerFunction named performerFunction 0..*
* performer[auteur].extension[performerFunction].valueCodeableConcept.coding.code = #AUT


// Participant
* performer[participant] only Reference(FrPractitionerRoleDocument)

* performer[participant].extension contains $event-performerFunction named performerFunction 0..*
* performer[participant].extension[performerFunction].valueCodeableConcept from FrValueSetPerformerFunctionParticipant
// Image illustrative
* derivedFrom only Reference(FrMediaImageIllustrative)

// Résultat d'examens de biologie éléments clinique pertinent
* hasMember only Reference(FrObservationResultatsExamensDeBiologieElementCliniquePertinent)