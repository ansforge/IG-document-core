Logical: TraitementSubordonne
//Id: fr-traitement-subordonne
Title: "Traitement subordonné"
Description: """Modèle logique métier de l'entrée Traitement subordonné """
Characteristics: #can-be-target

* identifiantTraitement 1..* Identifier "Identifiant de l'entrée"
* descriptionTraitement 1..1 Narrative "Partie narrative de l’entrée"
* statutTraitement 1..1 code "Statut de l’entrée" 
* doseAadministrer 0..1 Quantity "Dose à administrer"
* rythmeAdministration 0..1 Quantity "Rythme d'administration"
* medicamentTraitement 1..1 ProduitSante "Médicament"
* preconditionTraitement 0..* BackboneElement "Précondition"