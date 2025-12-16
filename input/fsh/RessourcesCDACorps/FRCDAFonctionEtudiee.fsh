Profile: FRCDAFonctionEtudiee
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-fonction-etudiee
Title: "CDA - FR Fonction etudiee"
Description: "Entrée FR-Fonction-etudiee: <ul>
      <li>
         <p>Cette entrée permet d’enregistrer la fonction étudiée lors d’un examen \"TEP\" ou \"Scintigraphie\". </p>
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
and frFonctionEtudiee 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frFonctionEtudiee] 1..1
* templateId[frFonctionEtudiee].root = "1.2.250.1.213.1.1.3.48.36"
* templateId[frFonctionEtudiee] ^short = "Conformité FR-Fonction-etudiee (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Catégorie de l’observation effectuée</b>
   </div>"
* code.code = #MED-1133
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Description narrative de la valeur de l’observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Horodatage de l’entrée"
* value MS
* value 0..1
* value ^short = "Fonction étudiéeSi la modalité 'TEP' : Valeur issue du JDV_FonctionEtudieeTEP_CISIS (1.2.250.1.213.1.1.5.668)Si la modalité='Scintigraphie' : Valeur issue du JDV_FonctionEtudieeScintigraphie_CISIS (1.2.250.1.213.1.1.5.669)"
* value only CD



