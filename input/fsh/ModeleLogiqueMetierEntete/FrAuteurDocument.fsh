// -------------------------------------------------------------------------------				
//  Logical Model				auteur.fsh
// -------------------------------------------------------------------------------				
Logical: FrAuteurDocument			
//Id: fr-auteur-document			
Title: "1.2- Auteur du document (humain ou système) "				
Description:  """Professionnel ou patient/usager ou système, auteur du document incluant la structure de rattachement de l'auteur."""								
* horodatageParticipation  1..1 time "Horodatage de la participation de l’auteur. """				
* professionnel 0..1 BackboneElement "L’auteur peut-être : un professionnel (personne physique) via son logiciel de professionnel. """		 		
* professionnel.roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel de l’auteur."		 		
* professionnel.precisionRoleFonctionnel 0..1 CodeableConcept "Précision sur le rôle fonctionnel."		 		
* professionnel.identificationAuteur 1..* BackboneElement "Identification de l’auteur. """		 		
* professionnel.identificationAuteur.identifiant 0..* Identifier "Identifiant de l’auteur."		 		
* professionnel.identificationAuteur.professionSavoirFaireRole 0..1 CodeableConcept "Profession / savoir-faire ou rôle."	 		
* professionnel.identificationAuteur.adresse 0..*  Address  "Adresse."	 		
* professionnel.identificationAuteur.coordonneesTelecom  0..*  ContactPoint  "Coordonnées télécom."		 		
* professionnel.identificationAuteur.identiteAuteur 1..1 BackboneElement  "Identité de l’auteur."		 		
* professionnel.identificationAuteur.identiteAuteur.nomAuteur 1..1  BackboneElement  "Nom de l'auteur."		 		
* professionnel.identificationAuteur.identiteAuteur.nomAuteur.nom 1..1  string  "Nom de famille ou du nom d’usage."		 		
* professionnel.identificationAuteur.identiteAuteur.nomAuteur.prenom 0..1  string "Prénom."		 		
* professionnel.identificationAuteur.identiteAuteur.nomAuteur.civilite 0..1  CodeableConcept "Civilité."		 		
* professionnel.identificationAuteur.identiteAuteur.nomAuteur.titre 0..1  CodeableConcept "Titre."		 		
* professionnel.identificationAuteur.structure 1..1 BackboneElement "Structure."	 		
* professionnel.identificationAuteur.structure.identifiantStructure 0..1 Identifier "Identifiant de la structure."		 		
* professionnel.identificationAuteur.structure.nomStructure 0..1 string "Nom de la structure."		 		
* systeme 0..1 BackboneElement "L’auteur peut-être : le patient/usager (personne physique) via un logiciel patient ou Mon espace santé."	
* patient 0..1 BackboneElement "L’auteur peut-être : un système de structure (ex. dispositif, automate, appareil connecté, …)."	






//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
