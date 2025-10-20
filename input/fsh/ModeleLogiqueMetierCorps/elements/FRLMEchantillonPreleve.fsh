Logical: FRLMEchantillonPreleve
Id: fr-lm-echantillon-preleve
Title: "Modèle logique métier - FR LM Échantillon prélevé"
Description: """Échantillon prélevé"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'échantillon"
* echantillon 1..1 Base "Type de DM"
  * code 1..1 CodeableConcept "Nature de l'échantillon"
  * quantite 0..1 Quantity "Quantité"
