// StructureDefinition for Act
Profile: FrProcedureAct
Parent: Procedure
Id: fr-procedure-act
Title: "Procedure - Fr Act"
Description: "FrProcedureAct est un profil utilisé pour décrire un acte planifié ou réalisé."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Identifiant"

* status MS
* status ^short = "Statut de l'acte"

* code 1..1 MS
* code ^short = "Code d'acte :
Aussi utilisé pour indiquer qu'il n'y a pas d'acte, ou qu'on ne sait pas s'il y en a.
Terminologie CCAM (1.2.250.1.215.300.1) si possible.
Si l'acte n'est pas trouvé dans la terminologie CCAM, 
utiliser le code='C25218', displayName='Intervention', codeSystem='2.16.840.1.113883.3.26.1.1', codeSystemName='NCIT' et décrire l'acte sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante.
ou
jdv-absent-or-unknown-procedure-cisis (1.2.250.1.213.1.1.5.665) pour les actes chirurgicaux"

* subject MS
* subject only Reference(FrPatientINSDocument or FrPatientDocument)
* subject ^short = "Patient concerné"

* performed[x] MS
* performed[x] ^short = "Date de l'acte"

* extension contains FrPriorityExtension named priority 0..1 MS

* bodySite MS
* bodySite ^short = "Voie d'abord et localisation anatomique"
* bodySite ^slicing.discriminator.type = #pattern
* bodySite ^slicing.discriminator.path = "$this"
* bodySite ^slicing.rules = #open

* bodySite contains
    ApproachSiteCode 0..* and
    TargetSiteCode 0..* 

* bodySite[ApproachSiteCode] ^short = "Voie d’abord"
* bodySite[ApproachSiteCode] only CodeableConcept
* bodySite[ApproachSiteCode].coding 1..1
* bodySite[ApproachSiteCode].coding.system = "http://snomed.info/sct"
//* bodySite[ApproachSiteCode].coding[0].code = #XYZ (remplacez par le code réel SNOMED pour voie d’abord)

* bodySite[TargetSiteCode] ^short = "Localisation anatomique"
* bodySite[TargetSiteCode] only CodeableConcept
* bodySite[TargetSiteCode].coding 1..1
* bodySite[TargetSiteCode].coding.system = "http://snomed.info/sct" 

* performer MS
* performer.actor.extension contains
    FrActorExtension named Intervenant 0..* and
    FrActorExtension named Informateur 0..* and
    FrActorExtension named Participant 0..*

//performer
* performer.actor.extension[Intervenant] MS 
* performer.actor.extension[Intervenant] ^short = "Intervenant"
* performer.actor.extension[Intervenant].extension[type].valueCode = #PRF (exactly)
* performer.actor.extension[Intervenant].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
//informant
* performer.actor.extension[Informateur] MS
* performer.actor.extension[Informateur] ^short = "Informateur"
* performer.actor.extension[Informateur].extension[type].valueCode = #INF (exactly)
* performer.actor.extension[Informateur].extension[actor].valueReference only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument or FrPatientINSDocument or FrPatientDocument)
//participant
* performer.actor.extension[Participant] MS
* performer.actor.extension[Participant] ^short = "Participant"
* performer.actor.extension[Participant].extension[type].valueCode = #PART (exactly)
* performer.actor.extension[Participant].extension[actor].valueReference only Reference(FrPractitionerRoleDocument or Device)

* recorder MS
* recorder.extension contains FrActorExtension named author 0..1
* recorder ^short = "Auteur"
* recorder.extension[author].extension[type].valueCode = #AUT (exactly)
* recorder.extension[author].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)

//Réference interne à un DM (REFR)
* usedReference MS
* usedReference ^short = "Réference interne à un DM"
* usedReference only Reference(Device)
// Motif de l'acte à créer (RSON)
* reasonReference MS
* reasonReference ^short = "Motif de l'acte"
* reasonReference only Reference(FrCondition)

// Circonstances ayant décidé de l'acte à créer (COMP)
* encounter MS
* encounter ^short = "Circonstances ayant décidé de l'acte"
* encounter only Reference(FrEncounter)

// Difficulté Observation / Scores Observation
* extension contains
    FrDifficultyExtension named difficulte 0..1 MS and
    FrScoreExtension named scores 0..* MS
* extension[difficulte] ^short = "Référence vers une Observation représentant la difficulté"
* extension[scores] ^short = "Références vers des Observations de scores associés" 