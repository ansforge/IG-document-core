// StructureDefinition for FrVacciRecommende
Profile: FrVaccinRecommandeDocument
Parent: ImmunizationRecommendation
Id: fr-vaccin-recommande-document
Title: "ImmunizationRecommendation - Fr Vaccin Recommande Document"
Description: "FrVaccinRecommandeDocument permet de décrire une vaccination prévue ou proposée.
 - Une vaccination proposée est une proposition qui est utilisée dans la prise de décisions (elle peut apparaître comme une contribution ou un résultat provenant de l'aide à la décision clinique). 
 - Une vaccination prévue dépend d'un plan accepté et à venir.
 - Ce profil hérite de la structuration, des contraintes et des vocabulaires définis dans le profil FrVaccinationDocument."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
* identifier ^short = "Identifiant de l’entrée. 
 - Attribué par le LPS avec un identifiant unique de type UUID affecté à l’attribut root (l’attribut extension est omis)."

* extension contains fr-vaccination-type-extension named typeVaccination 1..1
* extension[typeVaccination].valueCodeableConcept.coding.system = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis"

* recommendation 1..1
  * forecastStatus = #complete
  * dateCriterion 1..1 
    * value ^short = "Période de vaccination souhaitable"
// produit de santé
  * vaccineCode MS
  * vaccineCode ^short = "Vaccin. Code du produit de santé"
  * vaccineCode from FrValueSetCodeProduit (required)
// translation (autres codifications)
  * vaccineCode.extension contains FrTranslationExtension named translation 0..* 
  * vaccineCode.extension[translation].valueCodeableConcept.coding.system from FrValueSetVaccineTranslation (required)
  * vaccineCode obeys Recomm-Immu-VaccineCodeConstraint
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

 // Référence vers le profil FrVaccinationDocument
  * supportingImmunization only Reference(FrVaccinationDocument)
  // Rang de la vaccination
  * seriesDosesPositiveInt 0..1 MS
  // ou utilisation de l'extesion FHIR : Note  http://hl7.org/fhir/StructureDefinition/note?
  * description MS
    * ^short = "Commentaire"

  /*
  // Prescription 
  * supportingPatientInformation 0..1 MS
  // créer un profil FrPrescriptionDocument de type MedicationRequest 
  * supportingPatientInformation only Reference(MedicationRequest)
*/
 // Prescription 
* extension contains FrPrescriptionExtension named prescription 0..1

Invariant: Recomm-Immu-VaccineCodeConstraint
Description: "Permet soit de ne pas renseigner vaccineCode, soit de renseigner un code ATC ou CIS dans les ressources : ImmunizationR et ImmunizationRecommendation"
Expression: "empty() or coding.exists(system = 'urn:oid:2.16.840.1.113883.6.73' or system = 'urn:oid:1.2.250.1.213.2.3.1')"
Severity: #warning