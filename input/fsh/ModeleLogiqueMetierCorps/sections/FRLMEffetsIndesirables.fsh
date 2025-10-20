Logical: FRLMEffetsIndesirables
Parent: Section 
Title: "Modèle logique métier - FR LM Effets indesirables"
Description: """Section Effets indesirables"""
Characteristics: #can-be-target

* sousSection 0..0
* titreSection 1..1 
* entree 1..*  
  * effetIndesirable  1..* FRLMEffetIndesirable "Entrée Effet indesirable"