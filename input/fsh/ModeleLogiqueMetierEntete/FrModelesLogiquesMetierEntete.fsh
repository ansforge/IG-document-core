// -------------------------------------------------------------------------------				
//  Logical Model				entete-document.fsh
// -------------------------------------------------------------------------------				
Logical: EnteteDocument							
Title: "1- Modèle logique métier de l'en-tête"				
Description:  """Eléments de l'en-tête contenat les données d'indentification du document."""										
* identifiantUniqueDocument 1..1 Identifier "Identifiant unique du document."
* typeDocument 1..1 CodeableConcept "Type de document."				
* dateDeCreation 1..1 dateTime "Date de création du document."				
* niveauConfidentialite 1..1 CodeableConcept  "Niveau de confidentialité du document."				
* languePrincipaleDocument 1..1 CodeableConcept "Langue principale du document."
* identifiantDuLotDeVersions  1..1 Identifier  "Identifiant du lot de versions du même document."		
* versionDocument 1..1 string "Numéro de version du document."
* statutDocument 1..1 CodeableConcept "Statut du document."
* patientDocument 1..1 PatientDocument "1.1- Patient / Usager."
* auteurDocument 1..* AuteurDocument "1.2- Auteur du document."	
* informateurDocument 0..* InformateurDocument "1.3- Informateur (informant), ayant fourni des informations utiles aux actes en rapport avec la production du document."	
* structureConservationDocument 1..1 StructureConservationDocument "1.4- Structure chargée de la conservation du document."	
* destinataireDocument 0..* DestinatairePrevuDocument "1.5- Destinataire prévu du document."	
* responsableDocuement 1..1 ResponsableDocument "1.6- Responsable du document."	
* validateurDocument 0..* ValidateurDocument "1.7- Professionnel attestant la validité du contenu du document."				
* operateurSaisie 0..1 OperateurSaisie "1.8- Opérateur de saisie."			
* participant 0..* ParticipantDocument "1.9- Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire."							
* associationPrescription  1..1 AssociationPrescription "1.10- Association du document à une prescription."				
* evenementDocumente 1..* EvenementDocumente "1.11- Evènement documenté et notamment le cadre d'exercice."				
* documentReference 0..1 DocumentReference "1.12- Document de référence."
* consentementAssocieAuDocument 0..* ConsentementDocument "1.13- Consentement associé au document."
* associationPriseEncharge 1..1 AssociationPriseEncharge "1.14- Association du document à une prise en charge."
//--- END				
//--- END				
//--- END				