// StructureDefinition for FrProcedureHealthcareProfessionalTransport
Profile: FrProcedureHealthcareProfessionalTransport
Parent: Procedure
Id: fr-procedure-healthcare-professional-transport
Title: "Procedure - Fr Healthcare Professional Transport"
Description: "FrProcedureHealthcareProfessionalTransport permet de décrire le transport d'un professionnel lors d’un déplacement."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
  * ^short = "Identifiant de l'entrée. Identifiant du transport"
* code 1..1  MS
  * ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"
* code only FrDocumentCodeableConcept

//Type de motorisation 
* code.coding.extension[qualifier].extension[name] 1..1 
* code.coding.extension[qualifier].extension[name].valueCodeableConcept = $terminologie-cisis#GEN-346 "Type de motorisation"
* code.coding.extension[qualifier].extension[value] 1..1
* code.coding.extension[qualifier].extension[value].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis

* performedDateTime 1..1 MS 
  * ^short = "Date du transport"	

* performer MS
* performer.actor.extension contains
    FrActorExtension named transporteur 0..1 and
    FrActorExtension named professionnelConcerne 1..1

// --- transporteur ---
* performer.actor.extension[transporteur] ^short = "Transporteur"
* performer.actor.extension[transporteur].extension[type].valueCode = #PRF (exactly)
* performer.actor.extension[transporteur].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
* performer.actor.extension[transporteur].extension[typeCode].valueCodeableConcept.coding.code = #PRF

//le Professionnel concerné
* performer.actor.extension[professionnelConcerne] ^short = "le Professionnel concerné"
* performer.actor.extension[professionnelConcerne].extension[type].valueCode = #PART (exactly)
* performer.actor.extension[professionnelConcerne].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
* performer.actor.extension[professionnelConcerne].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
* performer.actor.extension[professionnelConcerne].extension[typeCode].valueCodeableConcept.coding.code = #RCV 

//Lieu de départ et destination : @typeCode = « ORG » ou « DST 
* location MS 
  * ^short = "Lieu de départ / Destination"
* location.extension contains FrProcedureFromLocation named lieuDepart 0..1
* location.extension contains FrProceduretoLocation named destination 0..1

//Autres précisions sur le trajet ou le transport du patient
// Si les précisions sur le transport sont non codées ou non structurées, on peut les inclure directement dans Procedure.note ?
* extension contains FrAdditionalInformation named precisionTransportProfessionnel 0..* MS