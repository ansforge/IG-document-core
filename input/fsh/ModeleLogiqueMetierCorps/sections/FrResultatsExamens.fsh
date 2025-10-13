Logical: FrResultatsExamens
Parent: Section
Title: "Résultats d'examens"
Description: """Section Résultats d'examens"""
Characteristics: #can-be-target

* sousSection 0..0
* entree
  * actes 1..* FrActe "Entrée Acte"
  * referencesExternes 0..* FrReferencesExternes "Entrée Références externes"
  * observation 0..* FrObservation "Entrée Simple observation"