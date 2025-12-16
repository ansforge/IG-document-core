Profile: FRCDAInstructionsAuDispensateur
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-instructions-au-dispensateur
Title: "CDA - FR Instructions au dispensateur"
Description: "Entrée FR-Instructions-au-dispensateur: <p>IHE-PCC - Medication Fulfillment Instructions</p>
   <ul>
      <li>
         <p>Toute prescription peut faire l'objet d'instructions au dispensateur (pharmacien), par exemple pour indiquer que le traitement doit être étiqueté dans une langue étrangère, etc … </p>
      </li>
      <li>
         <p> Cette entrée est incluse dans une entrée Prescription à l'aide d'un élément &lt;entryRelationship&gt;. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdFulfillmentInstructions 1..1
and iheFulfillmentNotes 1..1
and frInstructionsAuDispensateur 1..1

* templateId[ccdFulfillmentInstructions] 1..1
* templateId[ccdFulfillmentInstructions].root = "2.16.840.1.113883.10.20.1.43"
* templateId[ccdFulfillmentInstructions] ^short = "Conformité Fulfillment instructions (CCD)"
* templateId[iheFulfillmentNotes] 1..1
* templateId[iheFulfillmentNotes].root = "1.3.6.1.4.1.19376.1.5.3.1.4.3.1"
* templateId[iheFulfillmentNotes] ^short = "Conformité Medication fulfillment instruction (IHE PCC)"
* templateId[frInstructionsAuDispensateur] 1..1
* templateId[frInstructionsAuDispensateur].root = "1.2.250.1.213.1.1.3.34"
* templateId[frInstructionsAuDispensateur] ^short = "Conformité FR-Instructions-au-dispensateur (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <br clear='none'/>"
* text MS
* text 1..1
* text ^short = "Instructions au dispensateur sous forme textuelle."



