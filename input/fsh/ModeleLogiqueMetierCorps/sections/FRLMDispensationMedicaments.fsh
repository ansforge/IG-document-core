Logical: FRLMDispensationMedicaments
Id: fr-lm-dispensation-medicaments
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Dispensation médicaments"
Description: """Section Dispensation médicaments"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* auteur 1..1 FRLMAuteur "Auteur"
* entree 1..*
  * traitementDispense 1..* FRLMTraitementDispense "Entrée Traitement dispensé"