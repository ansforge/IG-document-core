Profile: FRCDADICOMAdministrationRadiopharmaceutique
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-dicom-administration-radiopharmaceutique
Title: "CDA - FR DICOM Administration radiopharmaceutique"
Description: "Entrée FR-DICOM-Administration-radiopharmaceutique: <p>Cette entrée permet d'enregistrer l’administration de produits radiopharmaceutiques :</p>
   <ul>
      <li>
         <p>produit administré</p>
      </li>
      <li>
         <p>dose administrée</p>
      </li>
      <li>
         <p>voie d’administration</p>
      </li>
      <li>
         <p>numéro de lot</p>
      </li>
      <li>
         <p>autres informations liées à l’administration d’un produit </p>
      </li>
   </ul>"
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomAdministrationRadiopharmaceutique 1..1

* templateId[frDicomAdministrationRadiopharmaceutique] 1..1
* templateId[frDicomAdministrationRadiopharmaceutique].root = "1.2.250.1.213.1.1.3.173"
* templateId[frDicomAdministrationRadiopharmaceutique] ^short = "Conformité FR-DICOM-Administration-radiopharmaceutique (CI-SIS)"

* code MS
* code ^short = "<b>Type de traitement</b>
   <br clear='none'/>"
* code.code = #440252007
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED CT"



