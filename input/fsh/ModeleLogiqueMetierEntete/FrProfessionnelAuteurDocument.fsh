//  Logical Model : professionnel-auteur			
Logical: ProfessionnelAuteurDocument			
Title: "1.2.1- Professionnel (Auteur du document)"	
//Id: fr-professionnel-auteur-document			
Description:  """Un professionnel (personne physique) via son logiciel de professionnel.""" 	
Characteristics: #can-be-target			 		
* identificationAuteur 1..* BackboneElement "Identification de l’auteur."""		 		
  * identifiant 0..* Identifier "Identifiant de l’auteur."		 		
  * professionSavoirFaireRole 0..1 CodeableConcept "Profession / savoir-faire ou rôle."	 		
  * adresse 0..*  Address  "Adresse."	 		
  * coordonneesTelecom  0..*  ContactPoint  "Coordonnées télécom."		 		
  * identiteAuteur 1..1 BackboneElement  "Identité de l’auteur."			 		
    * nomAuteur 1..1  BackboneElement  "Nom de l'auteur."			 		
      * nom 1..1  string  "Nom de famille ou du nom d’usage."		 		
      * prenom 0..1  string "Prénom."		 		
      * civilite 0..1  string "Civilité."		 		
      * titre 0..1  string "Titre."		 		
  * structure 1..1 BackboneElement "Structure."	 		
    * identifiantStructure 0..1 Identifier "Identifiant de la structure."		 		
    * nomStructure 0..1 string "Nom de la structure."		 				