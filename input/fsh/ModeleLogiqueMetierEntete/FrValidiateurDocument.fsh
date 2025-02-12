//  Logical Model : validateur-document			
Logical: ValidateurDocument			
Title: "1.7- Validateur du document"	
//Id: fr-validateur-document			
Description: "Professionnel attestant la validité du contenu du document." 	
Characteristics: #can-be-target	
* dateHeureAttestationValidite 1..1 dateTime "Date/Heure de l'attestation de validité."		 			 			 		
* ProfessionnelValidateurDocument 1..1 BackboneElement "Professionnel attestant la validité."		 		
  * identifiant 1..1 Identifier "Identifiant du professionnel ."				
  * professionSavoirfaireRole	0..1 CodeableConcept "Profession / savoir-faire ou rôle."	
  * adresse  0..* Address "Adresse."
  * coordonneesTelecomStructure 0..* ContactPoint "Coordonnées télécom."
  * personnePhysique 0..1 BackboneElement "Personne physique."	
    * nomPersonne 1..1 BackboneElement "Nom de la personne."	
      * nom 1..1 string "Nom."
      * prenom 0..1 string "Prénom."	
      * civilite 0..1 CodeableConcept "Civilité."
      * titre 0..1 CodeableConcept "Titre."
  * structurePS 0..1 BackboneElement "Structure du professionnel."	 
    * identifiantStructure 0..* Identifier "Identifiant de la structure."
    * nomStructure 0..1 string "Nom de la structure."
    * coordonneesTelecomStructure 0..* ContactPoint "Coordonnées télécom."
    * adresseStructure 0..* Address "Adresse."
    * cadreExercice 0..1 CodeableConcept "Cadre d'exercice."