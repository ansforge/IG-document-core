Logical: FRLMConsentement	
Id: fr-lm-consentement	
Title: "Modèle logique métier - FR LM Consentement"			
Description: "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni." 	
Characteristics: #can-be-target	
* . 0..*		 		
* identifiantConsentement  0..* Identifier "Identifiant du consentement."	
* typeConsentement 1..1 CodeableConcept "Type de consentement."
* statutConsentement 1..1 CodeableConcept "Statut du consentement."