Logical: Vaccinations
Parent : Section
//Id: fr-vaccinations
Title: "Vaccinations"
Description: """Modèle logique métier de la section Vaccinations"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * vaccinations 1..* Vaccination "Entrée Vaccination"