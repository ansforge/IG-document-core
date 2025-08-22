Profile: FrObservationEvaluation
Parent: Observation
Id: fr-observation-evaluation
Title: "Observation - Évaluation"
Description: "FrObservationEvaluation permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category ^short = "Catégorie"
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #survey (exactly)

* code 1..1 MS
* code ^short = "Type d'évaluation"
// --- Définition d’un slicing sur code.coding ---
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Séparation du coding principal et de la translation"

// --- Coding principal obligatoire ---
* code.coding contains principal 1..1 MS
* code.coding[principal] ^short = "Coding principal"
* code.coding[principal] ^comment = "Type d'évaluation : LOINC (2.16.840.1.113883.6.1) ou ICF (2.16.840.1.113883.6.254) ou autre.
Si non trouvé : utiliser le code '54522-8' (Statut fonctionnel) du système LOINC et décrire le type d'évaluation en texte libre."

// --- Coding secondaire optionnel (translation) ---
* code.coding contains translation 0..1 MS
* code.coding[translation] ^short = "Translation du code"
* code.coding[translation] ^comment = "Permet d'ajouter une traduction éventuelle du code principal"

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'évaluation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"

// ----------------------
// Slicing performer
// ----------------------
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer MS
* performer contains
    Evaluateur 0..1 and
    Auteur 0..1 and
    Participant 0..1

* performer[Evaluateur] only Reference(FrPractitionerRoleDocument)
* performer[Evaluateur] ^short = "Evaluateur"
* performer[Evaluateur].extension contains $event-performerFunction named performerFunction 0..1
* performer[Evaluateur].extension[performerFunction].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

* performer[Auteur] only Reference(FrPractitionerRoleDocument)
* performer[Auteur] ^short = "Auteur de l'évaluation"
* performer[Auteur].extension contains $event-performerFunction named performerFunction 0..1
* performer[Auteur].extension[performerFunction].valueCodeableConcept.coding.code = #AUT

* performer[Participant] only Reference(FrPractitionerRoleDocument)
* performer[Participant] ^short = "Responsable de l'évaluation"
* performer[Participant].extension contains $event-performerFunction named performerFunction 0..1
* performer[Participant].extension[performerFunction].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* performer[Participant].extension[performerFunction].valueCodeableConcept.coding.code = #RESP

// ----------------------
// Slicing component (N1 vs N2)
// ----------------------
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "extension('http://.../StructureDefinition/evaluation-type')"
* component ^slicing.rules = #open

* component MS
* component ^short = "Composants de l'évaluation"
* component contains
    ComposantN1 0..* and
    ComposantN2 0..*

* component[ComposantN1].code 1..1 MS
* component[ComposantN1].code ^short = "Code de l'évaluation"
* component[ComposantN1].value[x] 1..1 MS
* component[ComposantN1].value[x] ^short = "Résultat de l'évaluation"
* component[ComposantN1].interpretation 0..1 MS
* component[ComposantN1].interpretation ^short = "Interprétation"
* component[ComposantN1].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* component[ComposantN1].extension[note] ^short = "Commentaire"
* component[ComposantN1].extension[note].value[x] MS

* component[ComposantN2].code 1..1 MS
* component[ComposantN2].code ^short = "Code de l'évaluation"
* component[ComposantN2].value[x] 1..1 MS
* component[ComposantN2].value[x] ^short = "Résultat de l'évaluation"
* component[ComposantN2].interpretation 0..1 MS
* component[ComposantN2].interpretation ^short = "Interprétation"

* hasMember MS
* hasMember ^short = "Référence interne"

// à mettre à jour le nom du profil FrObservationStatut
* derivedFrom 0..1 MS
* derivedFrom ^short = "Statut de l’évaluation"
* derivedFrom only Reference(Observation)

// Commentaires
* note ^short = "Commentaires (Annotations)"
