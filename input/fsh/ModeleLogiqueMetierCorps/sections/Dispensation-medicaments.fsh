Logical: DispensationMedicaments
Parent: Section
//Id: fr-dispensation-medicaments
Title: "Dispensation médicaments"
Description: """Modèle logique métier de la section Dispensation médicaments"""
Characteristics: #can-be-target

* titreSection 1..1 
* auteur 1..1 Auteur "Auteur"
* traitementDispense  1..* Base "Entrée Traitement dispensé"