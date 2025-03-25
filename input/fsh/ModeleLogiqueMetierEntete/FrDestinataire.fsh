//  Logical Model				destinataire-prevu-document			
Logical: DestinatairePrevu			
Title: "Destinataire prévu du document"	
//Id: fr-destinataire-prevu-document			
Description: "Personne déclarée comme destinataire prévu du document.
- Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s).
 Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires." 	
Characteristics: #can-be-target	
* destinataire 0..* PersonneStructure "Destinataire prévu du document."		 		