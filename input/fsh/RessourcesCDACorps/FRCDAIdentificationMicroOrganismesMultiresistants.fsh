Profile: FRCDAIdentificationMicroOrganismesMultiresistants
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-identification-micro-organismes-multiresistants
Title: "CDA - FR Identification micro organismes multiresistants"
Description: "Entrée FR-Identification-micro-organismes-multiresistants: <ul>
      <li>
         <p>Cette entrée permet de décrire sous forme textuelle les micro-organismes identifiés. </p>
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
and frIdentificationMicroOrganismesMultiresistants 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frIdentificationMicroOrganismesMultiresistants] 1..1
* templateId[frIdentificationMicroOrganismesMultiresistants].root = "1.2.250.1.213.1.1.3.48.5"
* templateId[frIdentificationMicroOrganismesMultiresistants] ^short = "Conformité FR-Identification-micro-organismes-multiresistants (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #MED-144
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Description sous forme textuelle des micro-organismes identifiés"
* value only ST



