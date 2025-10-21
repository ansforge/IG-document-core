Logical: FRLMStatutDocument
Id: fr-lm-statut-document
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Statut du document"
Description: """Section Statut du document"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..1
  * statutDocument 1..1 FRLMStatutDocumentEntree "Entrée Statut du document"