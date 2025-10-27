Profile: FRProcedurePatientExposureDocument
Parent: Procedure
Id: fr-procedure-patient-exposure-document
Title: "Procedure -FR Procedure Patient Exposure DICOM Document"
Description: "FRProcedurePatientExposureDocument permet d'enregistrer l'identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements.
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
    FRActorExtension named Participant 1..1

* performer.actor.extension[Participant] ^short = "Identité du professionnel de santé ayant donné
l'autorisation de l'exposition du patient aux rayonnements"
* performer.actor.extension[Participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or Device)