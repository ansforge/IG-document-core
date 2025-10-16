Profile: FrTaskProfessionalTransport
Parent: Task
Id: fr-task-professional-transport
Title: "Task - Fr Task Professional Transport"
Description: "FrTaskProfessionalTransport permet de décrire le transport d'un professionnel lors d’un déplacement."

* identifier 1..1 MS
  * ^short = "Identifiant du transport"
* code 1..1 MS
* code ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mode-de-transport-cisis


* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input contains
    typeMotorisation 1..1 and 
    lieuDepart 0..1 and 
    destination 0..1 and 
    autresPrecisions 0..* 

//Type de motorisation 
* input[typeMotorisation].value[x] only CodeableConcept
* input[typeMotorisation].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis
* input[typeMotorisation].type.coding.code = #GEN-346
* input[typeMotorisation].type.coding.system from $terminologie-cisis
* input[typeMotorisation] ^short = "Type de motorisation"


// Date début / fin de transport
* executionPeriod 1..1 
* executionPeriod.start 1..1
* executionPeriod.end 1..1

* owner MS
* owner.extension contains
    FrActorExtension named transporteur 0..1 and
    FrActorExtension named professionnelConcerne 1..1

// --- transporteur ---
* owner.extension[transporteur] ^short = "Transporteur"
* owner.extension[transporteur].extension[type].valueCode = #PRF
* owner.extension[transporteur].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
* owner.extension[transporteur].extension[typeCode].valueCodeableConcept.coding.code = #PRF

//le Professionnel concerné
* owner.extension[professionnelConcerne] ^short = "le Professionnel concerné"
* owner.extension[professionnelConcerne].extension[type].valueCode = #PART
* owner.extension[professionnelConcerne].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)
* owner.extension[professionnelConcerne].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
* owner.extension[professionnelConcerne].extension[typeCode].valueCodeableConcept.coding.code = #RCV 

// Lieu de départ
* input[lieuDepart].value[x] only Address
* input[lieuDepart].type.text = "Lieu de départ"

// Destination
* input[destination].value[x] only Address
* input[destination].type.text = "Destination"
* input[destination] ^short = "Adresse de destination"

// Autres précision sur le trajet ou le transport du Professionnel concerné
* input[autresPrecisions].value[x] 1..1
* input[autresPrecisions].type.text = "Autres précision"
* input[autresPrecisions] ^short = "Autres précision sur le trajet ou le transport du professionnel concerné"
