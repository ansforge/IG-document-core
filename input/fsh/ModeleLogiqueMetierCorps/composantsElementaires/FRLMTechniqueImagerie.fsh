Logical: FRLMTechniqueImagerie
Id: fr-lm-technique-imagerie
Title: "Modèle logique métier - FR LM Technique imagerie"
Description: """Technique imagerie"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'observation"
* codeActe 1..1 CodeableConcept "Code de l'acte d'imagerie"
  * ^binding.description = "jdv-code-document-imagerie-cisis (1.2.250.1.213.1.1.5.687)"
* description 0..1 Narrative "Partie narrative de l'observation"
* date 0..1 dateTime "	Date de l'acte"
* modaliteAcquisition 1..* CodeableConcept "Modalité d’acquisition"
  * ^binding.description = "jdv-modalite-acquisition-cisis (1.2.250.1.213.1.1.5.618)"
* lateralite 0..1 CodeableConcept "Latéralité et topographie" 
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
  * topographique 0..1 CodeableConcept "Précision topographique"
    * nom 1..1 CodeableConcept "name"
    * valeur 1..1 CodeableConcept "Valeur de la topographie"
      * ^binding.description = "jdv-modificateur-topographique-cisis (1.2.250.1.213.1.1.5.688)"
* participant 0..1 FRLMParticipantCorps "Participant"