Logical: DICOMActeImagerie
//Id: fr-dicom-acte-imagerie
Parent: Section
Title: "Acte d'imagerie"
Description: """Modèle logique métier de la section DICOM Acte d'imagerie"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection
  * complications 0..1 DICOMComplication "Section Complications"
  * expositionsRadiations 0..1 DICOMExpositionRadiations "Section Expositions aux radiations"
  * catalogueObjects 1..1 DICOMObjectCatalog "Section Catalogue d'objects"
* entree
  * techniqueImagerie 1..1 DICOMTechniqueImagerie "Entrée technique d'imagerie"
  * administrationProduits 0..* DICOMAdministrationProduitDeSante "Entrée Administration de produits"

