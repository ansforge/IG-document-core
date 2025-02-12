//  Logical Model : informateur-non-professionnel			
Logical: NonProfessionnelDocument			
Title: "1.3.2- Informateur non professionnel"	
//Id: fr-informateur-non-professionnel			
Description: "Informateur non professionnel ayant fourni des informations relatives au document, ou personne de confiance désignée par le patient/usager  
ou personne à prévenir en cas d’urgence ou aidant du patient/usager ou personne aidée." 	
Characteristics: #can-be-target	
* rolePersonne 1..1 CodeableConcept "Rôle joué par la personne."		 		
* lienPatient 0..1 CodeableConcept "Lien de la personne avec le patient/usager."		 		
  * precisionLien 0..* Narrative "Précision sur le lien de la personne."		 		
* adressePersonne 0..* Address  "Adresse."		 		
* coordonneesTelecom 0..* ContactPoint "Coordonnées télécom."	 		
* personnePhysique 1..1 BackboneElement "Personne physique."				
  * nomPersonne	1..1 BackboneElement "Nom de la personne."	
    * nom 1..1 string "Nom."
    * prenom 0..1 string "Prénom."			