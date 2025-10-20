Logical: FRLMDispensationMedicaments
Id: fr-lm-dispensation-medicaments
Parent: Section
Title: "Modèle logique métier - FR LM Dispensation médicaments"
Description: """Section Dispensation médicaments"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0 
* auteur 1..1 FRLMAuteur "Auteur"
* entree.traitementDispense  1..* FRLMTraitementDispense "Entrée Traitement dispensé"