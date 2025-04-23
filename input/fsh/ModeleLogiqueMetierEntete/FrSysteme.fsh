//  Logical Model : auteur-systeme	
Logical: SystemeStructureAuteur		
Title: "Modèle métier - Système / Structure"	
//Id: fr-auteur-systeme	
Description: "Système auteur du document" 	
Characteristics: #can-be-target		
* systeme 1..1 Base "Identification du système."		 		
  * identifiantSysteme 1..* Identifier "Identifiant du systeme."
  * typeSysteme 1..1 CodeableConcept "type du systeme."	
  * nomModeleSysteme 1..1 string "Nom du modèle du système."
  * nomSysteme 1..1 string "Nom du système."
* structure 1..1 Base "Structure."	
  * identifiantStructure 1..1 Identifier "Identifiant de la structure."
  * nomStructure 1..1 string "Nom de la structure."	
  * adresse 0..* Address "Adresse géopostale."
  * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom."
  * secteurActivite 0..1 CodeableConcept "Secteur d'activité."
