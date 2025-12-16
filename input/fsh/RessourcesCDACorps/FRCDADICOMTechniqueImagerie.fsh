Profile: FRCDADICOMTechniqueImagerie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Procedure
Id: fr-cda-dicom-technique-imagerie
Title: "CDA - FR DICOM Technique imagerie"
Description: "Entrée FR-DICOM-Technique-imagerie: <p>DICOM Part 20 - Procedure Technique</p>
   <p> Cette entrée permet d’enregistrer les différents paramètres de l’acquisition d’image : </p>
   <ul>
      <li>
         <p> acte d'imagerie </p>
      </li>
      <li>
         <p> modalité d'acquisition </p>
      </li>
      <li>
         <p> localisation anatomique / latéralité / topographie </p>
      </li>
      <li>
         <p>d'autres paramètres de l'acte </p>
      </li>
   </ul>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomTechniqueImagerie 1..1
and dicomProcedureTechnique 1..1

* templateId[frDicomTechniqueImagerie] 1..1
* templateId[frDicomTechniqueImagerie].root = "1.2.250.1.213.1.1.3.153"
* templateId[frDicomTechniqueImagerie] ^short = "Conformité FR-DICOM-Technique-imagerie (CI-SIS)"
* templateId[dicomProcedureTechnique] 1..1
* templateId[dicomProcedureTechnique].root = "1.2.840.10008.9.14"
* templateId[dicomProcedureTechnique] ^short = "Conformité Procedure Technique (DICOM Part 20)"

* code MS
* code ^short = "<b>Code de l'acte d'imagerie :</b>
   <br clear='none'/> Valeur provenant du <b>JDV_CodesDocumentImagerie_CISIS (1.2.250.1.213.1.1.5.687)</b>"
* code MS
* code 1..1
* code ^short = "Code de l'acte d'imagerie : Valeur provenant du JDV_CodesDocumentImagerie_CISIS (1.2.250.1.213.1.1.5.687)"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis

* text MS
* text 0..1
* text ^short = "Partie narrative de l'entrée"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'acte"

* targetSiteCode 1..1
* targetSiteCode ^short = "<b>Localisation anatomique :</b>
   <br clear='none'/> Valeur provenant du <b>JDV_LocalisationAnatomique_CISIS(1.2.250.1.213.1.1.5.694)</b>"
* targetSiteCode.qualifier ^short = "<b>Précision topographique</b>"

