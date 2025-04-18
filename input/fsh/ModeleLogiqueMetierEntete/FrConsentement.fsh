//  Logical Model	: consentement-document				
Logical: Consentement		
Title: "Modèle métier - Consentement associé au document"	
//Id: fr-consentement-documente			
Description: "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni." 	
Characteristics: #can-be-target			 		
* identifiantConsentement  0..* Identifier "Identifiant du consentement."	
* typeConsentement 1..1 CodeableConcept "Type de consentement."
* statutConsentement 1..1 CodeableConcept "Statut du consentement."