Profile: FRCDADemandeDExamenOuDeSuiviIMGDA 
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-demande-d-examen-ou-de-suivi-img-da
Title: "CDA - FR Demande d examen ou de suivi IMG DA "
Description: "Entrée FR-Demande-d-examen-ou-de-suivi-IMG-DA : <p>IHE-PCC - Observation Request</p>
   <p>Chaque acte d'imagerie demandé est enregistré dans une entrée FR-Demande-d-examen-ou-de-suivi avec les informations suivantes :</p>
   <ul>
      <li>
         <p>Modalité + commentaire sur la modalité</p>
      </li>
      <li>
         <p>Si modalité = \"TEP\" et fonction étudiée = \"Autre\" ou \"FDG Oncologie/Infectieux/inflammatoire\" ou \"F-DOPA oncologie\"</p>
         <ul>
            <li>
               <p>Injection de produit de contraste souhaitée ? (Oui / Non) </p>
            </li>
         </ul>
      </li>
      <li>
         <p>Localisation anatomique + précision topographique</p>
      </li>
      <li>
         <p>Délai souhaité (date limite)</p>
      </li>
      <li>
         <p>Évènements associés (en amont ou en aval) à l'examen demandé</p>
      </li>
      <li>
         <p>Si modalité = \"TEP\" ou \"Scintigraphie\" </p>
         <ul>
            <li>
               <p>Fonction(s) étudiée(s) + commentaire sur la fonction étudiée</p>
            </li>
         </ul>
      </li>
      <li>
         <p> Cette entrée est basée sur l'entrée FR-Demande-d-examen-ou-de-suivi(1.2.250.1.213.1.1.3.27) qu'elle spécialise. </p>
      </li>
   </ul>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheObservationRequest 1..1
and ccdPlanOfCareActivityPlannedRealised 1..1
and frDemandeDexamenOuDeSuivi 1..1
and frDemandeDexamenOuDeSuiviIMGDA 1..1

* templateId[iheObservationRequest] 1..1
* templateId[iheObservationRequest].root = "1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1"
* templateId[iheObservationRequest] ^short = "Conformité Observation Request (IHE PCC)"
* templateId[ccdPlanOfCareActivityPlannedRealised] 1..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Supply Activity (CCD)"
* templateId[frDemandeDexamenOuDeSuivi] 1..1
* templateId[frDemandeDexamenOuDeSuivi].root = "1.2.250.1.213.1.1.3.27"
* templateId[frDemandeDexamenOuDeSuivi] ^short = "Conformité FR-Demande-d-examen-ou-de-suivi (CI-SIS)"
* templateId[frDemandeDexamenOuDeSuiviIMGDA] 1..1
* templateId[frDemandeDexamenOuDeSuiviIMGDA].root = "1.2.250.1.213.1.1.3.27.3"
* templateId[frDemandeDexamenOuDeSuiviIMGDA] ^short = "Conformité FR-Demande-d-examen-ou-de-suivi-IMG-DA (CI-SIS)"

* code MS
* code ^short = "<b>Modalité de l’examen d’imagerie demandée</b>"
* code MS
* code 1..1
* code ^short = "Modalité de l’examen d’imagerie demandée"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-demande-acte-imagerie-cisis

* code MS
* code 1..1
* code ^short = "Modalité de l’examen d’imagerie demandée"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-demande-acte-imagerie-cisis

* text MS
* text 1..1
* text ^short = "Description"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date limite souhaitée de l'examen d'imagerie"
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frCommentaireER 0..1
 and frFonctionEtudiee 0..*
 and frSimpleObservation 0..1


* targetSiteCode 1..*
* targetSiteCode ^short = "<p>
      <b>Localisation anatomique</b>
   </p>
   <div>Valeur issue de la terminologie <b>SNOMED-CT</b> (2.16.840.1.113883.6.96)</div>"
* targetSiteCode.qualifier ^short = "<b>Modificateur topographique</b>"

