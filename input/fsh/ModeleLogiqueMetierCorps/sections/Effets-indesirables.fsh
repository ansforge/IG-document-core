Logical: EffetsIndesirables
Parent: Section
//Id: fr-effets-indesirables 
Title: "Effets indesirables"
Description: """Modèle logique métier de la section Effets indesirables"""
Characteristics: #can-be-target

* sousSection 0..0
* titreSection 1..1 
* entree 1..*  
  * effetIndesirable  1..* EffetIndesirable "Entrée Effet indesirable"