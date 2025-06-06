Profile: FrPatientInstructions
Parent: ServiceRequest
Id: fr-patient-instructions
Title: "ServiceRequest - Instructions au patient"
Description: "Ce ServiceRequest décrit les instructions au patient."
* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"
* status MS
* status = #completed
* status ^short = "Statut de l'observation"
* code = urn:oid:1.3.6.1.4.1.19376.1.5.3.2#PINSTRUCT

* subject only Reference(FrPatientINSDocument or FrPatientDocument)
* occurrence[x] MS
* authoredOn MS
* requester only Reference(FrPractitionerDocument or FrPractitionerRoleDocument)
//* performer only Reference(rPatientINSDocument or FrPatientDocument) // si c’est le patient qui réalise l’action

* note 1..1 MS
* note.text ^short = "Partie narrative"

* patientInstruction 1..1 MS
* patientInstruction ^short = "Texte libre décrivant l'instruction au patient"
