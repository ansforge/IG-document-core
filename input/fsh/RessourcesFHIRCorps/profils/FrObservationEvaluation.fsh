Profile: FrObservationEvaluation
Parent: Observation
Id: fr-observation-evaluation
Title: "Observation - Fr Évaluation"
Description: "FrObservationEvaluation permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category ^short = "Catégorie"
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #survey (exactly)

* code 1..1 MS
* code ^short = "Type d'évaluation : LOINC (2.16.840.1.113883.6.1) ou ICF (2.16.840.1.113883.6.254) ou autre.
Si non trouvé : utiliser le code '54522-8' (Statut fonctionnel) du système LOINC et décrire le type d'évaluation en texte libre."

* code.extension contains FrTranslationExtension named translation 0..1
* code.extension[translation] ^short = "Translation du code"

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'évaluation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"

* performer MS
* performer.extension contains
    FrActorExtension named Evaluateur 0..1 and
    FrActorExtension named Auteur 0..1 and
    FrActorExtension named Participant 0..1

// Evaluateur
* performer.extension[Evaluateur] MS
* performer.extension[Evaluateur] ^short = "Evaluateur"
* performer.extension[Evaluateur].extension[type].valueCode = #PRF (exactly)
* performer.extension[Evaluateur].extension[reference].valueReference only Reference(FrOrganizationDocument)
* performer.extension[Evaluateur].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

// auteur
* performer.extension[Auteur] MS
* performer.extension[Auteur] ^short = "Auteur de l'évaluation"
* performer.extension[Auteur].extension[type].valueCode = #AUT (exactly)
* performer.extension[Auteur].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)

// Participant
* performer.extension[Participant] MS
* performer.extension[Participant] ^short = "Responsable de l'évaluation"
* performer.extension[Participant].extension[type].valueCode = #PART (exactly)
* performer.extension[Participant].extension[reference].valueReference only Reference(FrPractitionerRoleDocument)
* performer.extension[Participant].extension[typeCode].valueCodeableConcept.coding.code = #RESP

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

* component[ComposantN1] ^short = "Composant N1 de l'évaluation"
* component[ComposantN1].code 1..1 MS
* component[ComposantN1].code ^short = "Code de l'évaluation"
* component[ComposantN1].value[x] 1..1 MS
* component[ComposantN1].value[x] ^short = "Résultat de l'évaluation"
* component[ComposantN1].interpretation 0..1 MS
* component[ComposantN1].interpretation ^short = "Interprétation"
* component[ComposantN1].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* component[ComposantN1].extension[note] ^short = "Commentaire"
* component[ComposantN1].extension[note].value[x] MS

* component[ComposantN2] ^short = "Sous-composant N2 de l'évaluation"
* component[ComposantN2].code 1..1 MS
* component[ComposantN2].code ^short = "Code de l'évaluation"
* component[ComposantN2].value[x] 1..1 MS
* component[ComposantN2].value[x] ^short = "Résultat de l'évaluation"
* component[ComposantN2].interpretation 0..1 MS
* component[ComposantN2].interpretation ^short = "Interprétation"

* hasMember MS
* hasMember ^short = "Référence interne"

* derivedFrom 0..1 MS
* derivedFrom ^short = "Statut de l’évaluation"
* derivedFrom only Reference(FrObservationStatut)

// Commentaires
* note ^short = "Commentaires (Annotations)"