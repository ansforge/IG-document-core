// -------------------------------------------------------------------------------				
//  Logical Model				participant-document.fsh
// -------------------------------------------------------------------------------				
Logical: ParticipantDocument			
Title: "1.9- Autres personnes / structures impliquées"	
//Id: fr-participant-document			
Description: "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs." 	
Characteristics: #can-be-target	
* typeParticipation 1..1 CodeableConcept "Type de participation."		 			 			 		
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel."	 		
  * precision 0..1 Narrative "Précision sur le rôle fonctionnel."				
* dateDebutEtOuFinParticipation	1..1 dateTime "Date de début et/ou de fin de la participation."	
* identificationParticipant 1..1 BackboneElement "Identification du participant."
  * ProfessionnelNonProfessionnel 1..1 CodeableConcept "PS / Non PS."
  * identifiantParticipant 1..1 Identifier "Identifiant du participant."
  * professionSavoirfaireRole	0..1 CodeableConcept "Profession / savoir-faire ou rôle."	
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