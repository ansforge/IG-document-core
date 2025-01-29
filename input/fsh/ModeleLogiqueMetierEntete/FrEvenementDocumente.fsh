// -------------------------------------------------------------------------------				
//  Logical Model				evenement-documente.fsh
// -------------------------------------------------------------------------------				
Logical: EvenementDocumente		
Title: "1.11- Évènement documenté"	
//Id: fr-evenement-documente			
Description: "Évènement (acte, traitement, diagnostic, etc…) décrit dans le document.Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant." 	
Characteristics: #can-be-target	
* evenementDocumente 1..1 BackboneElement "Évènement documenté."
  * identifiantSpecifique 0..* Identifier "Identifiant de l’évènement documenté ."	
  * statut 0..* CodeableConcept "Statut du CR-BIO (extension BIO);"	 		
  * codeEvenement  0..1 CodeableConcept "Code de l’évènement documenté."	
    * translation 0..* CodeableConcept "Translation (obligatoire pour CR-IMG et CR-CRE)."
  * dateHeureEvenement 0..1 dateTime "Date et heure de l’évènement documenté."
  * executantEvenement 1..1 BackboneElement "Exécutant." 
    * roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel."
    * dateHeureParticipation 0..1 dateTime "Date et heure de participation."
    * executant 1..1 BackboneElement "Exécutant."
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
      * structureResponsable 0..1 BackboneElement "Structure du professionnel." 
        * identifiantStructure 0..* Identifier "Identifiant de la structure."
        * nomStructure 0..1 string "Nom de la structure."
        * coordonneesTelecomStructure 0..* ContactPoint "Coordonnées télécom."
        * adresseStructure 0..* Address "Adresse."
        * cadreExercice 1..1 CodeableConcept "Cadre d'exercice."