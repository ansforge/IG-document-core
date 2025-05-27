Logical: Severite
//Id: fr-severite
Title: "Sévérité"
Description: """Modèle logique métier de l'entrée Sévérité."""
Characteristics: #can-be-target

* identifiantSeverite 1..1 Identifier "Identifiant de l'entrée"
* codeSeverite 1..1 CodeableConcept "Code de l'entrée"
* descriptionNarrative 1..1 Narrative "Description narrative de l'entrée"
* statutSeverite 1..1 code "Statut de l'entrée"
* niveauSeverite 1..1 CodeableConcept "Niveau de sévérité"