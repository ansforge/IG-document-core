//  Logical Model : professionnel-document			
Logical: ProfessionnelDocument			
Title: "1.3.1- Professionnel / Structure"	
//Id: fr-professionnel-document			
Description:  """Un professionnel et/ou une structure ayant fourni des informations concernant le document (rôle d’informateur).""" 	
Characteristics: #can-be-target			 		
* identifiant 1..1 Identifier "Identifiant de la personne."		 		
* professionSavoirFaireRole 0..1 CodeableConcept "Profession / savoir-faire ou rôle."	 		
* adresse 0..*  Address  "Adresse."	 		
* coordonneesTelecom  0..*  ContactPoint  "Coordonnées télécom."		 		
* personnePhysique 0..1 BackboneElement  "Personne physique."		 		
  * identitePersonne 1..1  BackboneElement  "Identité de la personne physique."		 		
    * nomPersonne 1..1  string  "Nom."		 		
    * prenomPersonne 0..1  string "Prénom."		 		
    * civilite 0..1  string "Civilité."		 		
    * titre 0..1  string "Titre."		 		
* structure 0..1 BackboneElement "Structure."		 		
  * identifiantStructure 0..* Identifier "Identifiant de la structure."		 		
  * nomStructure 0..1 string "Nom de la structure."
  * coordonneesTelecomStructure 0..* ContactPoint "Coordonnées télécom."
  * adresseStructure  0..* Address "Addresse."	
  * cadreExercice 0..1 CodeableConcept	"Cadre d'exercice."			