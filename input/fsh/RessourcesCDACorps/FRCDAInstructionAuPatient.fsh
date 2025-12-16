Profile: FRCDAInstructionAuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-instruction-au-patient
Title: "CDA - FR Instruction au patient"
Description: "Entrée FR-Instruction-au-patient: <p>IHE-PCC - Simple-Observation</p>
   <ul>
      <li>
         <p>Cette entrée permet d’enregistrer une instruction au patient sous forme codée (c’est notamment le cas pour les prescriptions d’examens de biologie médicale). </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frInstructionAuPatient 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frInstructionAuPatient] 1..1
* templateId[frInstructionAuPatient].root = "1.2.250.1.213.1.1.3.48.35"
* templateId[frInstructionAuPatient] ^short = "Conformité FR-Instruction-au-patient (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Code de l'observation</b>
   </div>
   <div>
      <p>Les attributs de cet élément prennent les valeurs suivantes :</p>
      <ul>
         <li>code=’PINSTRUCT’</li>
         <li>codeSystem=’1.3.6.1.4.1.19376.1.5.3.2’</li>
         <li>codeSystemName=’IHEActCode’</li>
      </ul>
   </div>"
* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Horodatage de l’entrée"
* value MS
* value 0..*
* value ^short = "Instruction au patient sous forme codéeJDV dépendant du cas d’usage.  • Pour les prescription d’examen de biologie : JDV_Bio_instruction_patient_CISIS (1.2.250.1.213.1.1.5.691) "
* value only CD



