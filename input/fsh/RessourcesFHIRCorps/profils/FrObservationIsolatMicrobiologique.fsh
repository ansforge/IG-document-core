Profile: FrObservationIsolatMicrobiologique
Parent: Observation
Id: fr-observation-isolat-microbiologique
Title: "Observation - Fr Isolat microbiologique"
Description: "Profil Observation pour représenter un isolat microbiologique."

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
* subject MS
* subject 1..1
* subject only Reference(FrPatientINSDocument)

* specimen MS
* specimen 1..1
* specimen only Reference(FrSpecimen)

* performer MS
* performer.extension contains
    FrActorExtension named laboratoireExecutant 0..1 and
    FrActorExtension named auteur 0..1 and
    FrActorExtension named validateurResultat 0..1 and
    FrActorExtension named responsableExamen 0..1 and
    FrActorExtension named dispositifAuto 0..*

// laboratoire executant
* performer.extension[laboratoireExecutant] MS
* performer.extension[laboratoireExecutant] ^short = "Laboratoire exécutant"
* performer.extension[laboratoireExecutant].extension[type].valueCode = #PRF (exactly)
* performer.extension[laboratoireExecutant].extension[reference].valueReference only Reference(FrOrganizationDocument)
* performer.extension[laboratoireExecutant].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

// auteur
* performer.extension[auteur] MS
* performer.extension[auteur] ^short = "Auteur"
* performer.extension[auteur].extension[type].valueCode = #AUT (exactly)
* performer.extension[auteur].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)


// Validateur de résultats
* performer.extension[validateurResultat] MS
* performer.extension[validateurResultat] ^short = "Validateur de résultats"
* performer.extension[validateurResultat].extension[type].valueCode = #PART (exactly)
* performer.extension[validateurResultat].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)
* performer.extension[validateurResultat].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer.extension[validateurResultat].extension[typeCode].valueCodeableConcept.coding.code = #AUTHEN

// Responsable de l'examen
* performer.extension[responsableExamen] MS
* performer.extension[responsableExamen] ^short = "Responsable de l'évaluation"
* performer.extension[responsableExamen].extension[type].valueCode = #PART (exactly)
* performer.extension[responsableExamen].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)
* performer.extension[responsableExamen].extension[typeCode].valueCodeableConcept.coding.code = #RESP

// Dispositif automatique
* performer.extension[dispositifAuto] MS
* performer.extension[dispositifAuto] ^short = "Dispositif automatique"
* performer.extension[dispositifAuto].extension[type].valueCode = #PART (exactly)
* performer.extension[dispositifAuto].extension[reference].valueReference only Reference(Device)
* performer.extension[dispositifAuto].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer.extension[dispositifAuto].extension[typeCode].valueCodeableConcept.coding.code = #DEV

//------------------------------------
// Commentaire (annotation)
//------------------------------------
* note 0..* MS
* note ^short = "Commentaires associés à l’isolat microbiologique"

//------------------------------------
// Image illustrative
//------------------------------------
* derivedFrom MS
* derivedFrom only Reference(FrMediaImageIllustrative)
* derivedFrom ^short = "Image illustrative de l’isolat"

//------------------------------------
// Groupes de résultats associés
//------------------------------------
* hasMember MS
* hasMember only Reference(FrObservationBatterieExamenBiologieMedicale or FrObservationResultatsExamensDeBiologieElementCliniquePertinent)
* hasMember ^short = "Lien vers batterie d’examens ou résultats d’examens cliniquement pertinents"