// StructureDefinition for FrProcedureTransportPatient
Profile: FrProcedureTransportPatient
Parent: Procedure
Id: fr-procedurede-transport-patient
Title: "Procedure - Fr Transport du patient"
Description: "Cette entrée de type act permet de décrire le transport d'un patient/usager lors d'un déplacement (entrée ou sortie d'hôpital, ...)."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
  * ^short = "Identifiant de l'entrée. Identifiant du transport"
* code 1..1  MS
  * ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"

// Contraindre le code
* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1

// Ajouter deux occurrences de l’extension fr-qualifier-extension
* code.coding.extension contains
    FrQualifierExtension named qualifier1 0..1 and
    FrQualifierExtension named qualifier2 0..1

// qualifier1
* code.coding.extension[qualifier1].extension[name] 1..1
* code.coding.extension[qualifier1].extension[name].valueCodeableConcept = $terminologie-cisis#GEN-345 "Nature du transport"
// qualifier2
* code.coding.extension[qualifier2].extension[name] 1..1
* code.coding.extension[qualifier2].extension[name].valueCodeableConcept = $terminologie-cisis#GEN-346 "Type de motorisation"
* code.coding.extension[qualifier2].extension[value] 1..1
* code.coding.extension[qualifier2].extension[value].valueCodeableConcept.coding.system from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis

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

//Autres précision sur le trajet ou le transport du patient
// ou bien Utilisation de l’élément note
// Si les précisions sur le transport sont non codées ou non structurées, on peut les inclure directement dans Procedure.note
* extension contains FrAutresPrecisionExtension named precisionTransportPatient 0..* MS