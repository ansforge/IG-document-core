Profile: FrObservationNonRemboursable
Parent: Observation
Id: fr-non-remboursable
Title: "Observation - Fr Observation Non Remboursable"
Description: "Cette observation permet d'indiquer si le traitement auquel elle est associée est non remboursable."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Catégorie de l'entrée"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-181 "Non remboursable"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement prescrit n'est pas remboursable
value='false' : le traitement prescrit est remboursable
"""

* insert FrRuleSetSimpleObservation
