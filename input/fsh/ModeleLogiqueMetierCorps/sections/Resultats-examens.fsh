Logical: ResultatsExamens
Parent: Section
//Id: fr-resultats-examens
Title: "Résultats d'examens"
Description: """Modèle logique métier de la section Résultats d'examens"""
Characteristics: #can-be-target

* actes 1..* Acte "Entrée Acte"
* referencesExternes 0..* ReferencesExternes "Entrée Références externes"
* simpleObservation 0..* SimpleObservation "Entrée Simple observation"