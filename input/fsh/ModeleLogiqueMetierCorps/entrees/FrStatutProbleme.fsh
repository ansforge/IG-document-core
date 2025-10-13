Logical: FrStatutProbleme
Title: "Statut du problème"
Description: """Entrée Statut du problème."""
Characteristics: #can-be-target

* codeStatutProbleme 1..1 CodeableConcept "Code de l'entrée"
* descriptionNarrative 1..1 Narrative "Description narrative de l'entrée"
* statutEntree 1..1 code "Statut de l'entrée. Fixé à la valeur 'completed'"
* statutProbleme 1..1 CodeableConcept "Valeur"