Profile: FRCDATransfertDuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-transfert-du-patient
Title: "CDA - FR Transfert du patient"
Description: "Entrée FR-Transfert-du-patient: <p>IHE-PCC - Patient Transfer</p>
   <p>L'entrée Transfert du patient est une entrée de type 'act' qui porte les informations relatives au transfert d'un patient vers un autre service du même hôpital ou d'un hôpital différent. </p>"
* id 1..1
* id ^short = "Identifiant"

* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains ihePatientTransfer 1..1
and frTransfertDuPatient 1..1

* templateId[ihePatientTransfer] 1..1
* templateId[ihePatientTransfer].root = "1.3.6.1.4.1.19376.1.5.3.1.1.25.1.4.1"
* templateId[ihePatientTransfer] ^short = "Déclaration de conformité Patient Transfer (IHE PCC)"
* templateId[frTransfertDuPatient] 1..1
* templateId[frTransfertDuPatient].root = "1.2.250.1.213.1.1.3.28"
* templateId[frTransfertDuPatient] ^short = "Déclaration de conformité FR-Transfert-du-patient (CI-SIS)"

* code MS
* code ^short = "<b>Code de l'entrée</b>
   <br clear='none'/>"
* code.code = #80413-8
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"

* text MS
* text 1..1
* text ^short = "Texte décrivant le transfert"

* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date du transfert Cet élément est obligatoire si le transfert a été réalisé. Ses sous-éléments 'low' et 'high' indiquent respectivement l'horodatage du début et de la fin du transfert.  Dans le cas où le transfert n'a pas eu lieu, cet élément peut figurer dans l'entrée, le sous-élément 'low' indiquant dans ce cas l'heure présumée du début du transfert. "
* effectiveTime.low ^short = "Date de début du transfert"
* effectiveTime.high ^short = "Date de fin du transfert"
* participant MS
* participant 0..1
* participant ^short = "Destination"



