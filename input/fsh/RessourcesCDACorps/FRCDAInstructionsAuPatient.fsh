Profile: FRCDAInstructionsAuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-instructions-au-patient
Title: "CDA - FR Instructions au patient"
Description: "Entrée FR-Instructions-au-patient: <p>IHE-PCC - Patient-Medication-Instructions <br/>
   </p>
   <p>Cette entrée permet d’enregistrer des instructions au patient : </p>
   <ul>
      <li>
         <p>sous forme textuelle uniquement (c’est notamment le cas pour les prescriptions de médica-ments) ; </p>
      </li>
   </ul>
   <ul>
      <li>
         <p>sous forme codée : chaque instruction est alors codée dans une sous-entrée FR-Instruction-au-patient (c’est notamment le cas pour les prescriptions d’examens de biologie médicale). </p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ihePatientMedicationInstruction 1..1
and ccdPatientInstructions 1..1
and frInstructionsAuPatient 1..1

* templateId[ihePatientMedicationInstruction] 1..1
* templateId[ihePatientMedicationInstruction].root = "1.3.6.1.4.1.19376.1.5.3.1.4.3"
* templateId[ihePatientMedicationInstruction] ^short = "Conformité Patient Medication Instruction (IHE PCC)"
* templateId[ccdPatientInstructions] 1..1
* templateId[ccdPatientInstructions].root = "2.16.840.1.113883.10.20.1.49"
* templateId[ccdPatientInstructions] ^short = "Conformité Patient instructions (CCD)"
* templateId[frInstructionsAuPatient] 1..1
* templateId[frInstructionsAuPatient].root = "1.2.250.1.213.1.1.3.33"
* templateId[frInstructionsAuPatient] ^short = "Conformité FR-Instructions-au-patient (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <br clear='none'/>"
* text MS
* text 1..1
* text ^short = "Instructions au patient"

* statusCode.code MS
* statusCode.code = #completed

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frInstructionAuPatient 0..*



