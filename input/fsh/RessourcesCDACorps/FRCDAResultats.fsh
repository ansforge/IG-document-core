Profile: FRCDAResultats
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-resultats
Title: "CDA - FR resultats"
Description: "Entrée FR-resultats: <ul>
      <li>
         <p>L'entrée 'FR-Resultats' est une entrée de type 'organizer' regroupant les types des résultats classés par type d’examens (BIO, IMG, etc…).</p>
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

* templateId contains frResultats 1..1

* templateId[frResultats] 1..1
* templateId[frResultats].root = "1.2.250.1.213.1.1.3.208"
* templateId[frResultats] ^short = "Conformité FR-Resultats (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Code de l'entrée en LOINC</b>
   </div>
   <p>
      <b>Type de résultat</b>
   </p>
   <ul>
      <li>26436-6 Biologie polyvalente</li>
      <li>18748-4 Imagerie</li>
      <li>26438-2 Cytologie</li>
      <li>27898-6 Pathologie</li>
      <li>26435-8 Génétique humaine</li>
   </ul>"
* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date"
* effectiveTime.low ^short = ""
* effectiveTime.high ^short = ""


