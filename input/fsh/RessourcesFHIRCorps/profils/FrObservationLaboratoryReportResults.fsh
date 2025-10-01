Profile: FrObservationLaboratoryReportResults
Parent: Observation
Id: fr-laboratory-report-results
Title: "Observation - Fr Laboratory report results"
Description: "FrObservationLaboratoryReportResults décrit un résultat d’examen de biologie médicale."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical() 

* status 1..1 MS
* status ^short = "Niveau de complétude :
- 'final' si le résultat est présent
- 'cancelled' dans le cas où l'élément d'examen n’a pu être et ne sera pas réalisé"

* category MS
* category ^short = "Code du chapitre"

* code MS
* code ^short = "Code d'identification de l'analyse ou de l'observation"
* code.text ^short = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"

* code only FrDocumentCodeableConcept
* code.coding ^short = "Code d'identification d'attente national ou code de portée locale"

// Date et heure du résultat
* effective[x] 0..1 MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Date et heure du résultat"
* effectivePeriod.start ^short = "Début de la période"
* effectivePeriod.end ^short = "Fin de la période"

* method MS
* method ^short = "Méthode ou technique employée"

* interpretation MS
* interpretation ^short = "Code d'interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
//------------------------------------
// Sujet & Specimen
//------------------------------------
* subject MS
* subject 1..1
* subject ^short = """
1. Si le spécimen provient du corps du patient :
- subject = Référence vers FrPatient
- specimen = Référence vers FrSpecimen
- specimen.type contraint par le JDV jdv-specimen-type-cisis

2. Si spécimen extérieur au patient :
- subject = Référence vers FrPatient
- specimen = Référence vers FrSpecimen
- specimen.subject = Référence vers Substance
  Dans Substance :
    - substance.category depuis le JDV HL7 substance-category
    - substance.code.coding / display / system
"""

* subject only Reference(FrPatientINSDocument)

* specimen MS
* specimen ^short = "Prélèvement"
* specimen 0..1
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
* performer.extension[laboratoireExecutant].extension[actor].valueReference only Reference(FrOrganizationDocument)
* performer.extension[laboratoireExecutant].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

// auteur
* performer.extension[auteur] MS
* performer.extension[auteur] ^short = "Auteur"
* performer.extension[auteur].extension[type].valueCode = #AUT (exactly)
* performer.extension[auteur].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)


// Validateur de résultats
* performer.extension[validateurResultat] MS
* performer.extension[validateurResultat] ^short = "Validateur de résultats"
* performer.extension[validateurResultat].extension[type].valueCode = #PART (exactly)
* performer.extension[validateurResultat].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
* performer.extension[validateurResultat].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer.extension[validateurResultat].extension[typeCode].valueCodeableConcept.coding.code = #AUTHEN

// Responsable de l'examen
* performer.extension[responsableExamen] MS
* performer.extension[responsableExamen] ^short = "Responsable de l'évaluation"
* performer.extension[responsableExamen].extension[type].valueCode = #PART (exactly)
* performer.extension[responsableExamen].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
* performer.extension[responsableExamen].extension[typeCode].valueCodeableConcept.coding.code = #RESP

// Dispositif automatique
* performer.extension[dispositifAuto] MS
* performer.extension[dispositifAuto] ^short = "Dispositif automatique"
* performer.extension[dispositifAuto].extension[type].valueCode = #PART (exactly)
* performer.extension[dispositifAuto].extension[actor].valueReference only Reference(Device)
* performer.extension[dispositifAuto].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer.extension[dispositifAuto].extension[typeCode].valueCodeableConcept.coding.code = #DEV

//------------------------------------
// Commentaire (annotation)
//------------------------------------
* note 0..* MS
* note ^short = "Commentaires associés à l'observation"

//------------------------------------
// Image illustrative
//------------------------------------
* derivedFrom MS
* derivedFrom only Reference(FrMedia)
* derivedFrom ^short = "Image illustrative"

//------------------------------------
// Groupes de résultats associés
//------------------------------------
* hasMember MS
* hasMember only Reference(FrObservationLaboratoryReportResults)
* hasMember ^short = "Lien vers batterie d’examens ou résultats d’examens cliniquement pertinents ou isolat microbiologique"

* value[x] 0..1 MS
* value[x] ^short = "Valeur du résultat :
Le type de valeur (value[x]) est choisi dynamiquement. 
Les autres attributs qui qualifient cette valeur (comme par exemple l'unité : unit) dépendent du type de donnée choisi. 
Les résultats qualitatifs codés peuvent le cas échéant être exprimés dans plusieurs systèmes de codage simultanément. 
De même les résultats numériques peuvent être exprimés simultanément dans plusieurs unités."

* extension contains $workflow-supportingInfo named supportingInfo 0..*
* extension[supportingInfo] MS
* extension[supportingInfo] ^short = "Résultats antérieurs"
// ou bien * hasMember only Reference(FrSimpleObservation) 
// * hasMember ^short = "Résultats antérieurs"

* valueRange MS
* valueRange ^short = "Intervalles de référence"
* valueRange.low MS
* valueRange.high MS

