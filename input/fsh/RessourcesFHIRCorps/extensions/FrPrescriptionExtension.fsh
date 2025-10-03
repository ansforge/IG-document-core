Extension: FrPrescriptionExtension
Id: fr-prescription-extension
Title: "Extension - Fr Prescription"
Description: "Extension permettant d’indiquer les instructions de prescription associées à l'administration du produit de santé."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "ImmunizationRecommandation"

// extension complexe
* extension contains
    dosage 1..1 and
    FrRepeatNumberExtension named repeatNumber 0..1 and
    prescripteur 0..1 and
    dispensateur 0..*

// dosage : Quantité + Instructions au dispensateur
* extension[dosage].value[x] only Dosage
* extension[dosage].value[x].text 1..1 MS
// Instructions au dispensateur / ou bien utiliser l'extension FrDispenserInstructionExtension
* extension[dosage].value[x].additionalInstruction 1..1 MS
* extension[dosage].value[x].additionalInstruction.text 1..1 MS
* extension[dosage].value[x].doseAndRate.doseQuantity MS
* extension[dosage].value[x].doseAndRate.doseQuantity ^short = "Quantité. L'unité est exprimée selon le système de codage UCUM."

// Utiliser des sous-extensions ou bien enregistrer le Prescripteur et Dispensateur dans FrVaccinationDocument et FrTraitement (performer.actor)

// Prescripteur
* extension[prescripteur].value[x] only Reference(Practitioner)

// Dispensateur
* extension[dispensateur].value[x] only Reference(Practitioner)
