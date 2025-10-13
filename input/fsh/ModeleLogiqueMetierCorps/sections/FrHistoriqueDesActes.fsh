Logical: FrHistoriqueDesActes
Parent: Section
Title: "Historique des actes"
Description: """Section Historique des actes"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * actes 1..* FrActe "Entrée Acte"
  * references 1..* FrReferencesExternes "Entrée Références externes"