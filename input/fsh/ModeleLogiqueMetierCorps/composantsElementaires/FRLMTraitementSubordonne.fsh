Logical: FRLMTraitementSubordonne
Id: fr-lm-traitement-subordonne
Title: "Modèle logique métier - FR LM Traitement subordonné"
Description: """Traitement subordonné """
Characteristics: #can-be-target

* identifiantTraitement 1..* Identifier "Identifiant de l'entrée"
* descriptionTraitement 1..1 Narrative "Partie narrative de l’entrée"
* statutTraitement 1..1 code "Statut de l’entrée" 
* doseAadministrer 0..1 Quantity "Dose à administrer"
* rythmeAdministration 0..1 Quantity "Rythme d'administration"
* medicamentTraitement 1..1 FRLMProduitSante "Médicament"
* preconditionTraitement 0..* BackboneElement "Précondition"
