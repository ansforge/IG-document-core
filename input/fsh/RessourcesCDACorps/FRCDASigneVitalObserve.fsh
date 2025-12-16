Profile: FRCDASigneVitalObserve
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-signe-vital-observe
Title: "CDA - FR Signe vital observe"
Description: "Entrée FR-Signe-vital-observe: <p>IHE-PCC - Vital Signs Observation</p>
   <ul>
      <li>
         <p>Cette entrée permet d'indiquer les informations détaillées relatives à une mesure clinique spécifique. </p>
      </li>
      <li>
         <p>Cette entrée est utilisée dans un élément component d'un élément Signes vitaux (1.3.6.1.4.1.19376.1.5.3.1.4.13.1). </p>
      </li>
      <li>
         <p>Cette entrée est basée sur l'élément Simple Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13) qu'elle spécialise en portant des contraintes sur les vocabulaires des éléments \"code\" et \"value\". </p>
      </li>
   </ul>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains iheSimpleObservation 1..1
and ccdResultObservation 1..1
and iheVitalSignsObservation 1..1
and frSigneVitalObserve 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[ccdResultObservation] 1..1
* templateId[ccdResultObservation].root = "2.16.840.1.113883.10.20.1.31"
* templateId[ccdResultObservation] ^short = "Conformité Result observation (CCD)"
* templateId[iheVitalSignsObservation] 1..1
* templateId[iheVitalSignsObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.2"
* templateId[iheVitalSignsObservation] ^short = "Conformité Vital Signs Observation (IHE PCC)"
* templateId[frSigneVitalObserve] 1..1
* templateId[frSigneVitalObserve].root = "1.2.250.1.213.1.1.3.50"
* templateId[frSigneVitalObserve] ^short = "Conformité FR-Signe-vital-observé (CI-SIS)"

* code MS
* code ^short = "<b>Signe vital observé</b>"
* code MS
* code 1..1
* code ^short = "Signe vital observé"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-signe-vital-cisis

* text MS
* text 1..1
* text ^short = "Description narrative"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation L'élément <effectiveTime> précise la date de l'observation clinique et doit être présente.  Cet élément doit être précis à la date du jour. Si la date et l'heure sont inconnues, cet élément doit l'indiquer à l'aide d'un attribut nullFlavor. La date doit être enregistrée à l'aide du type de données approprié (pour une date
                        précise ou pour un intervalle contenant un élément <low> et un élément <high>). "
* value MS
* value 1..1
* value ^short = "Observation effectuéeTerminologie utilisée : UCUM (2.16.840.1.113883.6.8)"
* value only PQ


* targetSiteCode 0..1
* targetSiteCode ^short = "<b>Site de l'observation</b>"

