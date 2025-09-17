// StructureDefinition for FrVaccinationDocument
Profile: FrVaccinationDocument
Parent: Immunization
Id: fr-vaccination-document
Title: "Immunization - Fr Vaccination Document"
Description: "FrVaccinationDocument permet de décrire l'administration d'un vaccin. 
 - Il permet également de décrire pourquoi un vaccin n'a pas été réalisé.
 - Ce profil hérite de la structuration, des contraintes et des vocabulaires définis dans le profil FrMedicationAdministrationDocument sauf mentions précisées ci-après."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
* identifier ^short = "Identifiant de l’entrée. 
 - Attribué par le LPS avec un identifiant unique de type UUID affecté à l’attribut root (l’attribut extension est omis)."

* extension contains fr-vaccination-type-extension named typeVaccination 1..1
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
* vaccineCode MS
* vaccineCode ^short = "Vaccin. Code du produit de santé"
* vaccineCode from FrValueSetCodeProduit (required)
* vaccineCode obeys Immu-VaccineCodeConstraint
// translation (autres codifications)
* vaccineCode.extension contains FrTranslationExtension named translation 0..* 
* vaccineCode.extension[translation].valueCodeableConcept.coding.system from FrValueSetVaccineTranslation (required)

/*
// Définition du slicing sur coding
* vaccineCode.coding ^slicing.discriminator.type = #pattern
* vaccineCode.coding ^slicing.discriminator.path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^slicing.description = "Slicing pour distinguer le code principal et les translations"
* vaccineCode.coding contains
    code 1..1 and
    translation 0..*
// Slice code (code principal)
* vaccineCode.coding[code] ^short = "Code principal du vaccin"
* vaccineCode.coding[code].system from FRValueSetCodeProduit (required)
// Slice translation (autres codifications)
* vaccineCode.coding[translation] ^short = "Autres codifications (CIP, UCD, ATC, MV)"
* vaccineCode.coding[translation].system from FRValueSetVaccineTranslation (required) 
*/

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
* performer.actor.extension[author].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

// --- Exécutant ---
* performer.actor.extension[executant] ^short = "Exécutant"
* performer.actor.extension[executant].extension[type].valueCode = #PRF (exactly)
* performer.actor.extension[executant].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

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
* extension contains FrDoseAntigeneExtension named doseAntigene 0..*
  * ^short = "Dose d'antigène"

* note 0..1 MS
  * ^short = "Commentaire"

Invariant: Immu-VaccineCodeConstraint
Description: "Permet soit de ne pas renseigner vaccineCode, soit de renseigner un code ATC ou CIS dans les ressources : ImmunizationR et ImmunizationRecommendation"
Expression: "empty() or coding.exists(system = 'urn:oid:2.16.840.1.113883.6.73' or system = 'urn:oid:1.2.250.1.213.2.3.1')"
Severity: #warning