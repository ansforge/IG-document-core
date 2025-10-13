Logical: FrTraitementPrescritSubordonne
Title: "Traitement Prescrit Subordonnee"
Description: """Entrée Traitement prescrit subordonne"""
Characteristics: #can-be-target

* identifiant 1..* Identifier "Identifiant de l'entrée"
* description 1..1 Narrative "Partie narrative de l’entrée"
* status 1..1 code "Statut de l’entrée"
* frequenceAdministration 0..1 dateTime "Fréquence d'administration"
* dose 0..1 Quantity "Dose à administrer"
* rythmeAdministration[x] 0..1 Ratio or Quantity "Rythme d'administration"
* produitSante 1..1 FrProduitSante "Produit de santé"
* precondition 0..* Base "Précondition à l'utilisation du médicament"