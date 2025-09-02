// StructureDefinition for Profile: FrCondition
Profile: FrCondition
Parent: Condition
Id: fr-condition
Title: "Condition - Fr Condition (problème)"
Description: "FrCondition est un profil utilisé pour décrire un problème du patient (une pathologie par exemple)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* identifier ^short = "Identifiant"

* clinicalStatus 1..1 MS
* clinicalStatus ^short = "Statut du problème"

* verificationStatus MS
* verificationStatus ^short = "Certitude"
* verificationStatus from FrValueSetConditionVerificationStatus
//* verificationStatus from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis

* category 1..1 MS
* category ^short = "Type d'observation"
* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis

* code 1..1 MS
* code ^short = """Identification de la condition, du problème ou du diagnostic :
CIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' displayName='Causes inconnues et non précisées de morbidité' codeSystem='2.16.840.1.113883.6.3' codeSystemName='CIM-10' et décrire le problème sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante  
Réaction allergique : CIM-11 (2.16.840.1.113883.6.347) provenant du JDV_AllergieReaction_CISIS (1.2.250.1.213.1.1.5.674)/ Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité
Si pas de problème ou pas d'information : JDV_AbsentOrUnknownProblem_CISIS (1.2.250.1.213.1.1.5.662)
"""
* subject MS
* subject ^short = "Patient concerné"
* subject only Reference(FrPatientINSDocument or FrPatientDocument)

* onsetPeriod 1..1 MS
* onsetPeriod ^short = "Dates de début et de fin du problème"
* onsetPeriod.start ^short = "Date de début du problème"
* onsetPeriod.end ^short = "Date de fin du problème"

* recorder MS
* recorder.extension contains FrActorExtension named author 0..1
* recorder.extension[author] ^short = "Auteur du problème"
* recorder.extension[author].extension[type].valueCode = #AUT (exactly)
* recorder.extension[author].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

* bodySite MS
* bodySite ^short = "Localisation anatomique"
* bodySite.coding 1..1
* bodySite.coding.system = "http://snomed.info/sct"

* abatement[x] 1..1 MS
* abatement[x] ^short = "Date du problème"
* abatementPeriod MS
* abatementPeriod ^short = "Dates de début et de fin du problème"
* abatementPeriod.start 1..1 MS
* abatementPeriod.start ^short = "Date de début du problème"
* abatementPeriod.end 0..1 MS
* abatementPeriod.end ^short = "Date de fin du problème"

* severity MS
* severity ^short = "Sévérité"
* severity from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis

* evidence.detail only Reference(FrDocumentReference)

* extension contains FrStatutCliniquePatientExtension named statutClinique 0..1

* note 0..1 MS
* note ^short = "Commentaire"