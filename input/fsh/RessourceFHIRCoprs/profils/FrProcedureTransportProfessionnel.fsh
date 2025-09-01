// StructureDefinition for FrProcedureTransportProfessionnel
Profile: FrProcedureTransportProfessionnel
Parent: Procedure
Id: fr-procedure-transport-Professionnel
Title: "Procedure - Fr Transport du professionnel"
Description: "Cette entrée de type act permet de décrire le transport d'un professionnel lors d’un déplacement."

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
* performer.extension contains
    FrActorExtension named transporteur 0..1 

// --- transporteur ---
* performer.extension[transporteur] ^short = "Transporteur"
* performer.extension[transporteur].extension[type].valueCode = #PRF (exactly)
* performer.extension[transporteur].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

* location MS 
  * ^short = "Lieu de départ / Destination"
* location only Reference(FrLocationDocument)

//Autres précisions sur le trajet ou le transport du patient
// ou bien Utilisation de l’élément note
// Si les précisions sur le transport sont non codées ou non structurées, on peut les inclure directement dans Procedure.note
* extension contains FrAutresPrecisionExtension named precisionTransportProfessionnel 0..* MS