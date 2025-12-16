Profile: FRCDATransfusionDeProduitsSanguins
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-transfusion-de-produits-sanguins
Title: "CDA - FR Transfusion de produits sanguins"
Description: "Entrée FR-Transfusion-de-produits-sanguins: <p>Cette entrée permet d'indiquer s'il a eu ou pas transfusion de produit sanguin.</p>"
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
and frTransfusionDeProduitsSanguins 1..1

* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frTransfusionDeProduitsSanguins] 1..1
* templateId[frTransfusionDeProduitsSanguins].root = "1.2.250.1.213.1.1.3.48.10"
* templateId[frTransfusionDeProduitsSanguins] ^short = "Conformité FR-Transfusion-de-produits-sanguins (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'observation</b>"
* code.code = #MED-145
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"

* text MS
* text 1..1
* text ^short = "Partie narrative de l’observation"

* statusCode.code MS
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Transfusion de produit sanguin."
* value only BL



