// -------------------------------------------------------------------------------				
//  Logical Model				Entete.fsh
// -------------------------------------------------------------------------------				
Logical: ModeleLogiqueMetierEntete								
Title: "**1-Modèle logique métier de l'en-tête**"				
Description:  """En-tête d’un document."""										
* identifiantUniqueDocument 1..1 Identifier "identifiant unique du document."
* typeDocument 1..1 CodeableConcept "Type de document."				
* dateDeCreation 1..1 dateTime "Date de création du document."				
* niveauConfidentialite 1..1 CodeableConcept  "Niveau de confidentialité du document."				
* languePrincipaleDocument 1..1 CodeableConcept "Langue principale du document."
* identifiantDuLotDeVersions  1..1 Identifier  "Identifiant du lot de versions du même document."		
* versionDocument 1..1 string "Numéro de version du document."
* statutDocument 1..1 CodeableConcept "Statut du document."
* patientDocument 1..1 PatientDocument "Patient / Usager."
* auteurDocument 1..* AuteurDocument "Auteur du document."	
* informateurDocument 0..* InformateurDocument "Informateur (informant), ayant fourni des informations utiles aux actes en rapport avec la production du document."	
* structureConservationDocument 1..1 string "Structure chargée de la conservation du document."	
* destinataireDocument 0..* string "Destinataire prévu du document."	
* professionnelResponsableDocuement 1..1	string "Responsable du document."				
* operateurSaisie 0..1 string "Opérateur de saisie."
* professionnelAttestantValiditeDocument 0..* string "Professionnel attestant la validité du contenu du document."				
* participant 0..* string "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire."							
* associationPrescription  1..1 string "Association du document à une prescription."				
* evenementDocumente 1..* string "Evènement documenté et notamment le cadre d'exercice."				
* documentReference 0..1 string "Document de référence."
* consentementAssocieAuDocument 0..*	string "Consentement associé au document."
* associationPriseEncharge 1..1 string "Association du document à une prise en charge."
//--- END				
//--- END				
//--- END				
				
