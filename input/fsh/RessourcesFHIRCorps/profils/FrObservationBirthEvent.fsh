Profile:  FrObservationBirthEvent
Parent: Observation
Id: fr-observation-birth-event
Title: "Observation - Fr Birth Event"
Description: "FrObservationBirthEvent est un profil qui permet de rassembler les observations relatives à une naissance."

* code 1..1 MS 
  * ^short = "Code de l'observation"
* code.coding.system = "http://snomed.info/sct/"
* code.coding.code = #118215003
* code.coding.display = "observation sur l'accouchement"
* status 1..1
  * ^short = "Statut de l'observation"
* status = #completed
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Période des observations.
 - Quand cette entrée est utilisée dans une entrée FR-Historique-de-la-grossesse, cette période doit correspondre à la période de la grossesse."
* value[x] 0..0
* hasMember 1..* MS 
* hasMember only Reference(FrObservationPregnancy)
  * ^short = "Observation sur la naissance."
* focus 1..1 MS 
* focus only Reference(RelatedPerson)
  * ^short = "Identification du nouveau né."
* focus obeys child-relationship 

Invariant: child-relationship 
Description: "Le relationship de RelatedPerson doit être fixé à CHILD."
Expression: "resolve().relationship.coding.where(code = 'CHILD').exists()"
Severity: #error