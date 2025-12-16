Profile: FRCDADocumentAttache
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-document-attache
Title: "CDA - FR Document attache"
Description: "Entrée FR-Document-attache: <ul>
      <li>
         <p>L'entrée Document Attaché est une entrée de type organiser qui permet de regrouper dans une même entrée les éléments qui contiennent : <br/> - un élément de type Simple Observations (1.3.6.1.4.1.19376.1.5.3.1.4.13) définissant la nature du document attaché, <br/> - un élément de type ObservationMedia acceptant tout type d'objets prévus par CDA et qui porte le document
                            attaché. </p>
      </li>
      <li>
         <p>Son contenu est un élément codé en Base 64. </p>
      </li>
      <li>
         <p>Le charset par défaut est le charset ISO-8859-1.</p>
      </li>
      <li>
         <p> L'avantage de cette entrée est qu'elle permet de porter pratiquement tous types de média (pdf, image, etc…), contrairement à l'élément Image illustrative qui ne peut porter que des images au format gif, jpeg, png ou bm. </p>
      </li>
   </ul>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1
* id ^short = "Identifiant"

* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDocumentAttache 1..1

* templateId[frDocumentAttache] 1..1
* templateId[frDocumentAttache].root = "1.2.250.1.213.1.1.3.18"
* templateId[frDocumentAttache] ^short = "Conformité FR-Document-attache (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>"
* code.code = #55107-7
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date de l'entrée"


