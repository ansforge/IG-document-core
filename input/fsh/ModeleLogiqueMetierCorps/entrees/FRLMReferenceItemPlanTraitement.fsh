Logical: FRLMReferenceItemPlanTraitement
Id: fr-lm-reference-item-plan-traitement
Title: "Modèle logique métier - FR LM Référence item plan traitement"
Description: """Entrée Référence item plan traitement"""
Characteristics: #can-be-target

* identifiant 1..1 identifier "Identifiant de la ligne de traitement dans un plan de traitement"
* code 1..1 CodeableConcept "Code de l'entrée"
* produitSante 1..1 Base "Produit de santé"
* auteur 0..1 FRLMAuteur "Auteur de la ligne de traitement"
// Modèle à créer ?
* traitementPrescrit 1..1 Base "Item plan traitement"
* reference 0..1 Base "ID of parent container of referenced item"
  * externalDocument 1..1 Base "Document référencé"
    * identifiant 1..1 identifier "Identifiant du document"
