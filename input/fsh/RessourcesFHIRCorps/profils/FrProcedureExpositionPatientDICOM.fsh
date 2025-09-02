Profile: FrProcedureExpositionPatientDICOM
Parent: Procedure
Id: fr-procedure-exposition-patient-dicom
Title: "Procedure - Fr Exposition patient DICOM"
Description: "FrProcedureExpositionPatientDICOM permet d'enregistrer l'identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements.
Elle est obligatoire dans la norme DICOM Part 20."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code 1..1 MS
* code ^short = "Exposition du patient aux rayonnements ionisants"
* code.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* code.coding.code = #121290
* code.coding.display = "Exposition du patient aux rayonnements ionisants"

* performer MS
* performer ^short = "Participant"
* performer.actor.extension contains
    FrActorExtension named Participant 1..1

* performer.actor.extension[Participant] ^short = "Identité du professionnel de santé ayant donné
l'autorisation de l'exposition du patient aux rayonnements"
* performer.actor.extension[Participant].extension[reference].valueReference only Reference(FrPractitionerRoleDocument or Device)