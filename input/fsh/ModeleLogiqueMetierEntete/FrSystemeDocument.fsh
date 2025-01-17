// -------------------------------------------------------------------------------				
//  Logical Model				auteurSysteme.fsh
// -------------------------------------------------------------------------------				
Logical: SystemeDocument			
Title: "Système"	
//Id: fr-auteur-systeme	
Description:  """L'auteur du document est un système.""" 	
Characteristics: #can-be-target		
* identificationAuteur 1..1 BackboneElement "Identification de l’auteur."		 		
  * identifiantAuteur 1..* Identifier "Identifiant de l’auteur."
  * professionSavoirFaireRole 0..1 CodeableConcept "Profession / savoir-faire ou rôle."
  * systeme 1..1 BackboneElement "Système."
    * nomModeleSysteme 1..1 string "Nom du modèle du système."
    * nomSysteme 1..1 string "Nom du système."
  * structure 1..1 BackboneElement "Structure."
    * identifiantStructure 0..1 Identifier "Identifiant de la structure."
    * nomStructure 0..1 string "Nom de la structure."
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
