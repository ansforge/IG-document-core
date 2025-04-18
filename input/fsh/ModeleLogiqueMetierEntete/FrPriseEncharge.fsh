//  Logical Model : association-prise-en-charge		
Logical: PriseEncharge		
Title: "Modèle métier - Association du document à une prise en charge"	
//Id: fr-association-prise-en-charge.			
Description: "Permet d'associer le document à une prise en charge du patient/usager." 	
Characteristics: #can-be-target	 		
* identifiantPriseEnCharge  0..* Identifier "Identifiant de la prise en charge."	
* typePriseEnCharge 0..1 CodeableConcept "Type de prise en charge."
* dateDebutFinPriseEnCharge 1..1 dateTime "Date de début et de fin de la prise en charge."
* typeSortie 0..1 CodeableConcept "Type sortie."
* responsablePriseEnCharge 0..1 PersonneStructure "Responsable de la prise en charge."
* personneImpliqueePriseEnCharge 0..* Base "Personne impliquée dans la prise en charge."
  * typeParticipation 1..1 CodeableConcept "Type de participation." 
  * dateDebutFinParticipation 0..1 dateTime "Date de début et de fin de la participation." 
  * professionnelImplique 1..1 PersonneStructure "Professionnel impliqué." 
* lieuPriseEnCharge 1..1 Base "Lieu de la prise en charge."
  * structure 0..1 Base "Structure" 
    * identifiantStructure 0..1 Identifier "Identifiant de la structure"
    * nomStructure 0..1 string "Nom de la structure"
    * adresse 0..* Address "Adresse géopostale"
    * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom"
    * secteurActivite 0..1 CodeableConcept "Secteur d'activité"