Profile: FrObservationBatterieExamenBiologieMedicale
Parent: Observation
Id: fr-batterie-examen-biologie-medicale
Title: "Observation - Fr Batterie examen biologie médicale"
Description: "Cette observation permet de décrire des examens de biologie médicale comprenant un ou plusieurs éléments porteurs de résultats et d'éventuels commentaires interprétant cet ensemble de résultats."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Code de la batterie d'examen"
* code MS
* code.text ^short = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"

* code.extension contains FrTranslationExtension named translation 0..1
* code.extension[translation] ^short = "Code d'identification d'attente national ou code de portée locale"

// Si specimen provenant du corps du patient ou extérieur au patient :
* subject MS
* subject ^short = "Sujet conerné"
* subject  only Reference(FrPatientINSDocument or FrPatientDocument)

* specimen MS
* specimen ^short = "Prélèvement"
* specimen only Reference(FrSpecimen)

* performer MS
* performer.extension contains
    FrActorExtension named laboratoireExecutant 0..1 and
    FrActorExtension named auteur 0..1 and
    FrActorExtension named participant 0..1

// auteur
* performer.extension[auteur] MS
* performer.extension[auteur] ^short = "Auteur"
* performer.extension[auteur].extension[type].valueCode = #AUT (exactly)
* performer.extension[auteur].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

// Laboratoire sous-traitant
* performer.extension[laboratoireExecutant] MS
* performer.extension[laboratoireExecutant] ^short = "Laboratoire exécutant"
* performer.extension[laboratoireExecutant].extension[type].valueCode = #PRF (exactly)
* performer.extension[laboratoireExecutant].extension[reference].valueReference only Reference(FrOrganizationDocument)
* performer.extension[laboratoireExecutant].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

// Participant
* performer.extension[participant] MS
* performer.extension[participant] ^short = "Participant"
* performer.extension[participant].extension[type].valueCode = #PART (exactly)
* performer.extension[participant].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)
* performer.extension[participant].extension[typeCode].valueCodeableConcept from FrValueSetPerformerFunctionParticipant

// Image illustrative
* derivedFrom MS
* derivedFrom ^short = "Image illustrative"
* derivedFrom only Reference(FrMediaImageIllustrative)

// Résultat d'examens de biologie éléments clinique pertinent
* hasMember MS
* hasMember ^short = "Résultat d'examens de biologie éléments clinique pertinent"
* hasMember only Reference(FrObservationResultatsExamensDeBiologieElementCliniquePertinent)