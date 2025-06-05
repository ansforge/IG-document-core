Logical: AutorisationSubstitution
//Id: fr-autorisation-substitution
Title: "Autorisation substitution"
Description: """Modèle logique métier de l'entrée Autorisation substitution"""
Characteristics: #can-be-target

* typeSubstitution 1..1 CodeableConcept "Type de substitution autorisé entre le traitement prescrit et le traitement dispensé."
* statut 1..1 code "Statut de l'entrée"
* statut = #completed