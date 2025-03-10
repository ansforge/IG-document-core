// StructureDefinition for EncounterDocument
Profile: FrEncounterDocument
Parent: Encounter
Id: fr-encounter-document
Title: "FrEncounterDocument"
Description: "Ce profil représente l'association du document à une prise en charge."
* type 0..1
* type ^short = "Type de prise en charge"
* period 1..1
* period ^short = "Date de début et de fin de la prise en charge"
* hospitalization.dischargeDisposition ^short = "Type sortie"
* hospitalization.dischargeDisposition.coding.system = "urn:oid:1.2.250.1.213.2.14"

// Slicing : participant 
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

// Premier participant : Responsable de la prise en charge : responsibleParty
* participant contains Responsable 0..1
* participant[Responsable] ^short = "Responsable de la prise en charge"
* participant[Responsable].type ^short = "Type de participation"
* participant[Responsable].type.coding.code = #DIS
* participant[Responsable].type.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_A13-HL7ParticipationType/FHIR/TRE-A13-HL7ParticipationType"
* participant[Responsable].type.coding.display = "Responsable de la sortie"
* participant[Responsable].individual 1..1
* participant[Responsable].individual ^short = "Entité responsable de la prise en charge"
* participant[Responsable].individual only Reference(FrPractitionerRoleDocument)


// Deuxième participant : Personne impliquée dans la prise en charge : encounterParticipant
* participant contains Personne-Impliquee 0..*
* participant[Personne-Impliquee] ^short = "Personne impliquée dans la prise en charge"
* participant[Personne-Impliquee].type ^short = "Type de participation"
* participant[Personne-Impliquee].type.coding from $JDV_J140-EncounterParticipationType-CISIS (required)
* participant[Personne-Impliquee].individual 1..1
* participant[Personne-Impliquee].individual ^short = "Professionnel impliqué"
* participant[Personne-Impliquee].individual only Reference(FrPractitionerRoleDocument)

* location 1..1 
* location ^short = "Lieu de la prise en charge"
* location.location only Reference(FrLocationDocument)