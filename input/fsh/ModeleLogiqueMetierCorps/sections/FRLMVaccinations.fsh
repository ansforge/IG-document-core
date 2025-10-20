Logical: FRLMVaccinations
Id: fr-lm-vaccinations
Parent : Section
Title: "Modèle logique métier - FR LM Vaccinations"
Description: """Section Vaccinations"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * vaccinations 1..* FRVaccination "Entrée Vaccination"