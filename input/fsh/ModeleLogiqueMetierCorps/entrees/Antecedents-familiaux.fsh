Logical: AntecedentsFamiliauxEntry
//Id: fr-antecedents-familiaux-entry
Title: "Antécédents familiaux"
Description: "Modèle logique métier de l'entrée Antécédents familiaux"
Characteristics: #can-be-target

* statut 1..1 code "Statut de l’entrée"
* statut = #completed
* identificationParent 1..1 Sujet "Identification du parent"
* participant 0..* Base "Lien avec un autre sujet"
* antecedentFamilialObserve 1..* AntecedentFamilialObserve "Antécédent familial observé"