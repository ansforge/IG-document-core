//  Logical Model : auteur-systeme	
Logical: Systeme		
Title: "Système"	
//Id: fr-auteur-systeme	
Description:  "Système auteur du document" 	
Characteristics: #can-be-target		
* identificationAuteur 1..1 BackboneElement "Identification de l’auteur."		 		
  * identifiantAuteur 1..* Identifier "Identifiant de l’auteur."
  * professionSavoirFaireRole 1..1 CodeableConcept "Rôle."
  * systeme 1..1 BackboneElement "Système."	
    * nomModeleSysteme 1..1 string "Nom du modèle du système."
    * nomSysteme 1..1 string "Nom du système."
  * structure 1..1 BackboneElement "Structure."	
    * identifiantStructure 1..1 Identifier "Identifiant de la structure."
    * nomStructure 1..1 string "Nom de la structure."	
    * adresse 0..* Address "Adresse géopostale."
    * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom."
