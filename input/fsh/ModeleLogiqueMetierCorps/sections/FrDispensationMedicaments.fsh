Logical: FrDispensationMedicaments
Parent: Section
Title: "Dispensation médicaments"
Description: """Section Dispensation médicaments"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* auteur 1..1 Auteur "Auteur"
* entree 1..*
  * traitementDispense  1..* FrTraitementDispense "Entrée Traitement dispensé"