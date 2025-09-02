// StructureDefinition for FrObservationNaissanceDocument
Profile:  FrObservationNaissanceDocument
Parent: Observation
Id: fr-observation-naissance-document
Title: "Observation - Fr Naissance"
Description: "Cette entrée rassemble les observations relatives à une naissance.
 - Elle peut-être utilisée comme 'component'; d'une entrée FR-Historique-de-la-grossesse (1.3.6.1.4.1.19376.1.5.3.1.4.13.5.1)."

* code 1..1 MS 
  * ^short = "Code de l'entrée."
* code.coding.system = "http://snomed.info/sct/"
* code.coding.code = #118215003
* code.coding.display = "observation sur l'accouchement"
* status 1..1
  * ^short = "Statut de l’entrée"
* status = #completed
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Période des observations.
 - Quand cette entrée est utilisée dans une entrée FR-Historique-de-la-grossesse, cette période doit correspondre à la période de la grossesse."
* value[x] 0..0
* hasMember 1..* MS 
* hasMember only Reference(FrObservationGrossesseDocument)
  * ^short = "Observation sur la naissance."
* focus 1..1 MS 
* focus only Reference(RelatedPerson)
  * ^short = "Identification du nouveau né."
* focus obeys child-relationship 

Invariant: child-relationship 
Description: "Le relationship de RelatedPerson doit être fixé à CHILD."
Expression: "resolve().relationship.coding.where(code = 'CHILD').exists()"
Severity: #error