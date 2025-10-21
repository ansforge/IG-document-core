Logical: FRLMAntecedentsFamiliauxEntree
Id: fr-lm-antecedents-familiaux-entree
Title: "Modèle logique métier - FR LM Antécédents familiaux"
Description: "Entrée Antécédents familiaux"
Characteristics: #can-be-target

* statut 1..1 code "Statut de l’entrée"
* statut = #completed
* identificationParent 1..1 FRLMSujet "Identification du parent"
* participant 0..* Base "Lien avec un autre sujet"
* antecedentFamilialObserve 1..* FRLMAntecedentFamilialObserve "Antécédent familial observé"
