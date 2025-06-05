Logical: EchantillonPreleve
//Id: fr-echantillon-preleve
Title: "Échantillon prélevé"
Description: """Modèle logique métier Échantillon prélevé"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'échantillon"
* echantillon 1..1 Base "Type de DM"
  * code 1..1 CodeableConcept "Nature de l'échantillon"
  * quantite 0..1 Quantity "Quantité"
