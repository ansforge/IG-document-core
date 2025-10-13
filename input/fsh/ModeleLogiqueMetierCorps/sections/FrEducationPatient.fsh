Logical: FrEducationPatient
Parent: Section
Title: "Education du patient"
Description: """Section Education du patient"""
Characteristics: #can-be-target

* sousSection 0..0 
* entree 
  * acte  0..* FrActe "Entrée Acte"
  * observation  0..* FrObservation "Entrée Simple observation"
  * reference 0..* FrReferencesExternes "Entrée References externes"