//  Logical Model	: consentement-document				
Logical: ConsentementDocument		
Title: "1.13- Consentement associé au document"	
//Id: fr-consentement-documente			
Description: "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni." 	
Characteristics: #can-be-target	
* consentement  1..1 BackboneElement "Consentement."		 		
  * identifiantConsentement  0..* Identifier "Identifiant du consentement."	
  * typeConsentement 1..1 CodeableConcept "Type de consentement."
  * statutConsentement 1..1 CodeableConcept "Statut du consentement."