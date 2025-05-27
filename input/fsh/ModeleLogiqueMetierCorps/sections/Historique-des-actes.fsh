Logical: HistoriqueDesActes
//Id: fr-historique-des-actes
Parent: Section
Title: "Historique des actes"
Description: """Modèle logique métier de la section Historique des actes"""
Characteristics: #can-be-target

* titreSection 1..1 
* actes 1..* Acte "Entrée Acte"
* references 1..* ReferencesExternes "Entrée Références externes"