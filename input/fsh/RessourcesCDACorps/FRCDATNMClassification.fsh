Profile: FRCDATNMClassification
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-tnm-classification
Title: "CDA - FR TNM classification"
Description: "Entrée FR-TNM-classification: <table>
      <tbody>
         <tr>
            <td>
               <p>IHE-APSR - TNM Grading</p>
               <p>Cette entrée permet de classer les tumeurs dans le cadre de la formule de tumeur TNM de l'UICC/AJCC. </p>
               <p>Les valeurs autorisées pour chaque site tumoral sont données par l'UICC. </p>
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

* templateId contains frTNMClassification 1..1
and iheTNMGrading 1..1

* templateId[frTNMClassification] 1..1
* templateId[frTNMClassification].root = "1.2.250.1.213.1.1.3.145"
* templateId[frTNMClassification] ^short = "Conformité TNM-classification (CI-SIS)"
* templateId[iheTNMGrading] 1..1
* templateId[iheTNMGrading].root = "1.3.6.1.4.1.19376.1.3.10.9.28"
* templateId[iheTNMGrading] ^short = "Conformité TNM-Grading (IHE-APSR)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #59541-3
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 0..1
* text ^short = "Description narrative de l'observation"

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation L'élément <effectiveTime> doit être présent dans une observation autonome (c'est-à-dire une observation qui n'apparait pas dans un <organiser> qui contient déjà un <effectiveTime>) et doit contenir la date de l'observation clinique. Cet élément doit être précis à la date du jour. Si la date et l'heure sont inconnues, cet élément
                        doit l'indiquer à l'aide d'un attribut nullFlavor. La date doit être enregistrée à l'aide du type de données approprié (pour une date précise ou pour un intervalle contenant un élément <low> et un élément <high>). "
* value MS
* value 1..1
* value ^short = "Valeur de l'observation"
* value only CD



