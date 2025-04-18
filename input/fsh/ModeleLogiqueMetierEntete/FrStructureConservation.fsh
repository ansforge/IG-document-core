//  Logical Model : structure-conservation-document			
Logical: StructureConservation			
Title: "Modèle métier - Structure chargée de la conservation du document"	
//Id: fr-structure-conservation-document			
Description: "Structure chargée de la conservation du document, c'est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie." 	
Characteristics: #can-be-target	
* structure 0..1 Base "Structure" 
  * identifiantStructure 0..1 Identifier "Identifiant de la structure"
  * nomStructure 0..1 string "Nom de la structure"
  * adresse 0..* Address "Adresse géopostale"
  * coordonneesTelecom 0..* ContactPoint "Coordonnées télécom"
  * secteurActivite 0..1 CodeableConcept "Secteur d'activité"