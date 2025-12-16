Profile: FRCDAObservationTNM 
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-observationtnm
Title: "CDA - FR ObservationTNM "
Description: "Entrée FR-ObservationTNM : <table>
      <tbody>
         <tr>
            <td>
               <p>IHE-APSR - TNMStageObservation</p>
               <ul>
                  <li>
                     <p>Cette entrée n’est utilisable que dans une entrée FR-Liste-des-observations (1.3.6.1.4.1.19376.1.8.1.3.6). Cette entrée est basée sur l’entrée FR-Observation-Anatomo-pathologique (1.3.6.1.4.1.19376.1.8.1.4.9) qu’elle spécialise.</p>
                  </li>
               </ul>
               <ul>
                  <li>
                     <p>The UICC/AJCC TNM \"entry\" Content Modul is a template for a complex structured observation usable in tumor pathology contexts. It contains in machine-readable form all the information concerning a TNM formula for a problem investigated.</p>
                  </li>
               </ul>
               <ul>
                  <li>
                     <p>Chaque observation AP doit indiquer l'identifiant de l'échantillon concerné. </p>
                  </li>
               </ul>
            </td>
         </tr>
      </tbody>
   </table>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 0..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frObservationTNM 1..1
and iheUICCAJCCTNMStagingAndGrading 1..1

* templateId[frObservationTNM] 1..1
* templateId[frObservationTNM].root = "1.2.250.1.213.1.1.3.134"
* templateId[frObservationTNM] ^short = "Conformité FR-ObservationTNM (CI-SIS)"
* templateId[iheUICCAJCCTNMStagingAndGrading] 1..1
* templateId[iheUICCAJCCTNMStagingAndGrading].root = "1.3.6.1.4.1.19376.1.3.10.4.2"
* templateId[iheUICCAJCCTNMStagingAndGrading] ^short = "Conformité UICC/AJCC TNM Staging and Grading (IHE APSR)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* text MS
* text 0..1
* text ^short = "Description narrative de l'observation"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date et heure de l'observation"
* value MS
* value 0..1
* value ^short = "Valeur de l'observation Le type de donnée et les valeurs dépendent de la donnée exprimée.  Les résultats numériques utilisent le type de données PQ et l'unité est indiquée.  Le résultat est absent en cas d'observation «aborted»"
* value only CD

* entryRelationship MS
* entryRelationship 0..*

* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open

* entryRelationship contains 
dummySlice6364 0..1
 and frTNMClassification 1..1



