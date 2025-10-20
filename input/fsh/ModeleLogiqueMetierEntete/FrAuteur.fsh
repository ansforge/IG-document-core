//  Logical Model : auteur			
Logical: FRLMAuteur
Title: "Modèle métier - Auteur du document (humain ou système)"
Description: """Auteur du document : ce peut être un professionnel, un patient/usager ou un système. 
- Pour un professionnel ou un système, la structure de rattachement doit être précisée."""
* . 1..*
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel de l’auteur. A utiliser uniquement si l'auteur est un professionnel."
* horodatageParticipation 1..1 time "Horodatage de la participation de l’auteur."		 		
// Définition des éléments
* auteur[x] 1..1 PersonneStructureAuteur or SystemeStructureAuteur "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée."										