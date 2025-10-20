//  Logical Model : association-prise-en-charge		
Logical: PriseEncharge		
Title: "Modèle métier - Association du document à une prise en charge"	
//Id: fr-association-prise-en-charge.			
Description: "Association du document à une prise en charge du patient/usager par un professionnel ou par une structure.
 - Exemples :
   - Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.
   - Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.
 - Pour un document d'expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n'a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d'activité." 	 	
* . 1..1	
* identifiantPriseEnCharge  0..* Identifier "Identifiant de la prise en charge."	
* typePriseEnCharge 0..1 CodeableConcept "Type de prise en charge."
* dateDebutFinPriseEnCharge 1..1 dateTime "Date de début et de fin de la prise en charge."
* typeSortie 0..1 CodeableConcept "Type sortie."
* responsablePriseEnCharge 0..1 FRLMPersonneStructure "Responsable de la prise en charge."
* personneImpliqueePriseEnCharge 0..* Base "Personne impliquée dans la prise en charge."
  * typeParticipation 1..1 CodeableConcept "Type de participation." 
  * dateDebutFinParticipation 0..1 dateTime "Date de début et de fin de la participation." 
  * professionnelImplique 1..1 FRLMPersonneStructure "Professionnel impliqué." 
* lieuPriseEnCharge 1..1 Base "Lieu de la prise en charge."
  * structure 0..1 Base "Structure" 
    * identifiantStructure 0..1 Identifier "Identifiant de la structure"
    * nomStructure 0..1 string "Nom de la structure"
    * adresse 0..1 Address "Adresse géopostale"
    * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom"
    * secteurActivite 1..1 CodeableConcept "Secteur d'activité"
      * categorieEtablissement 0..1 CodeableConcept "Catégorie d'établissement"
    * typeStructure 0..1 CodeableConcept "Type de structure"