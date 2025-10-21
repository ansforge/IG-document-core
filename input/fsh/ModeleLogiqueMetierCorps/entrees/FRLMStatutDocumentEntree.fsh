Logical: FRLMStatutDocumentEntree
Id: fr-lm-statut-document-entree
Title: "Modèle logique métier - FR LM Statut du document"
Description: """Entrée Statut du document"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* description 1..1 Narrative "Description narrative de l'entrée"
* statut 1..1 code "Statut de l'entrée. Fixé à la valeur 'completed'"
* date 1..1 dateTime "Date du statut du document"
* statutDocument 1..1 CodeableConcept "Statut du document"
  * ^binding.description = "jdv-statut-document-cisis (1.2.250.1.213.1.1.5.93)"
* auteur 0..1 FRLMAuteur "Auteur"
