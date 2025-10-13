Logical: FrActeImagerie
Parent: Section
Title: "Acte d'imagerie"
Description: """Section Acte d'imagerie"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection
  * complicationsActe 0..1 FrComplicationsActe "Section Complications Acte"
  * expositionsRadiations 0..1 FrExpositionRadiations "Section Expositions aux radiations"
  * catalogueObjects 1..1 FrObjectCatalog "Section Object catalog"
* entree
  * techniqueImagerie 1..1 FrTechniqueImagerie "Entrée technique d'imagerie"
  * administrationProduits 0..* FrAdministrationProduitDeSante "Produits de santé administrés pendant l'acte d'imagerie"

