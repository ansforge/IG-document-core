// StructureDefinition for FrProcedureTransportProfessionnel
Profile: FrProcedureTransportProfessionnel
Parent: Procedure
Id: fr-procedure-transport-Professionnel
Title: "Procedure - Fr Transport du professionnel"
Description: "FrProcedureTransportProfessionnel permet de décrire le transport d'un professionnel lors d’un déplacement."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
  * ^short = "Identifiant de l'entrée. Identifiant du transport"
* code 1..1  MS
  * ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"

// Contraindre le code
* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1

// Ajout de l’extension fr-qualifier-extension
* code.coding.extension contains
    FrQualifierExtension named qualifier 0..1 

//Type de motorisation 
* code.coding.extension[qualifier].extension[name] 1..1 
* code.coding.extension[qualifier].extension[name].valueCodeableConcept = $terminologie-cisis#GEN-346 "Type de motorisation"
* code.coding.extension[qualifier].extension[value] 1..1
* code.coding.extension[qualifier].extension[value].valueCodeableConcept.coding.system from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis

* text 0..1 MS
  * ^short = "Texte décrivant le transport"
* performedDateTime 1..1 MS 
  * ^short = "Date du transport"	

* performer MS
* performer.actor.extension contains
    FrActorExtension named transporteur 0..1 and
    FrActorExtension named professionnelConcerne 1..1

// --- transporteur ---
* performer.actor.extension[transporteur] ^short = "Transporteur"
* performer.actor.extension[transporteur].extension[type].valueCode = #PRF (exactly)
* performer.actor.extension[transporteur].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)
* performer.actor.extension[transporteur].extension[typeCode].valueCodeableConcept.coding.code = #PRF

//le Professionnel concerné
* performer.actor.extension[professionnelConcerne] ^short = "le Professionnel concerné"
* performer.actor.extension[professionnelConcerne].extension[type].valueCode = #PART (exactly)
* performer.actor.extension[professionnelConcerne].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)
* performer.actor.extension[professionnelConcerne].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
* performer.actor.extension[professionnelConcerne].extension[typeCode].valueCodeableConcept.coding.code = #RCV 

//Lieu de départ et destination : @typeCode = « ORG » ou « DST 
* location MS 
  * ^short = "Lieu de départ / Destination"
* location.extension contains FrProcedureFromLocation named lieuDepart 0..1
* location.extension contains FrProceduretoLocation named destination 0..1

//Autres précisions sur le trajet ou le transport du patient
// Si les précisions sur le transport sont non codées ou non structurées, on peut les inclure directement dans Procedure.note ?
* extension contains FrAutresPrecisionExtension named precisionTransportProfessionnel 0..* MS