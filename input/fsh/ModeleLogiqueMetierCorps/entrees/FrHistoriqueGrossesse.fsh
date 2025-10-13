Logical: FrHistoriqueGrossesse
Title: "Historique de la grossesse"
Description: """Entrée Historique de la grossesse"""
Characteristics: #can-be-target

* identifiant 1..1 Identifier "Identifiant de l'entrée"
* code 1..1 CodeableConcept "Code de l'entrée"
* statut 1..1 CodeableConcept "Statut de l’entrée"
* statut = #completed
* periodeGrossesse 1..1 dateTime "Période de la grossesse"
* choice[x] 1..* FrNaissance or FrObservationGrossesse "L'entrée Historique de la grossesse contient :
  • soit les informations relatives à une naissance (une ou plusieurs entrée FR-Naissance),  
  • soit les informations relatives à la grossesse  (une ou plusieurs entrée FR-Observation-sur-la-grossesse)"