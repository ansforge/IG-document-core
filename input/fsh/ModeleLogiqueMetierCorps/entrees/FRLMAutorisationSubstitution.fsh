Logical: FRLMAutorisationSubstitution
Id: fr-lm-autorisation-substitution
Title: "Modèle logique métier - FR LM Autorisation substitution"
Description: """Entrée Autorisation substitution"""
Characteristics: #can-be-target

* typeSubstitution 1..1 CodeableConcept "Type de substitution autorisé entre le traitement prescrit et le traitement dispensé."
* statut 1..1 code "Statut de l'entrée"
* statut = #completed
