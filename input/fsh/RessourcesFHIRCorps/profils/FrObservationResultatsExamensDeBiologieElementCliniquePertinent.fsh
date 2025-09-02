Profile: FrObservationResultatsExamensDeBiologieElementCliniquePertinent
Parent: Observation
Id: fr-resultats-examens-de-biologie-element-clinique-pertinent
Title: "Observation - Fr Resultats examens de biologie élément clinique pertinent"
Description: "Ce profil permet de décrire un résultat d'un élément d'un examen de biologie médicale ou un élément clinique pertinent fourni par le prescripteur ou le préleveur dans le contexte clinique de la demande d'examens biologiques."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* status MS
* status ^short = "Niveau de complétude :
- 'completed' si le résultat est présent
- 'aborted' dans le cas où l'élément d'examen n’a pu être et ne sera pas réalisé"
* code ^short = "Code d'identification de l'analyse ou de l'observation"
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
* performer.extension contains FrActorExtension named author 0..1
* performer.extension[author] ^short = "Auteur"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.extension[author].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

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

