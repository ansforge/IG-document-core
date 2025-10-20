Logical: FRLMHistoriqueDesActes
Id: fr-lm-historique-des-actes
Parent: Section
Title: "Historique des actes"
Description: """Section Historique des actes"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * actes 1..* FRLMActe "Entrée Acte"
  * references 1..* FRLMReferencesExternes "Entrée Références externes"