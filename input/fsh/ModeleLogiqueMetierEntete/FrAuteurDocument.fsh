// -------------------------------------------------------------------------------				
//  Logical Model				auteur.fsh
// -------------------------------------------------------------------------------				
Logical: AuteurDocument
Title: "Auteur du document (humain ou système)"
Description: "Professionnel ou patient/usager ou système, auteur du document incluant la structure de rattachement de l'auteur. L'auteur du document peut être un professionnel, un patient ou un système."
* horodatageParticipation 1..1 time "Horodatage de la participation de l’auteur."
// Définition des éléments
* auteur[x] 0..1 ProfessionnelDocument or  PatientDocument or SystemeDocument  "L'auteur du document. Peut être un professionnel, un patient ou un système."

//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
