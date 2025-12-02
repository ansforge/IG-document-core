Logical: FRLMReferencesExternes
Id: fr-lm-references-externes
Title: "Modèle logique métier - FR LM Références externes"
Description: """Entrée Références externes"""
Characteristics: #can-be-target

* codeReferenceExterne 1..1 CodeableConcept "Code de l'entrée."
* blocNarratif 1..1 Narrative "Partie narrative de l’entrée."
* reference 1..* Base "Document référencé"
  * externalDocument 1..1 Base "Document référencé"
    * identifiant 1..1 identifier "Identifiant du document"
    * text 0..1 Base "Référence externe du document"
      * reference 0..1 uri "Cet élément contient l’URL du document"
