Profile: FrObservationIsolatMicrobiologique
Parent: Observation
Id: fr-observation-isolat-microbiologique
Title: "FR - Isolat microbiologique"
Description: "Profil Observation pour représenter un isolat microbiologique, dérivé de FrSimpleObservation."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

//------------------------------------
// Code de l’isolat (SNOMED CT, NCBI)
//------------------------------------
* code MS
* code ^short = "Code de l’isolat (SNOMED CT ou NCBI)"

//------------------------------------
// Sujet & Specimen
//------------------------------------
* subject 1..1
* subject only Reference(FrPatientINSDocument)

* specimen 1..1
* specimen only Reference(FrSpecimen)

//------------------------------------
// Performer (slicing sur rôles)
//------------------------------------
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer contains
    laboratoireExecutant 0..1 and
    auteur 0..1 and
    validateurResultat 0..1 and
    responsableExamen 0..1 and
    dispositifAuto 0..*

// Laboratoire exécutant
* performer[laboratoireExecutant] only Reference(FrOrganizationDocument)
* performer[laboratoireExecutant].extension contains $event-performerFunction named performerFunction 0..*
* performer[laboratoireExecutant].extension[performerFunction].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

// Auteur
* performer[auteur] only Reference(FrPractitionerRoleDocument)
* performer[auteur].extension contains $event-performerFunction named performerFunction 0..1
* performer[auteur].extension[performerFunction].valueCodeableConcept.coding.code = #AUT

// Validateur de résultats
* performer[validateurResultat] only Reference(FrPractitionerRoleDocument)
* performer[validateurResultat].extension contains $event-performerFunction named performerFunction 0..1
* performer[validateurResultat].extension[performerFunction].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer[validateurResultat].extension[performerFunction].valueCodeableConcept.coding.code = #AUTHEN

// Responsable de l'examen
* performer[responsableExamen] only Reference(FrPractitionerRoleDocument)
* performer[responsableExamen].extension contains $event-performerFunction named performerFunction 0..1
* performer[responsableExamen].extension[performerFunction].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer[responsableExamen].extension[performerFunction].valueCodeableConcept.coding.code = #RESP

// Dispositif automatique
* performer[dispositifAuto] only Reference(FrPractitionerRoleDocument)
* performer[dispositifAuto].extension contains $event-performerFunction named performerFunction 0..1
* performer[dispositifAuto].extension[performerFunction].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer[dispositifAuto].extension[performerFunction].valueCodeableConcept.coding.code = #DEV

//------------------------------------
// Commentaire (annotation)
//------------------------------------
* note 0..* MS
* note ^short = "Commentaires associés à l’isolat microbiologique"

//------------------------------------
// Image illustrative
//------------------------------------
* derivedFrom only Reference(FrMediaImageIllustrative)
* derivedFrom ^short = "Image illustrative de l’isolat"

//------------------------------------
// Groupes de résultats associés
//------------------------------------
* hasMember only Reference(FrObservationBatterieExamenBiologieMedicale or FrObservationResultatsExamensDeBiologieElementCliniquePertinent)
* hasMember ^short = "Lien vers batterie d’examens ou résultats d’examens cliniquement pertinents"