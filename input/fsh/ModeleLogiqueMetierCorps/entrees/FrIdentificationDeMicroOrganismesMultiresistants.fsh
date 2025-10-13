Logical: FrIdentificationDeMicroOrganismesMultiresistants
Title: "Identification de micro-organismes multirésistants"
Description: """Entrée Identification de micro-organismes multirésistants"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l’observation"
* code 1..1 CodeableConcept "Code de l’observation"
* description 1..1 Narrative "Description narrative de l’observation"
* statut 1..1 code "Statut de l’observation"
  * ^binding.description = "jdv-hl7-v3-ActStatus-cisis (2.16.840.1.113883.1.11.15933)"
* date 1..1 dateTime "Date de l’observation"
* valeur 1..1 string "Description sous forme textuelle des micro-organismes identifiés"
* auteur 0..1 Auteur "Auteur"