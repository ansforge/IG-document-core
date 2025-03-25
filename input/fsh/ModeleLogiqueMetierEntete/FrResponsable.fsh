//  Logical Model : responsable-document			
Logical: Responsable		
Title: "Responsable du document"	
//Id: fr-responsable-document			
Description: "Représente le responsable du document, qui est : 
 - soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel. 
 - soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …). 
 - soit le patient/usager responsable du document d'expression personnelle 
 - soit le SNR responsable du document produit via ce SNR. 
 - Soit le Dossier Pharmaceutique (DP) responsable des documents qu'il produit" 
Characteristics: #can-be-target
* dateHeureAttestationPriseResponsabilite 1..1 dateTime "Date/Heure de la prise de responsabilité."		 			 			 		
* responsable 1..1 PersonneStructure "Responsable du document."		 		