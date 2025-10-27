Profile: FRObservationQuantityImagingDocument
Parent: Observation
Id: fr-observation-quantity-imaging-document
Title: "Observation - FR Observation Quantity Imaging Document"
Description: "FRObservationQuantityImagingDocument permet d'enregistrer les mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques en précisant : 
le type de la mesure, la localisation anatomique / latéralité / topographie, la quantité, si la mesure quantitative est basée sur les données d’une image, une référence à l’image peut être précisée dans la partie narrative."

* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"

* status MS
* status ^short = "Statut de l'observation"

* code MS
* code ^short = "Code de l'observation"

* subject 1..1 MS
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient concerné"

* effective[x] 1..1 MS
* effective[x] ^short = "Date de l'observation"

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'observation"
* valueQuantity MS
* valueQuantity ^short = "Quantité mesurée"
* valueQuantity.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis (required)
* valueQuantity.system = "http://dicom.nema.org/resources/ontology/DCM"