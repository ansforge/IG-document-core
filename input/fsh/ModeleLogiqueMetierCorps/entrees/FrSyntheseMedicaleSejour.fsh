Logical: FrSyntheseMedicaleSejour
Title: "Synthese medicale sejour"
Description: """Entrée Synthese medicale sejour"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* description 1..1 Narrative "Description narrative de l'entrée"
* statut 1..1 code "Statut de l'entrée. Fixé à la valeur 'completed'"
* date 1..1 dateTime "Date de la synthèse médicale du séjour"
* statutDocument 1..1 string "Synthèse médicale du séjour (sous forme textuelle)"
* auteur 0..* Auteur "Auteur"