Logical: DICOMActeImagerie
//Id: fr-dicom-acte-imagerie
Parent: Section
Title: "Acte d'imagerie"
Description: """Modèle logique métier de la section DICOM Acte d'imagerie"""
Characteristics: #can-be-target

* titreSection 1..1 
* techniqueImagerie 1..1 Base "Entrée technique d'imagerie"
* administrationProduits 0..* Base "Entrée Administration de produits"
* complications 0..1 DICOMComplication "Section Complications"
* expositionsRadiations 0..1 Base "Section Expositions aux radiations"
* catalogueObjects 1..1 Base "Section Catalogue d'objects"