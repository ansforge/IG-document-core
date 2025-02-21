//  Logical Model : auteur			
Logical: AuteurDocument
Title: "1.2- Auteur du document (humain ou système)"
Description: "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée."
* horodatageParticipation 1..1 time "Horodatage de la participation de l’auteur."
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel de l’auteur."		 		
* precisionRoleFonctionnel 0..1 CodeableConcept "Précision sur le rôle fonctionnel."
// Définition des éléments
* auteur[x] 0..1 ProfessionnelAuteurDocument or  PatientDocument or SystemeDocument  "L'auteur du document. Peut être un professionnel, un patient ou un système."										