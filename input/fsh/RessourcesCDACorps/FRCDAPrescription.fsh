Profile: FRCDAPrescription
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Supply
Id: fr-cda-prescription
Title: "CDA - FR Prescription"
Description: "Entrée FR-Prescription: <p>IHE-PCC - Supply</p>
   <p>Cette entrée permet de décrire l’acte de prescription lié à un élément substanceAdministration par l’intermédiaire d’un élément entryRelationship dans les entrées suivantes : </p>
   <ul>
      <li>
         <p>FR-Traitement</p>
      </li>
      <li>
         <p>FR-Traitement-maladie-rare</p>
      </li>
      <li>
         <p>FR-Vaccination</p>
      </li>
      <li>
         <p>FR-Vaccin-recommande</p>
      </li>
      <li>
         <p>FR-Fluide-intraveineux<strong/>
         </p>
      </li>
   </ul>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ccdSupplyActivity 1..1
and iheSupplyEntry 1..1
and frPrescription 1..1

* templateId[ccdSupplyActivity] 1..1
* templateId[ccdSupplyActivity].root = "2.16.840.1.113883.10.20.1.34"
* templateId[ccdSupplyActivity] ^short = "Conformité Supply activity (CCD)"
* templateId[iheSupplyEntry] 1..1
* templateId[iheSupplyEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7.3"
* templateId[iheSupplyEntry] ^short = "Conformité Supply Entry (IHE PCC)"
* templateId[frPrescription] 1..1
* templateId[frPrescription].root = "1.2.250.1.213.1.1.3.44"
* templateId[frPrescription] ^short = "Conformité FR-Prescription (CI-SIS)"

* code MS
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frInstructionsAuDispensateur 0..1



