Profile: FRCDANotesDuDispensateur
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-notes-du-dispensateur
Title: "CDA - FR Notes du dispensateur"
Description: "Entrée FR-Notes-du-dispensateur: <p>IHE PHARM DIS - fulfillment notes </p>
   <ul>
      <li>
         <p>Une dispensation peut contenir une note du dispensateur (pharmacien).</p>
      </li>
      <li>
         <p>Cette entrée est incluse dans une entrée FR-Traitement-dispense à l’aide d’un élément \"entryRelationship\". </p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* id 0..*
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frNotesDuDispensateur 1..1
and iheFulfillmentNotes 1..1
and ccdFulfillmentInstructions 1..1

* templateId[frNotesDuDispensateur] 1..1
* templateId[frNotesDuDispensateur].root = "1.2.250.1.213.1.1.3.207"
* templateId[frNotesDuDispensateur] ^short = "Conformité FR-Notes-du-dispensateur (CI-SIS)"
* templateId[iheFulfillmentNotes] 1..1
* templateId[iheFulfillmentNotes].root = "1.3.6.1.4.1.19376.1.5.3.1.4.3.1"
* templateId[iheFulfillmentNotes] ^short = "Conformité fulfillment notes (IHE PHARM DIS)"
* templateId[ccdFulfillmentInstructions] 1..1
* templateId[ccdFulfillmentInstructions].root = "2.16.840.1.113883.10.20.1.43"
* templateId[ccdFulfillmentInstructions] ^short = "Conformité Fulfillment instructions (CCD)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* text MS
* text 1..1
* text ^short = "Notes du dispensateur sous forme textuelle"

* statusCode.code MS
* statusCode.code = #completed



