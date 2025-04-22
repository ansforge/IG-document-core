//  Logical Model : structure-conservation-document			
Logical: StructureConservation			
Title: "Modèle métier - Structure chargée de la conservation du document"	
//Id: fr-structure-conservation-document			
Description: "Structure chargée de la conservation du document, c'est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie." 	
Characteristics: #can-be-target	
* . 1..1
* structure 1..1 Base "Structure" 
  * identifiantStructure 1..1 Identifier "Identifiant de la structure"
  * nomStructure 0..1 string "Nom de la structure"
  * coordonneesTelecom 0..1 ContactPoint "Coordonnées télécom"
  * adresse 0..1 Address "Adresse géopostale"