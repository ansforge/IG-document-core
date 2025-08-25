Profile: FrQuantityDICOM
Parent: Observation
Id: Fr-quantity-DICOM
Title: "Observation - Fr quantity DICOM"
Description: "FrQuantityDICOM permet d'enregistrer les mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques en précisant : 
le type de la mesure, la localisation anatomique / latéralité / topographie, la quantité, si la mesure quantitative est basée sur les données d’une image, une référence à l’image peut être précisée dans la partie narrative."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* valueQuantity.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis (required)
* valueQuantity.system = "http://dicom.nema.org/resources/ontology/DCM"

* insert FrRuleSetSimpleObservation