//  Logical Model : personne-structure			
Logical: PersonneStructure		
Title: "Modèle métier - Personne et/ou Structure"			
Description: "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels)." 
Characteristics: #can-be-target 			 			 		
* personne 0..1 BackboneElement "Personne"		 		
  * identifiantPersonne 0..1 Identifier "Identifiant de la personne.
- obligatoire pour les professionnels et les patients."				
  * professionRole 0..1 CodeableConcept "
- Profession pour les professionnels.
- Rôle pour les non professionnels."	
  * lien  0..1 CodeableConcept "Lien de la personne avec le patient/usager"
  * adresse 0..* Address "Adresse géopostale"
  * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom"
  * IdentitePersonne 0..1 BackboneElement "Identité de la personne"	
    * nomPersonne 1..* BackboneElement "Nom de la personne"	
    * prenomPersonne 0..* string "Prénom de la personne"	
    * civilite 0..1 CodeableConcept "Civilité"
    * titre 0..1 CodeableConcept "Titre"
* structure 0..1 BackboneElement "Structure" 
  * identifiantStructure 0..1 Identifier "Identifiant de la structure"
  * nomStructure 0..1 string "Nom de la structure"
  * adresse 0..* Address "Adresse géopostale"
  * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom"
  * secteurActivite 0..1 CodeableConcept "Secteur d'activité"