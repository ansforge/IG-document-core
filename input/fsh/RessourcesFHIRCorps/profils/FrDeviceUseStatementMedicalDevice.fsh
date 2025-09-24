Profile: FrDeviceUseStatementMedicalDevice
Parent: DeviceUseStatement
Id: fr-device-use-statement-medicaldevice
Title: "DeviceUseStatement - Fr Dispositif médical"
Description: "FrDeviceUseStatementMedicalDevice représente les information sur un dispositif médical"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Identifiant
* identifier 1..* MS
* identifier ^short = "Identifiant de la fourniture du DM
Sous la forme UID (UUID ou OID)."

// Date/heure de l'utilisation
* timing[x] only Timing or Period

// Dispensateur  
* source MS
* source ^short = "Dispensateur"
* source.extension contains FrActorExtension named performer 0..1
* source.extension[performer] ^short = "Dispensateur: référence au professionnel de santé ou à l'organisation ayant initié ou dispensé le dispositif"
* source.extension[performer].extension[type].valueCode = #PRF (exactly)
* source.extension[performer].extension[actor].valueReference only Reference(FrPractitionerRoleDocument or FrOrganizationDocument)

// Élément device
* device MS
* device only Reference(Device)
* device ^short = "Dispositif médical"

// Slicing sur reasonReference
* reasonReference ^slicing.discriminator.type = #value
* reasonReference ^slicing.discriminator.path = "resolve().code"
* reasonReference ^slicing.rules = #open
* reasonReference MS
* reasonReference ^short = "Raisons liées à l'utilisation du dispositif médical"

// Définition des slices
* reasonReference contains
    EnRapportAvecALD 0..1 and
    EnRapportAvecAccidentTravail 0..1 and
    EnRapportAvecLaPrevention 0..1 and
    NonRemboursable 0..1

* reasonReference[EnRapportAvecALD] only Reference(FrObservationEnRapportAvecALD)
* reasonReference[EnRapportAvecALD] ^short = "Observation indiquant que l'utilisation est en rapport avec une ALD"
* reasonReference[EnRapportAvecALD] MS

* reasonReference[EnRapportAvecAccidentTravail] only Reference(FrObservationEnRapportAvecAccidentTravail)
* reasonReference[EnRapportAvecAccidentTravail] ^short = "Observation indiquant que l'utilisation est en rapport avec un accident de travail"
* reasonReference[EnRapportAvecAccidentTravail] MS

* reasonReference[EnRapportAvecLaPrevention] only Reference(FrObservationEnRapportAvecLaPrevention)
* reasonReference[EnRapportAvecLaPrevention] ^short = "Observation indiquant que l'utilisation est liée à la prévention"
* reasonReference[EnRapportAvecLaPrevention] MS

* reasonReference[NonRemboursable] only Reference(FrObservationNonRemboursable)
* reasonReference[NonRemboursable] ^short = "Observation indiquant que le dispositif n'est pas remboursable"
* reasonReference[NonRemboursable] MS 