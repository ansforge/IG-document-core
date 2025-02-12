// StructureDefinition for ClinicalDocument
Profile: FrClinicalDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument
Id: fr-core-clinical-document
Title: "clinicalDocument"
Description: "L'élément de l'en-tête CDA 'ClinicalDocument' est l’élément racine d’un document médical."
* ^status = #draft
* realmCode 1..1 
  * ^short = "Type de consentement Périmètre d’utilisation : France."
* typeId 1..1 
  * ^short = "Référence au standard CDA R2."
* templateId 3..* 
  * ^short = "Déclarations de conformité."
* id 1..1 
  * ^short = "Identifiant unique du document."
* code 1..1 
  * ^short = "Type de document."
* title 1..1 
  * ^short = "Titre du document." 
* effectiveTime 1..1 
  * ^short = "Date et heure de création du document."
* confidentialityCode 1..1 
  * ^short = "Niveau de confidentialité du document."
* languageCode 1..1 
  * ^short = "Langue principale du document."
* setId 1..1 
  * ^short = "Identifiant du lot de versions du même document."
* versionNumber 1..1 
  * ^short = "Numéro de version du document."
* copyTime 0..0 //Elément obsolète à ne pas utiliser
* recordTarget 1..1
* recordTarget only fr-core-record-target
  * ^short = "Patient/Usager concerné par le document."
* author 1..*
* author only fr-core-author
  * ^short = "Professionnel ou patient/usager ou système, auteur du document incluant la structure de rattachement de l'auteur."
* dataEnterer 0..1 
* dataEnterer only fr-core-data-enterer
  * ^short = "Opérateur de saisie."
* informant 0..* 
* informant only FrInformant 
  * ^short = "Informateur (informant), ayant fourni des informations utiles aux actes en rapport avec la production du document." 
* custodian 1..1 
* custodian only FrCustodian 
  * ^short = "Structure conservant le document et garantissant son cycle de vie." 
* informationRecipient 0..* 
* informationRecipient only FrInformationRecipient 
  * ^short = "Destinataire prévu du document." 
* legalAuthenticator 1..1 
* legalAuthenticator only FrLegalAuthenticator 
  * ^short = "Professionnel ou patient/usager ou système responsable du document." 
* authenticator 0..* 
* authenticator only FrAuthenticator 
  * ^short = "Professionnel attestant la validité du document" 
* participant 0..* 
* participant only FrParticipant 
  * ^short = "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire."
* inFulfillmentOf 0..* 
* inFulfillmentOf only FrInFulfillmentOf 
  * ^short = "Prescription" 
* documentationOf 1..* 
* documentationOf only FrDocumentationOf 
  * ^short = "Evènement documenté et notamment le cadre d'exercice." 
* relatedDocument 0..1 
* relatedDocument only FrRelatedDocument 
  * ^short = "Document de référence (à remplacer, transformé, …)." 
* authorization 0..* 
* authorization only FrAuthorization 
  * ^short = "Consentement associé au document." 
* componentOf 1..1 
  * ^short = "Prise en charge du patient/usager et notamment la date et le secteur d'activité."