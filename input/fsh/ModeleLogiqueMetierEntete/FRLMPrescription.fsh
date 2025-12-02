Logical: FRLMPrescription		
Id: fr-lm-prescription	
Title: "Modèle logique métier - FR LM Prescription"	
Description: "Association à une prescription à l’origine de l’acte dont résulte le document." 	
Characteristics: #can-be-target	
* . 0..*	 		
* identifiantPrescription 1..1 Identifier "Identifiant de la prescription."		 				 			 		
* accessionNumber 0..1 Identifier "Accession Number (Spécifique à l’imagerie)."	 		
