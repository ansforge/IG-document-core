Logical: DICOMObjectCatalog
//Id: fr-dicom-object-catalog
Parent: Section
Title: "Object Catalog"
Description: """Modèle logique métier de la section DICOM Object Catalog"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* entree
  * examenImagerie 0..* DICOMExamenImagerie "Entrée DICOM Historique Examen imagerie"