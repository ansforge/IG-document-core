// StructureDefinition for EncounterDocument
Profile: FrEncounterDocument
Parent: FRCoreEncounterProfile
Id: fr-encounter-document
Title: "Fr Encounter Document"
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

// Responsable de la prise en charge : responsibleParty
* participant contains responsibleParty 0..1
* participant[responsibleParty] ^short = "Responsable de la prise en charge"
* participant[responsibleParty].type ^short = "Type de participation"
* participant[responsibleParty].type.coding.code = #DIS
* participant[responsibleParty].type.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_A13-HL7ParticipationType/FHIR/TRE-A13-HL7ParticipationType"
* participant[responsibleParty].individual 1..1
* participant[responsibleParty].individual ^short = "Entité responsable de la prise en charge"
* participant[responsibleParty].individual only Reference(FrPractitionerRoleDocument)

// Personne impliquée dans la prise en charge : encounterParticipant
* participant contains encounterParticipant 0..*
* participant[encounterParticipant] ^short = "Personne impliquée dans la prise en charge"
* participant[encounterParticipant].type ^short = "Type de participation"
* participant[encounterParticipant].type from $JDV_J140-EncounterParticipationType-CISIS (required)
* participant[encounterParticipant].individual 1..1
* participant[encounterParticipant].individual ^short = "Professionnel impliqué"
* participant[encounterParticipant].individual only Reference(FrPractitionerRoleDocument)

* location 1..1 
* location ^short = "Lieu de la prise en charge"
* location.location only Reference(FrLocationDocument)