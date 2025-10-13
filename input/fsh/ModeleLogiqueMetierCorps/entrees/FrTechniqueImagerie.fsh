Logical: FrTechniqueImagerie
Title: "Technique imagerie"
Description: """Entrée Technique imagerie"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'observation"
* codeActe 1..1 CodeableConcept "Code de l'acte d'imagerie"
  * ^binding.description = "jdv-code-document-imagerie-cisis (1.2.250.1.213.1.1.5.687)"
* description 0..1 Narrative "Partie narrative de l'observation"
* date 0..1 dateTime "	Date de l'acte"
* modaliteAcquisition 1..* CodeableConcept "Modalité d’acquisition"
  * ^binding.description = "jdv-modalite-acquisition-cisis (1.2.250.1.213.1.1.5.618)"
* lateralite 0..1 CodeableConcept "Latéralité et topographie" 
  * ^binding.description = "jdv-localisation-anatomique-cisis (1.2.250.1.213.1.1.5.694)"
  * topographique 0..1 CodeableConcept "Précision topographique"
    * nom 1..1 CodeableConcept "name"
    * valeur 1..1 CodeableConcept "Valeur de la topographie"
      * ^binding.description = "jdv-modificateur-topographique-cisis (1.2.250.1.213.1.1.5.688)"
* participant 0..1 FrParticipantCorps "Participant"