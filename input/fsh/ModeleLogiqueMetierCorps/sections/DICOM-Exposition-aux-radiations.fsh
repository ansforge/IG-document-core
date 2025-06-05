Logical: DICOMExpositionRadiations
//Id: fr-dicom-exposition-aux-radiations
Parent: Section
Title: "Exposition aux radiations"
Description: """Modèle logique métier de la section DICOM Exposition aux radiations"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* entree 
  * sOPInstanceObservation 0..* DICOMSOPInstanceObservation "Entrée SOP instance Observation"
  * expositionRayonnements 1..1 DICOMExpositionPatient "Entrée Exposition aux rayonnements ionisants"
  * observationGrossesse 1..1 DICOMObservation "Entrée Observation Grossesse"
  * observationIndication 0..1 DICOMObservation "Entrée Observation Indication"
  * quantite 0..* DICOMQuantity "Entrée Quantité"
  * administrationRadiopharmaceutique 0..1 DICOMAdministrationProduitDeSante "Entrée Administration des produits radiopharmaceutiques"