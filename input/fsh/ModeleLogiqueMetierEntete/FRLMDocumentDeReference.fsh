Logical: FRLMDocumentDeReference	
Id: fr-lm-document-reference			
Title: "Modèle logique métier - FR LM Document de référence"			
Description: "Référence un document existant (à remplacer ou transformé)." 	
Characteristics: #can-be-target	
* . 0..1
* typeReference 1..1 CodeableConcept "Type de référence."		 		
* identifiantUniqueDocument 1..1 Identifier "Identifiant unique du document de référence."