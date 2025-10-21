Logical: FRLMReferenceInterne
Id: fr-lm-reference-interne
Title: "Modèle logique métier - FR LM Référence interne"
Description: "Entrée Référence interne"
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'élément référencé.  
 - Le 'code' est obligatoire et doit être identique au code de l'élément référencé.  
 - Si l'élément référencé n'a pas codé, alors le 'code' doit être nullFlavor='NA'."