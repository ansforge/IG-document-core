//  Logical Model : association-prescription			
Logical: AssociationPrescription			
Title: "Modèle métier - Association du document à une prescription"	
//Id: fr-association-prescription			
Description: "Association à une prescription à l’origine de l’acte dont résulte le document." 	
Characteristics: #can-be-target		 		
* identifiantPrescription 0..1 Identifier "Identifiant de la prescription."		 				 			 		
* accessionNumber  0..1 Identifier "Accession Number (Spécifique à l’imagerie)."	 		