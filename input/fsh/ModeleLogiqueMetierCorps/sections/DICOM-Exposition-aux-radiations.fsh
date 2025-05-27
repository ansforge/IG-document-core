Logical: DICOMExpositionRadiations
//Id: fr-dicom-exposition-aux-radiations
Parent: Section
Title: "Exposition aux radiations"
Description: """Modèle logique métier de la section DICOM Exposition aux radiations"""
Characteristics: #can-be-target

* titreSection 1..1 
* sOPInstanceObservation 0..* Base "Entrée SOP instance Observation"
* expositionRayonnements 1..1 Base "Entrée Exposition aux rayonnements ionisants"
* observationGrossesse 1..1 Base "Entrée Observation Grossesse"
* observationIndication 0..1 Base "Entrée Observation Indication"
* quantite 0..* Base "Entrée Quantité"
* administrationRadiopharmaceutique 0..1 Base "Entrée Administration des produits radiopharmaceutiques"