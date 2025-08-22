Profile: FrDeviceUseStatementMedicalDevice
Parent: DeviceUseStatement
Id: fr-device-use-statement-medicaldevice
Title: "DeviceUseStatement - Fr Device Use Statement Medical Device"
Description: "FrDeviceUseStatementMedicalDevice représente les information sur un dispositif médical"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Identifiant
* identifier 1..* MS
* identifier ^short = "Identifiant de la fourniture du DM
Sous la forme UID (UUID ou OID)."

// Date/heure de l'utilisation
* timing[x] only Timing or Period
//* timingDateTime 1..1 MS
//* timingDateTime ^short = "Date d'utilisation ou de présence chez le patient"

// Période d'utilisation
//* timingPeriod 0..1 MS
//* timingPeriod ^short = "Durée d'utilisation"

// Proposition 1 : contraindre l'élément source
* source only Reference(FrPractitionerRoleDocument or FrPractitionerDocument)
* source MS
* source ^short = "Dispensateur: référence au professionnel de santé ou à l'organisation ayant initié ou dispensé le dispositif"

// Proposition 2 : extension FrDispensateurExtension
/*
Extension: FrDispensateurExtension
Id: fr-extension-dispensateur
Title: "Dispensateur du Dispositif Médical"
Description: "Dispensateur: référence au professionnel de santé ou à l'organisation ayant dispensé le dispositif médical."
* ^context[0].type = #element
* ^context[0].expression = "FrDeviceUseStatementMedicalDevice"
* value[x] only Reference(Practitioner or Organization)
* value[x] ^short = "Professionnel ou organisation ayant dispensé le DM"
*/

// Élément device
* device MS
* device only Reference(Device)
* device ^short = "Dispositif médical"

// Slicing sur reasonReference
* reasonReference ^slicing.discriminator.type = #pattern
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

* reasonReference[EnRapportAvecAccidentTravail] only Reference(FrObservationEnRapportAvecAccidentTravail)
* reasonReference[EnRapportAvecAccidentTravail] ^short = "Observation indiquant que l'utilisation est en rapport avec un accident de travail"

* reasonReference[EnRapportAvecLaPrevention] only Reference(FrObservationEnRapportAvecLaPrevention)
* reasonReference[EnRapportAvecLaPrevention] ^short = "Observation indiquant que l'utilisation est liée à la prévention"

* reasonReference[NonRemboursable] only Reference(FrObservationNonRemboursable)
* reasonReference[NonRemboursable] ^short = "Observation indiquant que le dispositif n'est pas remboursable"
