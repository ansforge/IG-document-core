Profile: FrObservationResultatsExamensDeBiologieElementCliniquePertinent
Parent: Observation
Id: fr-resultats-examens-de-biologie-element-clinique-pertinent
Title: "Observation - Fr Observation Resultats Examens De Biologie Element Clinique Pertinent"
Description: "Ce profil permet de décrire un résultat d'un élément d'un examen de biologie médicale ou un élément clinique pertinent fourni par le prescripteur ou le préleveur dans le contexte clinique de la demande d'examens biologiques."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* status MS
* status ^short = "Niveau de complétude :
- 'completed' si le résultat est présent
- 'aborted' dans le cas où l'élément d'examen n’a pu être et ne sera pas réalisé"
* code ^short = "Code d'identification de l'analyse ou de l'observation"
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

