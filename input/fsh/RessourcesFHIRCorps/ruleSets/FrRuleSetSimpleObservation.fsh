RuleSet: FrRuleSetSimpleObservation
// Contraintes pour Observation - Fr Simple Observation

//* ^extension[$imposeProfile].valueCanonical = Canonical(FrSimpleObservation)

* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"

* status MS
* status = #final
* status ^short = "Statut de l'observation"

* code MS
* code ^short = "Code de l'observation"

* subject 1..1 MS
* subject only Reference(FrPatientINSDocument or FrPatientDocument)
* subject ^short = "Patient concerné"

* effective[x] 1..1 MS
* effective[x] ^short = "Date de l'observation"

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'observation"

* performer 0..* MS
* performer only Reference(
    FrPractitionerRoleDocument 
    or FrOrganizationDocument 
    or FrPractitionerRoleDocument 
    or FrPatientINSDocument 
    or FrPatientDocument
)
* performer ^short = "Auteur de l’observation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis

* method MS
* method ^short = "Méthode"
* method from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis

* note MS
* note ^short = "Commentaire"
