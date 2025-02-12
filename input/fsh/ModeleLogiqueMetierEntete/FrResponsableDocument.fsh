//  Logical Model : responsable-document			
Logical: ResponsableDocument			
Title: "1.6- Responsable du document"	
//Id: fr-responsable-document			
Description: "Le responsable du document représente : Le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre 
professionnel ou le professionnel qui prend la responsabilité du document produit par un système de structure ou le patient/usager (responsable du document d'expression personnelle) ou le SNR responsable du document produit via ce SNR ou le Dossier Pharmaceutique (DP) responsable des documents qu'il produit." 
Characteristics: #can-be-target
* dateHeureAttestationValidite 1..1 dateTime "Date/Heure de la prise de responsabilité."		 			 			 		
* ProfessionnelResponsableDocument 1..1 BackboneElement "Responsable du document."		 		
  * identifiant 1..1 Identifier "Identifiant du Responsable."				
  * professionSavoirfaireRole 0..1 CodeableConcept "Profession / savoir-faire ou rôle."	
  * adresse  0..* Address "Adresse."
  * coordonneesTelecomStructure 0..* ContactPoint "Coordonnées télécom."
  * personnePhysique 0..1 BackboneElement "Personne physique."	
    * nomPersonne 1..1 BackboneElement "Nom de la personne."	
      * nom 1..1 string "Nom."
      * prenom 0..1 string "Prénom."	
      * civilite 0..1 CodeableConcept "Civilité."
      * titre 0..1 CodeableConcept "Titre."
  * structureResponsable 0..1 BackboneElement "Structure du professionnel." 
    * identifiantStructure 0..* Identifier "Identifiant de la structure."
    * nomStructure 0..1 string "Nom de la structure."
    * coordonneesTelecomStructure 0..* ContactPoint "Coordonnées télécom."
    * adresseStructure 0..* Address "Adresse."
    * cadreExercice 0..1 CodeableConcept "Cadre d'exercice."