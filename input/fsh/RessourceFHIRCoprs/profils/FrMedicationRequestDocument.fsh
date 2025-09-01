// StructureDefinition for FrMedicationRequestDocument
Profile: FrMedicationRequestDocument
Parent: MedicationRequest
Id: fr-medication-request-document
Title: "MedicationRequest - Fr Traitement Prescrit"
Description: "
 - Cette entrée de type substanceAdministration permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* doNotPerform = false
* intent = #order
* identifier 1..* MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains referencePrescription 1..*

* category 0..1 MS
* category.coding 1..1
* category.coding.system = "urn:oid:2.16.840.1.113883.5.4"
* category.coding.code = #DRUG
* category.coding.display = "Médicament"
* text 1..1 MS
* text ^short = "Partie narrative de l’entrée"
* status 1..1 MS
* status ^short = "Statut de l’entrée"
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
      // Nombre de renouvellement(s) possible(s) : ou bien : 	dispenseRequest.numberOfRepeatsAllowed
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
* medication[x] only CodeableConcept or Reference(FrMedicationDocument or FrMedicationsCombinaisonDocument)
  * ^short = "Produit de santé"

// --- Auteur ---
* requester MS
* requester.extension contains FrActorExtension named author 0..1 
* requester.extension[author] ^short = "Auteur du document Prescription"
* requester.extension[author].extension[type].valueCode = #AUT (exactly)
* requester.extension[author].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

// --- Prescripteur ---
* performer MS
* performer.extension contains FrActorExtension named prescripteur 0..1
* performer.extension[prescripteur] ^short = "Prescripteur"
* performer.extension[prescripteur].extension[type].valueCode = #PRF (exactly)
* performer.extension[prescripteur].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

* authoredOn MS
// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(Condition or Observation)

//  une copie du plan de traitement médicamenteux 
// ou bien basedOn lien vers le plan de traitement ?
/*
* basedOn 0..1 MS
* basedOn only Reference(FrCarePlanDocument)
*/
* supportingInformation only Reference(MedicationRequest)
  * ^short = "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux."
  * identifier MS
    * ^short = "Identifiant de la ligne de traitement dans un plan de traitement."

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
  * extension contains FrDispenserInstructionExtension named instructionsAuDispensateur 0..1 MS 
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

* reasonReference[renouvellement] only Reference(Observation)
* reasonReference[renouvellement] ^short = "Période de renouvellement"

* reasonReference[ald] only Reference(Observation)
* reasonReference[ald] ^short = "En rapport avec une Affection Longue Durée (ALD)"

* reasonReference[accidentTravail] only Reference(Observation)
* reasonReference[accidentTravail] ^short = "En rapport avec accident travail"

* reasonReference[prevention] only Reference(Observation)
* reasonReference[prevention] ^short = "En rapport avec la prévention"

* reasonReference[nonRemboursable] only Reference(Observation)
* reasonReference[nonRemboursable] ^short = "Non remboursable"

* reasonReference[horsAMM] only Reference(Observation)
* reasonReference[horsAMM] ^short = "Hors AMM"

// Précondition
* extension contains FrPreconditionExtension named precondition 0..1
  * ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."

