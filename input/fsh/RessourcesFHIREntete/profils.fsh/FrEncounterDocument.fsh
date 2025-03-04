Profile: FrEncounterDocument
Parent: Encounter
Id: fr-encounter-document
Title: "FrEncounterDocument"
Description: "Ce profil représente l'association du document à une prise en charge."
* ^status = #draft 
* type 0..1
* period 1..1
* hospitalization.dischargeDisposition.coding.system = "urn:oid:1.2.250.1.213.2.14"

// Slicing : participant 
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

// Premier participant : Responsable de la prise en charge : responsibleParty
* participant contains Responsable 0..1
* participant[Responsable] ^short = "Responsable de la prise en charge"
* participant[Responsable].type.coding.code = #DIS
* participant[Responsable].type.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_A13-HL7ParticipationType/FHIR/TRE-A13-HL7ParticipationType"
* participant[Responsable].type.coding.display = "Responsable de la sortie"
* participant[Responsable].individual 1..1
* participant[Responsable].individual only Reference(FrPractitionerRoleDocument)


// Deuxième participant : Personne impliquée dans la prise en charge : encounterParticipant
* participant contains Personne-Impliquee 0..*
* participant[Personne-Impliquee] ^short = "Personne impliquée dans la prise en charge"
* participant[Personne-Impliquee].type.coding from $JDV_J140-EncounterParticipationType-CISIS (required)
* participant[Personne-Impliquee].individual 1..1
* participant[Personne-Impliquee].individual only Reference(FrPractitionerRoleDocument)

* location 1..1 
* location.location only Reference(FrLocationDocument)