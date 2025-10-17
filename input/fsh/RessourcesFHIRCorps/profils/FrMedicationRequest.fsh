// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FrMedicationRequest
Parent: MedicationRequest
Id: fr-medication-request
Title: "MedicationRequest - Fr Traitement Prescrit"
Description: "
 - FrMedicationRequest permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* intent = #order
* identifier 1..* MS
* identifier ^short = "Identifiant prescription"
* status 1..1 MS
* status ^short = "Statut"
* status = #completed
// Dosages progressifs, fractionnés 
* dosageInstruction
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

// document externe 
* instantiatesUri ^short = "Référence de la prescription"

* basedOn 0..1 MS
  * ^short = "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux."
* basedOn only Reference(FrMedicationRequest)

* dosageInstruction.additionalInstruction ^slicing.discriminator.type = #pattern
* dosageInstruction.additionalInstruction ^slicing.discriminator.path = "$this"
* dosageInstruction.additionalInstruction ^slicing.rules = #open
 
* dosageInstruction.additionalInstruction contains
    instructionsPatient 0..1 MS and
    precondition 0..1
 
* dosageInstruction.additionalInstruction[instructionsPatient]
  * ^short = "Instruction au patient"
  * coding 1..1
  * coding.code = #PINSTRUCT
  * coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
 
* dosageInstruction.additionalInstruction[precondition]
  * ^short = "Condition préalable à l'utilisation du médicament"
  * text = "Permet de décrire les conditions préalables à l'utilisation du médicament."

* dispenseRequest MS
  * extension contains $medicationRequest-dispenseRequest-dispenserInstruction-r5 named dispenserInstructionR5 0..1
  * extension[dispenserInstructionR5].valueAnnotation 1..1
    * ^short = "instructions au dispensateur"
  * quantity MS
    * ^short = "Quantité à dispenser" 
  * validityPeriod MS
    * ^short = "Période de renouvellement"
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

* reasonReference[ald] only Reference(FrCondition)
* reasonReference[ald] ^short = "En rapport avec une Affection Longue Durée (ALD)."
* reasonReference[ald] ^definition = "S'il s'agit d'une Affection Longue Durée (ALD) il faut préciser le problème"

* reasonReference[accidentTravail] only Reference(FrObservationWorkRelatedAccident)
* reasonReference[accidentTravail] ^short = "En rapport avec accident travail"

* reasonReference[prevention] only Reference(FrObservationRelatedToPrevention)
* reasonReference[prevention] ^short = "En rapport avec la prévention"

* reasonReference[nonRemboursable] only Reference(FrObservationNotCovered)
* reasonReference[nonRemboursable] ^short = "Non remboursable"

// à supprimer et à remplacer par une extension de type BL à la racine du profil
* reasonReference[horsAMM] only Reference(FrObservationOutOfNomenclature)
* reasonReference[horsAMM] ^short = "Hors AMM"