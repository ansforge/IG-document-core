Logical: ReferenceItemPrescription
//Id: fr-reference-item-prescription
Title: "Référence item prescription"
Description: """Modèle logique métier de l'entrée Référence item prescription"""
Characteristics: #can-be-target

* identifiant 1..1 identifier "Identifiant de la ligne de prescription"
* code 1..1 CodeableConcept "Code de l'entrée"
* produitSante 1..1 ProduitSante "Produit de santé"
* auteur 0..1 Auteur "Auteur"
* traitementPrescrit 0..1 TraitementPrescrit "Traitement prescrit"
* reference 0..1 Base "ID of parent container of referenced item"
  * externalDocument 1..1 Base "Document référencé"
    * identifiant 1..1 identifier "Identifiant du document"