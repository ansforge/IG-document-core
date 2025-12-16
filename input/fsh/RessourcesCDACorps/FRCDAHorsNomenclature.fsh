Profile: FRCDAHorsNomenclature
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-hors-nomenclature
Title: "CDA - FR Hors nomenclature"
Description: "Entrée FR-Hors-nomenclature: <p>IHE-PCC - Simple-Observation </p>
   <ul>
      <li>
         <p>Cette observation permet d'indiquer si l’acte est hors nomenclature. </p>
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
and frHorsNomenclature 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frHorsNomenclature] 1..1
* templateId[frHorsNomenclature].root = "1.2.250.1.213.1.1.3.48.33"
* templateId[frHorsNomenclature] ^short = "Conformité FR-Hors-nomenclature (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Code de l'observation</b>
   </div>"
* code.code = #GEN-298
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Horodatage de l'entrée"
* value MS
* value 1..1
* value ^short = "RésultatL'attribut @value pourra prendre l'une des deux valeurs suivantes : • value='true' : l’acte n’est pas hors nomenclature • value='false' : l’acte est hors nomenclature "
* value only BL



