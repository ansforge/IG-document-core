Profile: FrObservationDICOM
Parent: Observation
Id: Fr-Observation-DICOM
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

// Modificateurs topographiques
* extension contains http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure named ModificateurTopographique 0..1 MS

* extension[ModificateurTopographique] ^short = "Précision topographique"
// Contraindre le contenu de l'extension (BodyStructure obligatoire)
* extension[ModificateurTopographique].valueReference only Reference(BodyStructure)

* derivedFrom MS
* derivedFrom ^short = "Informations d’une instance SOP DICOM d'un objet référencé : la classe SOP Instance et la référence WADO."
* derivedFrom only Reference(FrImagingStudyExamenImagerieDICOM) //Dans FrImagingStudyExamenImagerieDICOM on trouve series.instance

//Proposition1 :
//* valueQuantity only Quantity
//Proposition 2 :
* hasMember MS
* hasMember ^short = "Mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques"
* hasMember only Reference(FrQuantityDICOM)
