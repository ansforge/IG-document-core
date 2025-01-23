// -------------------------------------------------------------------------------				
//  Logical Model				auteur.fsh
// -------------------------------------------------------------------------------				
Logical: AuteurDocument
Title: "1.2- Auteur du document (humain ou système)"
Description: "Professionnel ou patient/usager ou système, auteur du document incluant la structure de rattachement de l'auteur. L'auteur du document peut être un professionnel, un patient ou un système."
* horodatageParticipation 1..1 time "Horodatage de la participation de l’auteur."
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel de l’auteur."		 		
* precisionRoleFonctionnel 0..1 CodeableConcept "Précision sur le rôle fonctionnel."
// Définition des éléments
* auteur[x] 0..1 ProfessionnelAuteurDocument or  PatientDocument or SystemeDocument  "L'auteur du document. Peut être un professionnel, un patient ou un système."

//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
