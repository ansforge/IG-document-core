//  Logical Model : operateur-saisie		
Logical: OperateurSaisie			
Title: "1.8- Opérateur de saisie"	
//Id: fr-operateur-saisie			
Description: "Opérateur de saisie contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document." 	
Characteristics: #can-be-target	
* dateSaisie 1..1 dateTime "Date de la saisie."		 		
* operateurSaisie  1..1 BackboneElement "Opérateur."		 				 			 		
  * identifiant 1..1 Identifier "Identifiant de l’exécutant."
  * professionSavoirfaireRole 0..1 CodeableConcept "Profession / savoir-faire ou rôle."
  * adresse 0..* Address  "Adresse."
  * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom de la structure."		 		
  * personnePhysique 0..1 BackboneElement "Personne physique."
    * nomPersonne 1..1 BackboneElement "Nom de la personne."
      * nom 1..1 string "Nom."
      * prenom 0..1 string "Prénom."	
      * civilite 0..1 CodeableConcept "Civilité."
      * titre 0..1 CodeableConcept "Titre."
  * structure 0..1 BackboneElement "Structure du professionnel." 
    * identifiant 0..* Identifier "Identifiant de la structure."
    * nom 0..1 string "Nom de la structure."
    * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom."
    * adresse 0..* Address "Adresse."
    * cadreExercice 0..1 CodeableConcept "Cadre d'exercice."  