Profile: FRCDAReferencesExternes
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-references-externes
Title: "CDA - FR References externes"
Description: "Entrée FR-References-externes: <p>IHE-PCC - External-References</p>
   <ul>
      <li>
         <p>Cette entrée de type act permet de relier un élément à un (ou des) document(s) externe(s) par l’intermédiaire d’une adresse URL. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #ACT
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheExternalReferences 1..1
and frReferencesExternes 1..1

* templateId[iheExternalReferences] 1..1
* templateId[iheExternalReferences].root = "1.3.6.1.4.1.19376.1.5.3.1.4.4"
* templateId[iheExternalReferences] ^short = "Conformité External References (IHE PCC)"
* templateId[frReferencesExternes] 1..1
* templateId[frReferencesExternes].root = "1.2.250.1.213.1.1.3.35"
* templateId[frReferencesExternes] ^short = "Conformité FR-References-externes (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Code de l'entrée</b>
   </div>
   <div>Fixé à nullFlavor='NA'</div>"
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entréePeut faire référence à la partie narrative de la section"



