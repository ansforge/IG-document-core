Profile: FRCDAIsolatMicrobiologique
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-isolat-microbiologique
Title: "CDA - FR Isolat microbiologique"
Description: "Entrée FR-Isolat-microbiologique: <p>IHE-PCC - Laboratory isolate organizer <br/>L'entrée Isolat microbiologique est une entrée de type 'organizer' qui est utilisée pour les comptes rendus comprenant des résultats de microbiologie. <br/>Elle décrit un isolat (milieu de culture sur lequel a poussé un microorganisme) et les résultats d'examens obtenus sur cet isolat (antibiogramme, antifongigramme, sérotype, génotype
                    …). </p>"
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 0..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheLaboratoryIsolateOrganizer 1..1
and frIsolatMicrobiologique 1..1

* templateId[iheLaboratoryIsolateOrganizer] 1..1
* templateId[iheLaboratoryIsolateOrganizer].root = "1.3.6.1.4.1.19376.1.3.1.5"
* templateId[iheLaboratoryIsolateOrganizer] ^short = "Conformité Laboratory Isolate Organizer (IHE PALM)"
* templateId[frIsolatMicrobiologique] 1..1
* templateId[frIsolatMicrobiologique].root = "1.2.250.1.213.1.1.3.79"
* templateId[frIsolatMicrobiologique] ^short = "Conformité FR-Isolat-microbiologique (CI-SIS)"

* code MS
* code ^short = "<div>
      <b>Code isolat : </b>
   </div>
   <div>
      <strong>le code de l’isolat peut être codé avec les terminologies SNOMED CT et NCBI</strong>
   </div>"
* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date et heure des résultats"


