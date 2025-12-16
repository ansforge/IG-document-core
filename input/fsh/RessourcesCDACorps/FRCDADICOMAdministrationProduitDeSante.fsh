Profile: FRCDADICOMAdministrationProduitDeSante
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-dicom-administration-produit-de-sante
Title: "CDA - FR DICOM Administration produit de sante"
Description: "Entrée FR-DICOM-Administration-produit-de-sante: <p>DICOM Part 20 - Procedural Medication</p>
   <p>Cette entrée permet d'enregistrer l’administration de produits (hors radiopharmaceutiques) :</p>
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
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomAdministrationProduitDeSante 1..1
and dicomProceduralMedication 1..1

* templateId[frDicomAdministrationProduitDeSante] 1..1
* templateId[frDicomAdministrationProduitDeSante].root = "1.2.250.1.213.1.1.3.151"
* templateId[frDicomAdministrationProduitDeSante] ^short = "Conformité FR-DICOM-Administration-produit-de-sante (CI-SIS) "
* templateId[dicomProceduralMedication] 1..1
* templateId[dicomProceduralMedication].root = "1.2.840.10008.9.13"
* templateId[dicomProceduralMedication] ^short = "Conformité Procedural Medication (DICOM Part 20)"

* code MS
* text MS
* text 0..1
* text ^short = "Partie narrative de l'entrée"



