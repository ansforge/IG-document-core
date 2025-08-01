Logical: AntecedentsFamiliaux 
Parent: Section
//Id: fr-antecedents-familiaux
Title: "Antécédents familiaux"
Description: """Modèle logique métier de la section Antécédents familiaux"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 1..*
  * antecedentsFamiliaux 1..* AntecedentsFamiliauxEntry "Entrée Antécédents familiaux"