// StructureDefinition for FrImmunizationRecommendation
Profile: FrImmunizationRecommendation
Parent: ImmunizationRecommendation
Id: fr-immunization-recommendation
Title: "ImmunizationRecommendation - Fr Immunization Recommendation"
Description: "FrImmunizationRecommendation permet de décrire une vaccination prévue ou proposée.
 - Une vaccination proposée est une proposition qui est utilisée dans la prise de décisions (elle peut apparaître comme une contribution ou un résultat provenant de l'aide à la décision clinique). 
 - Une vaccination prévue dépend d'un plan accepté et à venir.
 - Ce profil hérite de la structuration, des contraintes et des vocabulaires définis dans le profil FrVaccinationDocument."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
* identifier ^short = "Identifiant de l’entrée. 
 - Attribué par le LPS avec un identifiant unique de type UUID affecté à l’attribut root (l’attribut extension est omis)."

* recommendation 1..1
  * forecastStatus = #complete
  * dateCriterion 1..1 
    * value ^short = "Période de vaccination souhaitable"
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
  * vaccineCode.coding[cis].system = "urn:oid:1.2.250.1.213.2.3.1"

  // Slice (autres codifications)
  * vaccineCode.coding contains translation 0..*
  * vaccineCode.coding[translation].system 1..1
  * vaccineCode.coding[translation].system from FrValueSetVaccineTranslation (required)

 // Référence vers le profil FrVaccinationDocument
  * supportingImmunization only Reference(FrImmunization)
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