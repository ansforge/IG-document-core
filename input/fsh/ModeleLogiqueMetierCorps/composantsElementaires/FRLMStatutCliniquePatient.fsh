Logical: FRLMStatutCliniquePatient
Id: fr-lm-statut-clinique-patient
Title: "Modèle logique métier - FR LM Statut clinique du patient"
Description: """Statut clinique du patient"""
Characteristics: #can-be-target

* codeStatutCliniquePatient 1..1 CodeableConcept "Code de l'entrée"
* descriptionNarrative 1..1 Narrative "Description narrative de l'entrée"
* statutEntree 1..1 code "Statut de l'entrée. Fixé à la valeur 'completed'"
* statutCliniquePatient 1..1 CodeableConcept "Statut clinique du patient"
