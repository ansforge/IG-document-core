// -------------------------------------------------------------------------------				
//  Logical Model				destinataire-prevu-document.fsh
// -------------------------------------------------------------------------------				
Logical: DestinatairePrevuDocument			
Title: "1.5- Destinataire prévu du document"	
//Id: fr-destinataire-prevu-document			
Description: "Personne déclarée comme destinataire prévu du document." 	
Characteristics: #can-be-target	
* identifiantDestinataire 0..* Identifier "Identifiant du destinataire."		 		
* adresseDestinataire 0..* Address "Adresse."		 			 		
* coordonneesTelecomDestinataire 0..* ContactPoint "Coordonnées télécom."	 		
* informationsSurDestintaire 0..1 BackboneElement "Informations sur le destinataire."				
  * nomDestinataire	0..* BackboneElement "Nom du destinataire."	
    * nom 1..1 string "Nom."
    * prenom 0..1 string "Prénom."	
    * civilite 0..1 CodeableConcept "Civilité."
    * titre 0..1 CodeableConcept "Titre."
* structureDestinataire 0..1 BackboneElement "Structure du destinataire."
  * identifiantStructure 0..1 Identifier "Identifiant de la structure."
  * nomStructure 0..* string "Nom de la structure."
  * coordonneesTelecomStructure 0..* ContactPoint "Coordonnées télécom."
  * adresseStructure 0..1 Address "Adresse."