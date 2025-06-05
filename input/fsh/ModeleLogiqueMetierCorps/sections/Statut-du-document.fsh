Logical: StatutDocument
//Id: fr-statut-du-document
Parent: Section
Title: "Statut du document"
Description: """Modèle logique métier de la section Statut du document"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..1
  * statutDocument 1..1 StatutDocumentEntry "Entrée Statut du document"