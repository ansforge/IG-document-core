Logical: FRLMVaccinations
Id: fr-lm-vaccinations
Parent : FRLMSection
Title: "Modèle logique métier - FR LM Vaccinations"
Description: """Section Vaccinations"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree.vaccinations 1..* FRLMVaccination "Entrée Vaccination"