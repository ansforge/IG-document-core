Profile: FRCDAResultatExamensDeBiologieElementCliniquePertinent
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-resultat-examens-de-biologie-element-clinique-pertinent
Title: "CDA - FR Resultat examens de biologie element clinique pertinent"
Description: "Entrée FR-Resultat-examens-de-biologie-element-clinique-pertinent: <p>IHE-PALM - Laboratory Observation </p>
   <ul>
      <li>
         <p>L'entrée Résultat d'examen / élément clinique pertinent est une entrée de type \"observation\" qui permet de décrire un résultat d'un élément d'un examen de biologie médicale ou un élément clinique pertinent fourni par le prescripteur ou le préleveur dans le contexte clinique de la demande d'examens biologiques. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 0..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheLaboratoryObservation 1..1
and frResultatExamensDeBiologieElementCliniquePertinent 1..1

* templateId[iheLaboratoryObservation] 1..1
* templateId[iheLaboratoryObservation].root = "1.3.6.1.4.1.19376.1.3.1.6"
* templateId[iheLaboratoryObservation] ^short = "Conformité Laboratory Observation (IHE PaLM)"
* templateId[frResultatExamensDeBiologieElementCliniquePertinent] 1..1
* templateId[frResultatExamensDeBiologieElementCliniquePertinent].root = "1.2.250.1.213.1.1.3.80"
* templateId[frResultatExamensDeBiologieElementCliniquePertinent] ^short = "Conformité FR-Resultat-examens-de-biologie-element-clinique-pertinent (CI-SIS)"

* code MS
* code ^short = "<b>Code d'identification de l'analyse ou de l'observation</b>
   <br clear='none'/>"
* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date et heure de ce résultat"
* value MS
* value 0..1
* value ^short = "Valeur du résultat Le type de valeur (attribut xsi:type) est choisi dynamiquement. Les autres attributs qui qualifient cette valeur (comme par exemple l'unité) dépendent du type de donnée choisi. Les résultats qualitatifs codés peuvent le cas échéant être exprimés dans plusieurs systèmes de codage simultanément. De même les résultats numériques peuvent être exprimés
                        simultanément dans plusieurs unités. "
* value only ANY

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
frCommentaireER 0..*
 and frPrelevement 0..*



