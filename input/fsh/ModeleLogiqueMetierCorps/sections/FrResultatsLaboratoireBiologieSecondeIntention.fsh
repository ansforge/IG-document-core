Logical: FrResultatsLaboratoireBiologieSecondeIntention
Parent: Section
Title: "Résultats de laboratoire de biologie de seconde intention"
Description: """Modèle logique métier de la section Résultats de laboratoire de biologie de seconde intention"""
Characteristics: #can-be-target

* sousSection 0..0
* entree
  * observation  0..1 FrObservation "Entrée Simple observation"
  * documentAttache 1..* FrDocumentAttache "Entrée Document attaché"