Profile: FRCDADICOMQuantiteSubordonnee
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-quantite-subordonnee
Title: "CDA - FR DICOM Quantite subordonnee"
Description: "Entrée FR-DICOM-Quantite-subordonnee: <p>Cette entrée permet d’enregistrer les mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques en précisant : </p>
   <ul>
      <li>
         <p> Le type de la mesure,  </p>
      </li>
      <li>
         <p> La localisation anatomique / latéralité / topographie,  </p>
      </li>
      <li>
         <p> La quantité </p>
      </li>
   </ul>
   <p>Si la mesure quantitative est basée sur les données d’une image, une référence à l’image peut être précisée dans la partie narrative. </p>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomQuantiteSubordonnee 1..1
and dicomQuantityMeasurement 1..1

* templateId[frDicomQuantiteSubordonnee] 1..1
* templateId[frDicomQuantiteSubordonnee].root = "1.2.250.1.213.1.1.3.168"
* templateId[frDicomQuantiteSubordonnee] ^short = "Conformité FR-DICOM-Quantite-subordonnee (CI-SIS)"
* templateId[dicomQuantityMeasurement] 1..1
* templateId[dicomQuantityMeasurement].root = "2.16.840.1.113883.10.20.6.2.14"
* templateId[dicomQuantityMeasurement] ^short = "Conformité Quantity Measurement (DICOM Part 20)"

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
* targetSiteCode ^short = "<p>
      <strong>Localisation anatomique<br/>Valeur issue du jdv-localisation-anatomique-cisis</strong>
      <br/>(1.2.250.1.213.1.1.5.694)</p>"
* targetSiteCode.qualifier ^short = "<b>Topographie</b>"

