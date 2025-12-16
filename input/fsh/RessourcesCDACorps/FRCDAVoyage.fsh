Profile: FRCDAVoyage
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-voyage
Title: "CDA - FR Voyage"
Description: "Entrée FR-Voyage: <p>Travel : FR-Voyage <br/>Cette entrée permet d’indiquer le type de voyage. </p>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 0..1
* id ^short = "Identifiant"

* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frVoyage 1..1

* templateId[frVoyage] 1..1
* templateId[frVoyage].root = "1.2.250.1.213.1.1.3.174"
* templateId[frVoyage] ^short = "Conformité FR-Voyage (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Type de voyage</b>
   </div>"
* code.code = #94651-7
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"

* effectiveTime MS
* effectiveTime 1..1
* value MS
* value 1..1
* value ^short = "Pays visité"
* value only ANY

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frSimpleObservation 0..*



