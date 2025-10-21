Logical: FRLMActeImagerie
Id: fr-lm-acte-imagerie
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Acte d'imagerie"
Description: """Section Acte d'imagerie"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection
  * complicationsActe 0..1 FRLMComplicationsActe "Section Complications Acte"
  * expositionsRadiations 0..1 FRLMExpositionRadiations "Section Expositions aux radiations"
  * catalogueObjects 1..1 FRLMObjectCatalog "Section Object catalog"
* entree
  * techniqueImagerie 1..1 FRLMTechniqueImagerie "Entrée technique d'imagerie"
  * administrationProduits 0..* FRLMAdministrationProduitDeSante "Produits de santé administrés pendant l'acte d'imagerie"

