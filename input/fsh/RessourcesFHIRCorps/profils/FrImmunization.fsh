// StructureDefinition for FrImmunization
Profile: FrImmunization
Parent: Immunization
Id: fr-immunization
Title: "Immunization - Fr Immunization"
Description: "FrImmunization permet de décrire l'administration d'un vaccin. 
 - Il permet également de décrire pourquoi un vaccin n'a pas été réalisé.
 - Ce profil hérite de la structuration, des contraintes et des vocabulaires définis dans le profil FrMedicationAdministrationDocument sauf mentions précisées ci-après."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
* identifier ^short = "Identifiant de l’entrée. 
 - Attribué par le LPS avec un identifiant unique de type UUID affecté à l’attribut root (l’attribut extension est omis)."

* extension contains fr-immunization-type-extension named typeVaccination 1..1
* status MS
* status = #completed
* occurrence[x] MS
* occurrence[x] only dateTime
* occurrence[x] ^short = "Date de la vaccination"
// équivalent CDA nullFlavor
* occurrence[x] ^definition = "Si la date de la vaccination est inconnue, utiliser l’extension data-absent-reason précisant pourquoi elle n’est pas connue."
* occurrence[x].extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1
* route MS
* route ^short = "Voie d'administration"
* route from $jdv-immunization-route-code-cisis (required)
* site MS
* site ^short = "Région anatomique d'administration"
* site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-approach-site-code-cisis (required)
* doseQuantity MS 
* doseQuantity ^short = "Dose administrée"

// produit de santé
* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^slicing.description = "Slice CIS et autres codifications"

* vaccineCode MS
* vaccineCode only FrDocumentCodeableConcept
* vaccineCode ^short = "Vaccin. Code du produit de santé"
// Slice CIS obligatoire
* vaccineCode.coding contains cis 1..1
* vaccineCode.coding[cis].system 1..1
* vaccineCode.coding[cis].system = "urn:oid:1.2.250.1.213.2.3.1" (exactly)

// Slice (autres codifications)
* vaccineCode.coding contains translation 0..*
* vaccineCode.coding[translation].system 1..1
* vaccineCode.coding[translation].system from FrValueSetVaccineTranslation (required)

//Nom de marque du produit : Extension IHE
* extension contains $ihe-ext-medication-productname named productName 1..1 MS
* extension[productName] ^short = "Nom de marque du produit." 
* lotNumber MS
  * ^short = "Numéro de lot."
* expirationDate MS 
  * ^short = "Date d'expiration du produit"


* performer MS
* performer.actor.extension contains
    FrActorExtension named author 1..1 and
    FrActorExtension named executant 0..1

// --- Auteur ---
* performer.actor.extension[author] ^short = "Auteur de la vaccination (personne ayant validé médicalement que la vaccination a été réalisée)"
* performer.actor.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.actor.extension[author].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)

// --- Exécutant ---
* performer.actor.extension[executant] ^short = "Exécutant"
* performer.actor.extension[executant].extension[type].valueCode = #PRF (exactly)
* performer.actor.extension[executant].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)

//Prescription

* extension contains FrPrescriptionExtension named prescription 0..1

// Rang de la vaccination 
* protocolApplied MS
* protocolApplied.doseNumberPositiveInt 1..1
* protocolApplied.doseNumberPositiveInt ^short = "Rang de la vaccination"

// Profil FrConditionDocument
* reasonReference MS
* reasonReference only Reference(FrCondition) 
  * ^short = "Réaction observée suite au vaccin"

// Dose d’antigène reçue (extension) ou créer un profil fsh FrDoseAntigene basé sur la ressource Substance ?
* extension contains FrAntigenDoseExtension named doseAntigene 0..*
  * ^short = "Dose d'antigène"

* note 0..1 MS
  * ^short = "Commentaire"