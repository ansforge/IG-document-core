Logical: StatutCliniquePatient
//Id: fr-statut-clinique-patient
Title: "Statut clinique du patient"
Description: """Modèle logique métier de l'entrée Statut clinique du patient"""
Characteristics: #can-be-target

* codeStatutCliniquePatient 1..1 CodeableConcept "Code de l'entrée"
* descriptionNarrative 1..1 Narrative "Description narrative de l'entrée"
* statutEntree 1..1 code "Statut de l'entrée. Fixé à la valeur 'completed'"
* statutCliniquePatient 1..1 CodeableConcept "Statut clinique du patient"