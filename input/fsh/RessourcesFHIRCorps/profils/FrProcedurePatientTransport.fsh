// StructureDefinition for FrProcedurePatientTransport
Profile: FrProcedurePatientTransport
Parent: Procedure
Id: fr-procedure-patient-transport
Title: "Procedure - Fr Patient Transport"
Description: "FrProcedurePatientTransport permet de décrire le transport d'un patient/usager lors d'un déplacement (entrée ou sortie d'hôpital, ...)."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
  * ^short = "Identifiant de l'entrée. Identifiant du transport"

// Contraindre code
* code only FrDocumentCodeableConcept
* code 1..1 MS
* code ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"

// Créer deux slices : natureTransport et typeMotorisation
* code.coding.extension[qualifier] contains
    natureTransport 1..1 MS and
    typeMotorisation 1..1 MS

// --- Slice 1 : Nature du transport ---
* code.coding.extension[qualifier][natureTransport].extension[name].valueCodeableConcept from $terminologie-cisis (required)
* code.coding.extension[qualifier][natureTransport].extension[name].valueCodeableConcept.coding.code = #GEN-345
* code.coding.extension[qualifier][natureTransport].extension[name] ^short = "Qualifier : Nature du transport (ex. GEN-345)"

// --- Slice 2 : Type de motorisation ---
* code.coding.extension[qualifier][typeMotorisation].extension[name].valueCodeableConcept from $terminologie-cisis (required)
* code.coding.extension[qualifier][typeMotorisation].extension[name].valueCodeableConcept.coding.code = #GEN-346
* code.coding.extension[qualifier][typeMotorisation].extension[value].valueCodeableConcept.coding.system from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis (required)
* code.coding.extension[qualifier][typeMotorisation].extension[value] ^short = "Qualifier : Type de motorisation"

* performedDateTime 1..1 MS 
  * ^short = "Date du transport"	

* performer MS
* performer.actor.extension contains
    FrActorExtension named transporteur 1..1

// transporteur
* performer.actor.extension[transporteur] ^short = "Transporteur"
* performer.actor.extension[transporteur].extension[type].valueCode = #PRF
* performer.actor.extension[transporteur].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
* performer.actor.extension[transporteur].extension[typeCode].valueCodeableConcept.coding.code = #PRF

// Lieu de départ / Destination
* location MS 
  * ^short = "Lieu de départ / Destination"
* location.extension contains FrProcedureFromLocation named lieuDepart 0..1
* location.extension contains FrProceduretoLocation named destination 0..1

//Autres précision sur le trajet ou le transport du patient
// Si les précisions sur le transport sont non codées ou non structurées, on peut les inclure directement dans Procedure.note
* extension contains FrProcedureAdditionalInformation named precisionTransportPatient 0..* MS