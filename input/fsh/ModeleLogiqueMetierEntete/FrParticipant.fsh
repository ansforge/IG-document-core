//  Logical Model : participant-document		
Logical: FRLMParticipant		
Title: "Modèle métier - Autres personnes / structures impliquées"	
//Id: fr-participant-document			
Description: "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs." 	
Characteristics: #can-be-target	
* typeParticipation 1..1 CodeableConcept "Type de participation."		 			 			 		
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel."	 						
* dateDebutEtOuFinParticipation	1..1 dateTime "Date de début et/ou de fin de la participation."	
* participant 1..1 FRLMPersonneStructure "Participant"