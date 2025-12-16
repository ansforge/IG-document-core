Profile: FRCDADICOMCadresAAfficher
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-cadres-a-afficher
Title: "CDA - FR DICOM Cadres a afficher"
Description: "Entrée FR-DICOM-Cadres-a-afficher: <b>Entrée Cadres à afficher</b>"
* classCode MS
* classCode = #OBS
* moodCode MS
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomSopInstranceObservationSubordonnee 1..1

* templateId[frDicomSopInstranceObservationSubordonnee] 1..1
* templateId[frDicomSopInstranceObservationSubordonnee].root = "1.2.250.1.213.1.1.3.166"
* templateId[frDicomSopInstranceObservationSubordonnee] ^short = "Conformité FR-DICOM-Cadres-a-afficher (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>
   <br clear='none'/>"
* code.code = #113036
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"

* value MS
* value 1..1
* value ^short = "Cadres référencés"
* value only IVL_INT
* value ^type.profile = "http://hl7.org/cda/stds/core/StructureDefinition/IVL-INT"




