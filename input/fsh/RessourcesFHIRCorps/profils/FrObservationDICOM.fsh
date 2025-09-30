Profile: FrObservationDICOM
Parent: Observation
Id: fr-observation-dicom
Title: "Observation - Fr Observation DICOM"
Description: "FrObservationDICOM permet d'enregistrer une observation avec une valeur codée ou textuelle."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"
* status MS
* status ^short = "Statut de l'observation"

* code 1..1 MS
* code ^short = "Code de l'observation"

* effective[x] MS
* effective[x] ^short = "Date de l'observation"

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'observation"

* bodySite MS
* bodySite ^short = "Localisation anatomique"
* bodySite from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-localisation-anatomique-cisis

* bodySite only FrDocumentCodeableConcept
* bodySite.coding ^short = "Précision topographique"

* bodySite.coding.extension[qualifier].extension[name].valueCodeableConcept.coding.system = $SCT
* bodySite.coding.extension[qualifier].extension[name].valueCodeableConcept.coding.code = #106233006
* bodySite.coding.extension[qualifier].extension[name].valueCodeableConcept.coding.display = "modificateur topographique"

// Contraindre la sous-extension value à venir du ValueSet CISIS
* bodySite.coding.extension[qualifier].extension[value].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis (required)
* bodySite.coding.extension[qualifier].extension[value] ^short = "Valeur de la topographie"

* derivedFrom MS
* derivedFrom ^short = "Informations d’une instance SOP DICOM d'un objet référencé : la classe SOP Instance et la référence WADO."
* derivedFrom only Reference(FrImagingStudyDICOM) //Dans FrImagingStudyExamenImagerieDICOM on trouve series.instance

//Proposition1 :
//* valueQuantity only Quantity
//Proposition 2 :
* hasMember MS
* hasMember ^short = "Mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques"
* hasMember only Reference(FrObservationQuantityDICOM)
