// -------------------------------------------------------------------------------				
//  Logical Model				structure-conservation-document.fsh
// -------------------------------------------------------------------------------				
Logical: StructureConservationDocument			
Title: "1.4- Structure chargée de la conservation du document"	
//Id: fr-structure-conservation-document			
Description: "La structure chargée de la conservation du document, c'est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie." 	
Characteristics: #can-be-target	
* identifiantStructure 1..1 Identifier "Identifiant de la structure."		 		
* nomStructure 0..1 string "Nom de la structure."		 				 			 		
* coordonneesTelecomStructure 0..1 ContactPoint "Coordonnées télécom de la structure."	
* adresseStructure 0..1 Address  "Adresse."	 		