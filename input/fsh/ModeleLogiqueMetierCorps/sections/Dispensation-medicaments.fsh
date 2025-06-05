Logical: DispensationMedicaments
Parent: Section
//Id: fr-dispensation-medicaments
Title: "Dispensation médicaments"
Description: """Modèle logique métier de la section Dispensation médicaments"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* auteur 1..1 Auteur "Auteur"
* entree 1..*
  * traitementDispense  1..* TraitementDispense "Entrée Traitement dispensé"