// StructureDefinition for FrMedicationRequest
// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FrMedicationRequest
Parent: MedicationRequest
Id: fr-medication-request
Title: "MedicationRequest - Fr Traitement Prescrit"
Description: "
 - FrMedicationRequest permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* doNotPerform = false
* intent = #order

* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

* identifier contains
    identifierEntree 1..* MS and
    referencePrescription 1..* MS

* identifier[identifierEntree] ^short = "Identifiant"
* identifier[referencePrescription] ^short = "Référence de la prescription. Non utilisé dans une prescription."

* category 0..1 MS
* category.coding 1..1
* category.coding.system = "urn:oid:2.16.840.1.113883.5.4"
* category.coding.code = #DRUG
* category.coding.display = "Médicament"
* status 1..1 MS
* status ^short = "Statut"
* status = #completed
* dosageInstruction MS
// Dosages progressifs, fractionnés 
  * sequence MS
  * timing MS
    * ^short = "Durée du traitement et fréquence d'administration."
    * repeat MS
      * boundsPeriod ^short = "Durée du traitement"
        * start ^short = "Date de début du traitement"
        * end ^short = "Date de fin du traitement"
    //Fréquence d'administration
      * frequency MS
      // @value , @unit 
      * period MS
      * periodUnit MS
      * when MS
      * offset MS
      // Nombre de renouvellement(s) possible(s) // ou bien : 	dispenseRequest.numberOfRepeatsAllowed
      //* countMax MS 
        //* ^short = "Nombre de renouvellement(s) possible(s)"
  // Dosages conditionnels
  * asNeeded[x] MS 
  * route MS
  * route from FrValueSetEDQM
  * route ^short = "Voie d'administration"
  * site MS
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * doseAndRate.doseRange MS 
  * doseAndRate.doseRange ^short = "Dose à administrer"
    * low 1..1 MS
    * high 1..1 MS
  * doseAndRate.rateRange MS 
  * doseAndRate.rateRange ^short = "Rythme d'administration"
    * low 1..1 MS
    * high 1..1 MS
  * maxDosePerPeriod MS 
  * maxDosePerPeriod ^short = "Dose maximale"
  * maxDosePerPeriod.numerator 1..1 MS
  * maxDosePerPeriod.denominator 1..1 MS
* medication[x] MS
* medication[x] only CodeableConcept or Reference(FrMedication or FrMedicationsCombinaison)
  * ^short = "Produit de santé"

// --- Auteur ---
* requester MS
* requester.extension contains FrActorExtension named author 0..1 
* requester.extension[author] ^short = "Auteur du document Prescription"
* requester.extension[author].extension[type].valueCode = #AUT
* requester.extension[author].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)

// --- Prescripteur ---
* performer MS
* performer.extension contains FrActorExtension named prescripteur 0..1
* performer.extension[prescripteur] ^short = "Prescripteur"
* performer.extension[prescripteur].extension[type].valueCode = #PRF
* performer.extension[prescripteur].extension[actor].valueReference only Reference(FrPractitionerRoleDocument)

* authoredOn MS
// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(FrCondition or Observation)

//copie du plan de traitement médicamenteux
* supportingInformation only Reference(FrMedicationRequest)
  * ^short = "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux."
  * identifier MS
    * ^short = "Identifiant de la ligne de traitement dans un plan de traitement."
// ou bien basedOn lien vers le plan de traitement ?
/*
* basedOn 0..1 MS
* basedOn only Reference(FrCarePlanDocument)
*/

//Instructions au patient
// si codé : 
* dosageInstruction.additionalInstruction MS 
  * ^short = "Instructions au patient"
  // si non codé : 
* dosageInstruction.additionalInstruction.text MS 
  * ^short = "Instruction au patient"
/*
* dosageInstruction.text MS 
  * ^short = "Instructions au dispensateur"
  */
* dispenseRequest MS
  * extension contains FrMedicationRequestDispenserInstructionExtension named instructionsAuDispensateur 0..1 MS 
    * ^short = "instructions au dispensateur"
  * quantity MS
    * ^short = "Quantité à dispenser" 
  * numberOfRepeatsAllowed MS 
    * ^short = "Nombre de renouvellement(s) possible(s)"
* substitution 1..1 MS
  * allowed[x] MS
  * ^short = "Autorisation de substitution" 
  * allowedCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis

* reasonReference ^slicing.discriminator.type = #pattern
* reasonReference ^slicing.discriminator.path = "display"
* reasonReference ^slicing.rules = #open

* reasonReference contains
    renouvellement 0..1 and
    ald 0..1 and
    accidentTravail 0..1 and
    prevention 0..1 and
    nonRemboursable 0..1 and
    horsAMM 0..1

* reasonReference[renouvellement] only Reference(FrObservationRenewal)
* reasonReference[renouvellement] ^short = "Période de renouvellement"

* reasonReference[ald] only Reference(FrObservationRelatedToLongTermCondition)
* reasonReference[ald] ^short = "En rapport avec une Affection Longue Durée (ALD)"

* reasonReference[accidentTravail] only Reference(FrObservationWorkRelatedAccident)
* reasonReference[accidentTravail] ^short = "En rapport avec accident travail"

* reasonReference[prevention] only Reference(FrObservationRelatedToPrevention)
* reasonReference[prevention] ^short = "En rapport avec la prévention"

* reasonReference[nonRemboursable] only Reference(FrObservationNotCovered)
* reasonReference[nonRemboursable] ^short = "Non remboursable"

* reasonReference[horsAMM] only Reference(FrObservationOutOfNomenclature)
* reasonReference[horsAMM] ^short = "Hors AMM"

// Précondition
* extension contains FrPreconditionExtension named precondition 0..1
  * ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."