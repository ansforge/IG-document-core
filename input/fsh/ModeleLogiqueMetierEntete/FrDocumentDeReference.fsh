//  Logical Model : document-reference	
Logical: DocumentDeReference			
Title: "Modèle métier - Document de référence"	
//Id: fr-document-reference			
Description: "Référence un document existant (à remplacer ou transformé)." 	
Characteristics: #can-be-target	
* typeReference 1..1 CodeableConcept "Type de référence."		 		
* identifiantUniqueDocument 1..1 Identifier "Identifiant unique du document de référence."