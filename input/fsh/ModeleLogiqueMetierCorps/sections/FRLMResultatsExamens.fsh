Logical: FRLMResultatsExamens
Id: fr-lm-resultats-examens
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Résultats d'examens"
Description: """Section Résultats d'examens"""
Characteristics: #can-be-target

* sousSection 0..0
* entree
  * actes 1..* FRLMActe "Entrée Acte"
  * referencesExternes 0..* FRLMReferencesExternes "Entrée Références externes"
  * observation 0..* FRLMObservation "Entrée Simple observation"