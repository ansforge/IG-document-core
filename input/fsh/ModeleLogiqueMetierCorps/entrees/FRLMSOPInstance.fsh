Logical: FRLMSOPInstance
Id: fr-lm-sop-instance
Title: "Modèle logique métier - FR LM SOP Instance"
Description: """Entrée SOP Instance"""
Characteristics: #can-be-target

* uuidSOPInstance 1..* Identifier "UUID SOP instance"
* classeSOP 1..1 CodeableConcept "Classe SOP"
  * ^binding.description = "JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)"
* description 0..1 Narrative "Partie narrative de l'observation"
* statut 1..1 code "status de l'observation"
* date 0..1 dateTime "Date de l'observation"
* nombreCadresReferences 0..1 integer "Nombres de cadres référencés"