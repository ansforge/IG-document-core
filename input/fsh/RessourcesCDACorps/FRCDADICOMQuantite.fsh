Profile: FRCDADICOMQuantite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-quantite
Title: "CDA - FR DICOM Quantite"
Description: "Entrée FR-DICOM-Quantite: <p>DICOM Part 20 - Quantity Measurement</p>
   <p>Cette entrée permet d’enregistrer les mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques en précisant :</p>
   <ul>
      <li>
         <p>Le type de la mesure,</p>
      </li>
      <li>
         <p>La localisation anatomique / latéralité / topographie, </p>
      </li>
      <li>
         <p>La quantité</p>
         <p>Si la mesure quantitative est basée sur les données d’une image, une référence à l’image peut être précisée dans la partie narrative. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains dicomQuantityMeasurement 1..1
and frDicomQuantity 1..1

* templateId[dicomQuantityMeasurement] 1..1
* templateId[dicomQuantityMeasurement].root = "2.16.840.1.113883.10.20.6.2.14"
* templateId[dicomQuantityMeasurement] ^short = "Conformité Quantity Measurement (DICOM Part 20)"
* templateId[frDicomQuantity] 1..1
* templateId[frDicomQuantity].root = "1.2.250.1.213.1.1.3.154"
* templateId[frDicomQuantity] ^short = "Conformité FR-DICOM-Quantite (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>
   <br clear='none'/>"
* code MS
* code 1..1
* code ^short = "Code de l'observation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis

* text MS
* text 0..1
* text ^short = "Partie narrative de l'entrée"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'entrée"
* value MS
* value 1..1
* value ^short = "Quantité mesurée"
* value only PQ


* targetSiteCode 1..1
* targetSiteCode ^short = "<div>
      <b>Localisation anatomique : </b> Valeur issue du JDV_LocalisationAnatomique_CISIS (1.2.250.1.213.1.1.5.694)</div>"
* targetSiteCode.qualifier ^short = "<b>Précision topographique</b>"

