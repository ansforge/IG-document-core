//  Logical Model : professionnel-auteur			
Logical: ProfessionnelAuteur			
Title: "Professionnel (Auteur du document)"	
//Id: fr-professionnel-auteur			
Description:  """Professionnel (personne physique), auteur d'un document, via son logiciel de professionnel.""" 	
Characteristics: #can-be-target		 			 		
* identifiantProfessionnel 1..* Identifier "Identifiant de l’auteur."		 		
* professionRole 1..1 CodeableConcept "Profession / savoir-faire ou rôle."	 		
* adresse 1..*  Address  "Adresse."	 		
* coordonneesTelecom  1..*  ContactPoint  "Coordonnées télécom."		 		
  * identiteAuteur 1..1 BackboneElement  "Identité de l’auteur."			 				 		
    * nom 1..1  string  "Nom de famille ou du nom d’usage."		 		
    * prenom 0..1  string "Prénom."		 		
    * civilite 0..1  string "Civilité."		 		
    * titre 0..1  string "Titre."		 		
* structure 1..1 BackboneElement "Structure."	 		
  * identifiantStructure 1..1 Identifier "Identifiant de la structure."		 		
  * nomStructure 1..1 string "Nom de la structure."		 				