//  Logical Model : evenement-documente				
Logical: Evenement	
Title: "Évènement documenté"	
//Id: fr-evenement-documente			
Description: "Évènement (acte, traitement, diagnostic, etc…) décrit dans le document.Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant." 	
Characteristics: #can-be-target	
* identifiantEvenement 0..* Identifier "Identifiant de l’évènement documenté ."			
* codeEvenement  0..1 CodeableConcept "Code de l’évènement documenté (obligatoire pour une Demande d'actes d'imagerie, un CR d’imagerie, CR d’examen de l’enfant et un document d’expression personnelle du patient/usager)."	
  * translation 0..* CodeableConcept "Translation (obligatoire pour un CR d’imagerie et un CR d’examen de l’enfant."
* dateHeureEvenement 0..1 dateTime "Date et heure de l’évènement documenté."
* executantEvenement 1..1 BackboneElement "Exécutant." 
  * roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel."
  * dateHeureParticipation 0..1 dateTime "Date et heure de participation."
  * executant 1..1 PersonneStructure "Exécutant."