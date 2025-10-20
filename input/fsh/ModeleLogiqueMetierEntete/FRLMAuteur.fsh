Logical: FRLMAuteur
Id: fr-lm-auteur
Title: "Modèle logique métier - FR LM Auteur"
Description: """Auteur du document : ce peut être un professionnel, un patient/usager ou un système. 
- Pour un professionnel ou un système, la structure de rattachement doit être précisée."""
* . 1..*
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel de l’auteur. A utiliser uniquement si l'auteur est un professionnel."
* horodatageParticipation 1..1 time "Horodatage de la participation de l’auteur."		 		
* auteur[x] 1..1 FRLMPersonneStructureAuteur or FRLMSystemeStructureAuteur "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée."										