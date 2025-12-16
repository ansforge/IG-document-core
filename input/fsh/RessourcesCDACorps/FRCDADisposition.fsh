Profile: FRCDADisposition
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-disposition
Title: "CDA - FR Disposition"
Description: "Entrée FR-Disposition: <ul>
      <li>
         <p>Cet élément permet d'enregistrer la disposition prévue ou réelle pour le patient (p. ex., admission, retour à la maison après le traitement, etc).</p>
      </li>
   </ul>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheEncounterDisposition 1..1
and frDisposition 1..1

* templateId[iheEncounterDisposition] 1..1
* templateId[iheEncounterDisposition].root = "1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2"
* templateId[iheEncounterDisposition] ^short = "Conformité Encounter Disposition (IHE PCC)"
* templateId[frDisposition] 1..1
* templateId[frDisposition].root = "1.2.250.1.213.1.1.3.97"
* templateId[frDisposition] ^short = "Conformité FR-Disposition (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #11302-7
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Bloc narratif"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date du transport Cet élément est obligatoire si la disposition a déjà été effectué (moodCode='EVN')"
* effectiveTime.low ^short = ""
* effectiveTime.high ^short = ""
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frTransportDuPatient 0..*



