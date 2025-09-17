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
CIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre
Réaction allergique : CIM-11 (2.16.840.1.113883.6.347) / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité
Si pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis
"""
* subject MS
* subject ^short = "Patient concerné"
* subject only Reference(FrPatientINSDocument or FrPatientDocument)

* onset[x] 1..1 MS
* onsetDateTime
* onsetDateTime ^short = "Date de début du problème"

* abatement[x] 0..1 MS
* abatementDateTime MS
* abatementDateTime ^short = "Date de fin du problème (si applicable)"

* recorder MS
* recorder.extension contains FrActorExtension named author 0..1
* recorder.extension[author] ^short = "Auteur du problème"
* recorder.extension[author].extension[type].valueCode = #AUT (exactly)
* recorder.extension[author].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

* bodySite
* bodySite ^short = "Localisation anatomique"
* bodySite.coding 1..1
* bodySite.coding.system = "http://snomed.info/sct"

* severity MS
* severity ^short = "Sévérité"
* severity from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis

* evidence.detail only Reference(FrDocumentReference)

* extension contains FrStatutCliniquePatientExtension named statutClinique 0..1

* note 0..1 MS
* note ^short = "Commentaire"