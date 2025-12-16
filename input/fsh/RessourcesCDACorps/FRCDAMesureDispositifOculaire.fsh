Profile: FRCDAMesureDispositifOculaire
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-mesure-dispositif-oculaire
Title: "CDA - FR Mesure dispositif oculaire"
Description: "Entrée FR-Mesure-dispositif-oculaire: <p>IHE EYE CARE GEE - Lensometry Measurement Observation</p>
   <p>Cette entrée permet d’enregistrer une mesure appartenant à l’une des rubriques suivantes : </p>
   <ul>
      <li>
         <p>Verres prescrits</p>
      </li>
      <li>
         <p>Types de verres prescrits</p>
      </li>
      <li>
         <p>Verres délivrés</p>
      </li>
      <li>
         <p>Types de verres délivrés</p>
      </li>
      <li>
         <p>Lentilles prescrites</p>
      </li>
      <li>
         <p>Lentilles délivrées</p>
      </li>
   </ul>"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..*
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frMesureDispositifOculaire 1..1
and iheLensometryMeasurementObservation 1..1

* templateId[frMesureDispositifOculaire] 1..1
* templateId[frMesureDispositifOculaire].root = "1.2.250.1.213.1.1.3.122"
* templateId[frMesureDispositifOculaire] ^short = "Déclaration de conformité FR-Mesure-dispositif-oculaire"
* templateId[iheLensometryMeasurementObservation] 1..1
* templateId[iheLensometryMeasurementObservation].root = "1.3.6.1.4.1.19376.1.12.1.3.9"
* templateId[iheLensometryMeasurementObservation] ^short = "Déclaration de conformité Lensometry Measurement Observation (IHE EYE CARE GEE)"

* code MS
* code ^short = "<div>
      <b>Code de l'entrée.</b>
      <br/> Pour les « Verres prescrits », le code est issu du JDV_MesureVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.651). <br/> Pour les « Type de verres prescrits », le code est issu du JDV_MesureTypeVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.652).<br/> Pour les « Verres délivrés », le code est issu du JDV_MesureVerreDelivre_CISIS (1.2.250.1.213.1.1.5.653).<br/> Pour les «
                            Type de verres délivrés », le code est issu du JDV_MesureTypeVerreDelivre_CISIS (1.2.250.1.213.1.1.5.654).<br/> Pour les « Lentilles prescrites », le code est issu du JDV_MesureLentillePrescrite_CISIS (1.2.250.1.213.1.1.5.655).<br/> Pour les « Lentilles délivrées », le code est issu du JDV_MesureLentilleDelivree_CISIS (1.2.250.1.213.1.1.5.656). </div>"
* code MS
* code 1..1
* code ^short = "Code de l'entrée. Pour les « Verres prescrits », le code est issu du JDV_MesureVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.651).  Pour les « Type de verres prescrits », le code est issu du JDV_MesureTypeVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.652). Pour les « Verres délivrés », le code est issu du JDV_MesureVerreDelivre_CISIS (1.2.250.1.213.1.1.5.653). Pour les «
                            Type de verres délivrés », le code est issu du JDV_MesureTypeVerreDelivre_CISIS (1.2.250.1.213.1.1.5.654). Pour les « Lentilles prescrites », le code est issu du JDV_MesureLentillePrescrite_CISIS (1.2.250.1.213.1.1.5.655). Pour les « Lentilles délivrées », le code est issu du JDV_MesureLentilleDelivree_CISIS (1.2.250.1.213.1.1.5.656). "
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mesure-verre-prescrit-cisis

* code MS
* code 1..1
* code ^short = "Code de l'entrée. Pour les « Verres prescrits », le code est issu du JDV_MesureVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.651).  Pour les « Type de verres prescrits », le code est issu du JDV_MesureTypeVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.652). Pour les « Verres délivrés », le code est issu du JDV_MesureVerreDelivre_CISIS (1.2.250.1.213.1.1.5.653). Pour les «
                            Type de verres délivrés », le code est issu du JDV_MesureTypeVerreDelivre_CISIS (1.2.250.1.213.1.1.5.654). Pour les « Lentilles prescrites », le code est issu du JDV_MesureLentillePrescrite_CISIS (1.2.250.1.213.1.1.5.655). Pour les « Lentilles délivrées », le code est issu du JDV_MesureLentilleDelivree_CISIS (1.2.250.1.213.1.1.5.656). "
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mesure-verre-prescrit-cisis

