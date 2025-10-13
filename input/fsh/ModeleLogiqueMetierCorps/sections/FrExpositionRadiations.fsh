Logical: FrExpositionRadiations
Parent: Section
Title: "Exposition aux radiations"
Description: """Section Exposition aux radiations"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* entree 
  * autorisationExposition 1..1 FrAutorisationExposition "Entrée autorisation à l'exposition aux rayonnements ionisants"
  * quantiteExposition 0..* FrQuantiteExposition "Entrée Quantité"