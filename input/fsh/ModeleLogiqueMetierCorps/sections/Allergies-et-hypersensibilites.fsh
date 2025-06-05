Logical: AllergiesEtHypersensibilites 
//Id: fr-allergies-et-hypersensibilites 
Parent : Section
Title: "Allergies et hypersensibilités"
Description: """Modèle loqigue métier de la section Allergies et hypersensibilités"""
Characteristics: #can-be-target

* titreSection 1..1 
* titreSection ^short = "Allergies et hypersensibilités"
* sousSection 0..0
* entree 1..*
  * allergieOuHypersensibilite 1..* AllergieOuHypersensibilite "Entrée Allergie ou Hypersensibilité"