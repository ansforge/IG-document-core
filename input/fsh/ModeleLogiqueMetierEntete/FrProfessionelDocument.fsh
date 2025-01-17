// -------------------------------------------------------------------------------				
//  Logical Model				auteurProfessionnel.fsh
// -------------------------------------------------------------------------------				
Logical: ProfessionnelDocument			
Title: "Professionnel."	
//Id: fr-auteur-Professionnel			
Description:  """Un professionnel (personne physique) via son logiciel de professionnel.""" 	
Characteristics: #can-be-target	
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel de l’auteur."		 		
* precisionRoleFonctionnel 0..1 CodeableConcept "Précision sur le rôle fonctionnel."		 		
* identificationAuteur 1..* BackboneElement "Identification de l’auteur."""		 		
* identificationAuteur.identifiant 0..* Identifier "Identifiant de l’auteur."		 		
* identificationAuteur.professionSavoirFaireRole 0..1 CodeableConcept "Profession / savoir-faire ou rôle."	 		
* identificationAuteur.adresse 0..*  Address  "Adresse."	 		
* identificationAuteur.coordonneesTelecom  0..*  ContactPoint  "Coordonnées télécom."		 		
* identificationAuteur.identiteAuteur 1..1 BackboneElement  "Identité de l’auteur."		 		
* identificationAuteur.identiteAuteur.nomAuteur 1..1  BackboneElement  "Nom de l'auteur."		 		
* identificationAuteur.identiteAuteur.nomAuteur.nom 1..1  string  "Nom de famille ou du nom d’usage."		 		
* identificationAuteur.identiteAuteur.nomAuteur.prenom 0..1  string "Prénom."		 		
* identificationAuteur.identiteAuteur.nomAuteur.civilite 0..1  string "Civilité."		 		
* identificationAuteur.identiteAuteur.nomAuteur.titre 0..1  string "Titre."		 		
* identificationAuteur.structure 1..1 BackboneElement "Structure."	 		
* identificationAuteur.structure.identifiantStructure 0..1 Identifier "Identifiant de la structure."		 		
* identificationAuteur.structure.nomStructure 0..1 string "Nom de la structure."		 		
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
