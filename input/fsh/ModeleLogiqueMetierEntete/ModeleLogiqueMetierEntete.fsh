// -------------------------------------------------------------------------------				
//  Logical Model				Entete.fsh
// -------------------------------------------------------------------------------				
Logical: ModeleLogiqueMetierEntete				
//Id: fr-modelesLogiquesMetier-entete				
Title: "1- Modèle logique métier de l'en-tête "				
Description:  """En-tête d’un document."""				
//* insert SetFmmandStatusRule( 2, informative)
* entete 1..1 BackboneElement "Entête d’un document"						
* entete.identifiantUniqueDocument 1..1 Identifier "identifiant unique du document"
* entete.modeleDocument 1..1 Extension "Modèle du document et version du modèle"				
* entete.typeDocument 1..1 CodeableConcept "Type de document"				
* entete.titreDocument 1..1 string  "Titre du document"				
* entete.dateDeCreation 1..1 dateTime "Date de création du document"				
* entete.niveauConfidentialite 1..1 CodeableConcept  "Niveau de confidentialité du document "				
* entete.languePrincipaleDocument 1..1 CodeableConcept "Langue principale du document "
* entete.identifiantDuLotDeVersions  1..1 Identifier  "Identifiant du lot de versions du même document"		
* entete.versionDocument 1..1 string "Numéro de version du document"
* entete.statutDocument 1..1 CodeableConcept "Statut du document"
* entete.patient 1..1 FrPatientDocument "Patient / Usager"
* entete.auteurDocument 1..* FrAuteurDocument "Auteur du document"	
* entete.informateur 0..* string "Informateur (informant), ayant fourni des informations utiles aux actes en rapport avec la production du document "	
* entete.structureConservationDocument 1..1 string "Structure chargée de la conservation du document"	
* entete.destinataireDocument 0..* string "Destinataire prévu du document"	
* entete.professionnelResponsableDocuement 1..1	string "Responsable du document"				
* entete.operateurSaisie 0..1 string "Opérateur de saisie"
* entete.professionnelAttestantValiditeDocument 0..* string "Professionnel attestant la validité du contenu du document"				
* entete.participant 0..* string "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire "							
* entete.associationPrescription  1..1 string "Association du document à une prescription"				
* entete.evenementDocumente 1..* string "Evènement documenté et notamment le cadre d'exercice "				
* entete.documentReference 0..1 string "Document de référence"
* entete.consentementAssocieAuDocument 0..*	string "Consentement associé au document"
* entete.associationPriseEncharge 1..1 string "Association du document à une prise en charge"
//--- END				
//--- END				
//--- END				
				