* code MS
* code 1..1
* code ^short = "Code de l'entrée. Pour les « Verres prescrits », le code est issu du JDV_MesureVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.651).  Pour les « Type de verres prescrits », le code est issu du JDV_MesureTypeVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.652). Pour les « Verres délivrés », le code est issu du JDV_MesureVerreDelivre_CISIS (1.2.250.1.213.1.1.5.653). Pour les «
                            Type de verres délivrés », le code est issu du JDV_MesureTypeVerreDelivre_CISIS (1.2.250.1.213.1.1.5.654). Pour les « Lentilles prescrites », le code est issu du JDV_MesureLentillePrescrite_CISIS (1.2.250.1.213.1.1.5.655). Pour les « Lentilles délivrées », le code est issu du JDV_MesureLentilleDelivree_CISIS (1.2.250.1.213.1.1.5.656). "
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mesure-verre-prescrit-cisis

* code MS
* code 1..1
* code ^short = "Code de l'entrée. Pour les « Verres prescrits », le code est issu du JDV_MesureVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.651).  Pour les « Type de verres prescrits », le code est issu du JDV_MesureTypeVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.652). Pour les « Verres délivrés », le code est issu du JDV_MesureVerreDelivre_CISIS (1.2.250.1.213.1.1.5.653). Pour les «
                            Type de verres délivrés », le code est issu du JDV_MesureTypeVerreDelivre_CISIS (1.2.250.1.213.1.1.5.654). Pour les « Lentilles prescrites », le code est issu du JDV_MesureLentillePrescrite_CISIS (1.2.250.1.213.1.1.5.655). Pour les « Lentilles délivrées », le code est issu du JDV_MesureLentilleDelivree_CISIS (1.2.250.1.213.1.1.5.656). "
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mesure-verre-prescrit-cisis

* code MS
* code 1..1
* code ^short = "Code de l'entrée. Pour les « Verres prescrits », le code est issu du JDV_MesureVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.651).  Pour les « Type de verres prescrits », le code est issu du JDV_MesureTypeVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.652). Pour les « Verres délivrés », le code est issu du JDV_MesureVerreDelivre_CISIS (1.2.250.1.213.1.1.5.653). Pour les «
                            Type de verres délivrés », le code est issu du JDV_MesureTypeVerreDelivre_CISIS (1.2.250.1.213.1.1.5.654). Pour les « Lentilles prescrites », le code est issu du JDV_MesureLentillePrescrite_CISIS (1.2.250.1.213.1.1.5.655). Pour les « Lentilles délivrées », le code est issu du JDV_MesureLentilleDelivree_CISIS (1.2.250.1.213.1.1.5.656). "
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mesure-verre-prescrit-cisis

* code MS
* code 1..1
* code ^short = "Code de l'entrée. Pour les « Verres prescrits », le code est issu du JDV_MesureVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.651).  Pour les « Type de verres prescrits », le code est issu du JDV_MesureTypeVerrePrescrit_CISIS (1.2.250.1.213.1.1.5.652). Pour les « Verres délivrés », le code est issu du JDV_MesureVerreDelivre_CISIS (1.2.250.1.213.1.1.5.653). Pour les «
                            Type de verres délivrés », le code est issu du JDV_MesureTypeVerreDelivre_CISIS (1.2.250.1.213.1.1.5.654). Pour les « Lentilles prescrites », le code est issu du JDV_MesureLentillePrescrite_CISIS (1.2.250.1.213.1.1.5.655). Pour les « Lentilles délivrées », le code est issu du JDV_MesureLentilleDelivree_CISIS (1.2.250.1.213.1.1.5.656). "
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mesure-verre-prescrit-cisis

* text MS
* text 1..1
* text ^short = "Description narrative de l'observation."

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date et heure de la mesure. Si la date et l'heure sont inconnus, utiliser l'attribut nullFlavor='UNK'. "
* value MS
* value 1..1
* value ^short = "Valeur de l'observation."
* value only ANY


* targetSiteCode 1..1
* targetSiteCode ^short = "<div>
      <b>targetSiteCode</b> provenant du JDV_TypeDispositifOcculaire_CISIS(1.2.250.1.213.1.1.5.716)</div>"
* targetSiteCode.qualifier ^short = "<div>
      <b>Latéralité</b>
   </div>"

