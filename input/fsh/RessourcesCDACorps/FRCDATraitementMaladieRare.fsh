Profile: FRCDATraitementMaladieRare
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-traitement-maladie-rare
Title: "CDA - FR Traitement maladie rare"
Description: "Entrée FR-Traitement-maladie-rare: <p>IHE-PCC - Medications <br/>Cette entrée est une entrée de type substanceAdministration, peu contrainte, permettant de décrire les modalités d'administration d'un médicament au patient. Elle permet d'indiquer le médicament, le mode d'administration, la quantité, la fréquence, la durée de prise du médicament.</p>
   <p>La différence avec l'entrée Traitement (Medications – 1.3.6.1.4.1.19376.1.5.3.1.4.7) est qu'ici la durée du traitement, la fréquence d'administration, la dose administrée et le code du médicament ne sont pas des données obligatoires. </p>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..9
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdMedicationActivity 0..1
and iheMedicationsEntry 0..1
and frTraitementMaladieRare 1..1
and iheModeAdministrationNormal 0..1
and iheModeAdministrationDosesProgressives 0..1
and iheModeAdministrationDosesFractionnees 0..1
and iheModeAdministrationDosesConditionnelles 0..1
and iheModeAadministrationDosesCombinees 0..1
and iheModeAadministrationDosesDebutDiffere 0..1

* templateId[ccdMedicationActivity] 0..1
* templateId[ccdMedicationActivity].root = "2.16.840.1.113883.10.20.1.24"
* templateId[ccdMedicationActivity] ^short = "Conformité Medication Activity (CCD)"
* templateId[iheMedicationsEntry] 0..1
* templateId[iheMedicationsEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7"
* templateId[iheMedicationsEntry] ^short = "Conformité Medications Entry (IHE PCC)"
* templateId[frTraitementMaladieRare] 1..1
* templateId[frTraitementMaladieRare].root = "1.2.250.1.213.1.1.3.13"
* templateId[frTraitementMaladieRare] ^short = "Conformité FR-Traitement-maladie-rare (CI-SIS) "
* templateId[iheModeAdministrationNormal] 0..1
* templateId[iheModeAdministrationNormal].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7.1"
* templateId[iheModeAdministrationNormal] ^short = "Mode d'administration : Normal"
* templateId[iheModeAdministrationDosesProgressives] 0..1
* templateId[iheModeAdministrationDosesProgressives].root = "1.3.6.1.4.1.19376.1.5.3.1.4.8"
* templateId[iheModeAdministrationDosesProgressives] ^short = "Mode d'administration : Doses progressives"
* templateId[iheModeAdministrationDosesFractionnees] 0..1
* templateId[iheModeAdministrationDosesFractionnees].root = "1.3.6.1.4.1.19376.1.5.3.1.4.9"
* templateId[iheModeAdministrationDosesFractionnees] ^short = "Mode d'administration : Doses fractionnées"
* templateId[iheModeAdministrationDosesConditionnelles] 0..1
* templateId[iheModeAdministrationDosesConditionnelles].root = "1.3.6.1.4.1.19376.1.5.3.1.4.10"
* templateId[iheModeAdministrationDosesConditionnelles] ^short = "Mode d'administration : Doses conditionnelles"
* templateId[iheModeAadministrationDosesCombinees] 0..1
* templateId[iheModeAadministrationDosesCombinees].root = "1.3.6.1.4.1.19376.1.5.3.1.4.11"
* templateId[iheModeAadministrationDosesCombinees] ^short = "Mode d'administration : Doses combinées"
* templateId[iheModeAadministrationDosesDebutDiffere] 0..1
* templateId[iheModeAadministrationDosesDebutDiffere].root = "1.3.6.1.4.1.19376.1.5.3.1.4.21"
* templateId[iheModeAadministrationDosesDebutDiffere] ^short = "Mode d'administration : Doses à début différé"

* code MS
* code ^short = "<b>Acte ou situation</b>"
* code MS
* code 0..1
* code ^short = "Acte ou situation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationCode-cisis

* text MS
* text 0..1
* text ^short = "Partie narrative de l’entrée"

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frPrescription 0..*
 and dummySlice3979 0..*
 and frInstructionsAuPatient 0..1
 and frReferenceInterne 0..*

* approachSiteCode 0..1
* approachSiteCode ^short = "<div>
      <b>Région anatomique d'administration</b>
      <br clear='none'/> Valeur issue du <b>JDV_HumanSubstanceAdministrationSite_CISIS </b>(2.250.1.213.1.1.5.686)</div>"


