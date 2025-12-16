Profile: FRCDAActeBiologiePrescrit
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-acte-biologie-prescrit
Title: "CDA - FR Acte biologie prescrit"
Description: "Entrée FR-Acte-biologie-prescrit: <p>IHE-PCC - Observation Request</p>
   <p>Cette entrée est une spécialisation de l’entrée FR-Demande-d-examen-ou-de-suivi (1.2.250.1.213.1.1.3.27) qui permet de décrire une ligne de prescription d’examen de biologie médicale</p>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheObservationRequest 1..1
and ccdPlanOfCareActivityPlannedRealised 1..1
and frDemandeDexamenOuDeSuivi 0..1
and frActeBiologiePrescrit 1..1

* templateId[iheObservationRequest] 1..1
* templateId[iheObservationRequest].root = "1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1"
* templateId[iheObservationRequest] ^short = "Conformité Observation Request (IHE PCC)"
* templateId[ccdPlanOfCareActivityPlannedRealised] 1..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD)"
* templateId[frDemandeDexamenOuDeSuivi] 0..1
* templateId[frDemandeDexamenOuDeSuivi].root = "1.2.250.1.213.1.1.3.27"
* templateId[frDemandeDexamenOuDeSuivi] ^short = "Conformité FR-Demande-d-examen-ou-de-suivi (CI-SIS)"
* templateId[frActeBiologiePrescrit] 1..1
* templateId[frActeBiologiePrescrit].root = "1.2.250.1.213.1.1.3.27.2"
* templateId[frActeBiologiePrescrit] ^short = "Conformité FR-Acte-biologie-prescrit (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Code de l'acte de biologie medicale issue du JDV circuit de la biologie</b>
   </div>
   <div>Si l’examen n’est pas présent dans le JDV JDV Circuit de la biologie, utiliser le code :</div>
   <ul>
      <li>code='19146-0'</li>
      <li>displayName='Test de laboratoire (Identifiant+nom):Identifiant:Ponctuel:Test de référence:Résultat nominal:'</li>
      <li>codeSystem='2.16.840.1.113883.6.1'</li>
      <li>codeSystemName='LOINC'</li>
   </ul>
   <div>avec précision de l’examen sous forme de texte libre.</div>"
* text MS
* text 1..1
* text ^short = "Description narrative"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date prévisionnelle de l'examenValeur fixée à nullFlavor='UNK'"
* value MS
* value 0..1
* value ^short = "Valeur cible   Utilisée par exemple pour INR. "
* value only ANY

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frCommentaireER 0..1
 and frSimpleObservation 0..*
 and frEnRapportAvecALD 1..1
 and frEnRapportAvecAccidentTravail 1..1
 and frEnRapportAvecPrevention 1..1
 and frNonRemboursable 1..1
 and frHorsNomenclature 1..1
 and frInstructionsAuPatient 0..1
 and frPrelevement 1..*


* targetSiteCode 0..1
* targetSiteCode ^short = "<div>
      <b>Localisation anatomique </b>
   </div>
   <div>
      <b>SNOMED CT (</b> (2.16.840.1.113883.6.96) </div>"

