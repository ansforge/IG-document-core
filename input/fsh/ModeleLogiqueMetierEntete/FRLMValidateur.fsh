Logical: FRLMValidateur	
Id: fr-lm-validateur	
Title: "Modèle logique métier - FR LM Validateur"	
Description: "Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N'est pas utilisé dans un document d'expression personnelle du patient/usager et un document produit par un système." 	
Characteristics: #can-be-target	
* dateHeureAttestationValidite 1..1 dateTime "Date/Heure de l'attestation de validité."		 			 			 		
* validateur 1..1 FRLMPersonneStructure "Professionnel attestant la validité."		 	