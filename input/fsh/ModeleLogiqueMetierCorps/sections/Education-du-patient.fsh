Logical: EducationPatient
//Id: fr-education-du-patient
Parent: Section
Title: "Education du patient"
Description: """Modèle logique métier de la section Education du patient"""
Characteristics: #can-be-target

* sousSection 0..0 
* entree 
  * acte  0..* Acte "Entrée Acte"
  * observation  0..* SimpleObservation "Entrée Simple observation"
  * reference 0..* ReferencesExternes "Entrée References externes"