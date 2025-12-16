Profile: FRCDAActe
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Procedure
Id: fr-cda-acte
Title: "CDA - FR Acte"
Description: "Entrée FR-Acte: <p>IHE-PCC - Procedure</p>
   <p>L'entrée 'Acte' est une entrée de type 'procedure' décrivant un acte planifié ou réalisé. </p>"
* id 1..*
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheProcedureEntry 1..1
and ccdPlanOfCareActivityPlanned 0..1
and ccdPlanOfCareActivityPlannedRealised 0..1
and frActe 1..1

* templateId[iheProcedureEntry] 1..1
* templateId[iheProcedureEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.19"
* templateId[iheProcedureEntry] ^short = "Conformité Procedure Entry (IHE PCC)"
* templateId[ccdPlanOfCareActivityPlanned] 0..1
* templateId[ccdPlanOfCareActivityPlanned].root = "2.16.840.1.113883.10.20.1.29"
* templateId[ccdPlanOfCareActivityPlanned] ^short = "Conformité Plan of care activity (CCD) si acte prévu "
* templateId[ccdPlanOfCareActivityPlannedRealised] 0..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Procedure activity (CCD) si acte réalisée "
* templateId[frActe] 1..1
* templateId[frActe].root = "1.2.250.1.213.1.1.3.62"
* templateId[frActe] ^short = "Conformité FR-Acte (CI-SIS)"

* code MS
* code ^short = "<p>
      <strong>Code d'acte :</strong>
   </p>
   <p>Aussi utilisé pour indiquer qu'il n'y a pas d'acte, ou qu'on ne sait pas s'il y en a.</p>
   <p>
      <strong>Terminologie CCAM </strong>(1.2.250.1.215.300.1) si possible.</p>
   <p>Si l'acte n'est pas trouvé dans la terminologie CCAM, utiliser le code='C25218' displayName='Intervention' codeSystem='2.16.840.1.113883.3.26.1.1' codeSystemName='NCIT' et décrire l'acte sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante.</p>
   <p>ou</p>
   <p>
      <strong>jdv-absent-or-unknown-procedure-cisis</strong> (1.2.250.1.213.1.1.5.665) pour les actes chirurgicaux</p>"
* text MS
* text 1..1
* text ^short = "Description narrative"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'acte - Si l'acte a été réalisé : l'élément 'effectiveTime' indique la date de réalisation. - Si l'acte a été annulé (statusCode 'Cancelled') ou arrêté (statusCode 'aborted'), l'élément 'effectiveTime' peut garder sa valeur initiale si elle était renseignée. - Si l'acte est prévu : l'élément 'effectiveTime' indique
                            la date de planification si elle est connue ou la prend la valeur nullflavor='UNK' si elle n'est pas connue."
* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frReferenceInterne 0..*
 and frSimpleObservation 0..1

* approachSiteCode 0..*
* approachSiteCode ^short = "<div>
      <b>Voie d’abord</b>
   </div>
   <div>
      <p>Non renseigné si la voie d'abord est contenue dans le code de l'acte (comme c'est le cas avec la CCAM).</p>
      <b>SNOMED CT</b> (2.16.840.1.113883.6.96) </div>"
* approachSiteCode.qualifier ^short = "<div>
      <b>Latéralité</b>
   </div>
   <div>
      <b>SNOMED CT</b> (2.16.840.1.113883.6.96) </div>"

* targetSiteCode 0..*
* targetSiteCode ^short = "<div>
      <b>Localisation anatomique </b>
   </div>
   <div>
      <strong>SNOMED CT (</strong>
      <strong>2.16.840.1.113883.6.96</strong>
      <strong>)</strong>
   </div>"
* targetSiteCode.qualifier ^short = "<div>
      <b>Précision topographique</b>
   </div>"

