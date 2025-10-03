// StructureDefinition for FrObservationPregnancy 
Profile:  FrObservationPregnancy 
Parent: Observation
Id: fr-observation-pregnancy 
Title: "Observation - Fr Observation Pregnancy "
Description: "FrObservationPregnancy permet d'apporter des informations relatives aux grossesses actuelle ou passées."


* code ^short = "Ce code peut provenir du JDV_ObservationGrossesse_CISIS (1.2.250.1.213.1.1.5.500).
 - D’autres codes ou JDV peuvent être utilisés."
* value[x] 1..1 MS
  * ^short = "Résultat de l’observation effectuée. 
  - Valeur peut être issue du JDV_StatutGrossesse_CISIS (1.2.250.1.213.1.1.5.671) pour le statut de grossesse si le code de l'entrée est '11449-6'."

* insert FrRuleSetSimpleObservation

* obeys obs-pregnancy-status-value

Invariant: obs-pregnancy-status-value
Description: "Si le code de l'Observation est LOINC 11449-6, alors la value doit être un CodeableConcept membre du JDV statut grossesse"
Expression: "code.coding.where(system = 'http://loinc.org' and code = '11449-6').exists() implies (value is CodeableConcept and value.coding.memberOf('https://smt.esante.gouv.fr/fhir/ValueSet/jdv-statut-grossesse-cisis'))"
Severity: #error