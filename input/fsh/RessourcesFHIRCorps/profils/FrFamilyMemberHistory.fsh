Profile: FrFamilyMemberHistory
Parent: FamilyMemberHistory
Id: fr-family-member-history
Title: "FamilyMemberHistory - Fr Antécédents familiaux"
Description: "FrFamilyMemberHistory est un profil utilisé pour apporter des informations complémentaires relatives aux membres de la famille du patient (pathologies, etc…)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* status MS
* status ^short = "Statut de l'antécédent familial"
* status = #completed
* relationship MS
* relationship ^short = "Lien avec un autre sujet"
* relationship from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-PersonalRelationshipRoleType-cisis

* patient 1..1 MS
* patient ^short = "Patient concerné"
* patient only Reference(FrPatientINSDocument or FrPatientDocument)

* date MS
* date ^short = "Date de la mise à jour de l'historique"

* condition MS
* condition ^short = "Problème"
* condition.code MS
* condition.code ^short = "Problème rencontré par le patient"
* condition.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis (required)

* condition.outcome 1..1 MS
* condition.outcome ^short = "Résultat de l'observation effectuée"

* condition.extension contains
    $bodySite named bodySite 0..1 MS and
    FrInterpretationExtension named interpretation 0..1 MS and
    FrMethodExtension named method 0..1 MS and
    FrActorExtension named author 0..1 MS

* condition.extension[bodySite] ^short = "Localisation anatomique"

* condition.extension[author] ^short = "Auteur"
* condition.extension[author].extension[type].valueCode = #AUT (exactly)
* condition.extension[author].extension[actor].valueReference only Reference(FrPractitionerRoleDocument or FrPatientINSDocument or FrDeviceDocument or FrPatientDocument)