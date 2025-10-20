Logical: FRLMResultatsLaboratoireBiologieSecondeIntention
Id: fr-lm-resultats-laboratoire-biologie-seconde-intention
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Résultats de laboratoire de biologie de seconde intention"
Description: """Section Résultats de laboratoire de biologie de seconde intention"""
Characteristics: #can-be-target

* sousSection 0..0
* entree
  * observation  0..1 FRLMObservation "Entrée Simple observation"
  * documentAttache 1..* FRLMDocumentAttache "Entrée Document attaché"