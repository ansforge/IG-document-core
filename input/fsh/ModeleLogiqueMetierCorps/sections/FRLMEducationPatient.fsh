Logical: FRLMEducationPatient
Id: fr-lm-education-patient
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Education du patient"
Description: """Section Education du patient"""
Characteristics: #can-be-target

* sousSection 0..0 
* entree 
  * acte  0..* FRLMActe "Entrée Acte"
  * observation  0..* FRLMObservation "Entrée Simple observation"
  * reference 0..* FRLMReferencesExternes "Entrée References externes"