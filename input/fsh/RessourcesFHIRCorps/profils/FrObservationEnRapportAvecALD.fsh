Profile: FrObservationEnRapportAvecALD
Parent: Observation
Id: fr-en-rapport-avec-ald
Title: "Observation - Fr Observation En rapport avec ALD"
Description: "Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec une Affection Longue Durée (ALD)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Catégorie de l'entrée"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-574 "En rapport avec une ALD"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'une affection longue durée (ALD)
value='false' : le traitement n'est pas prescrit dans le cadre d'une affection longue durée (ALD)
"""
* insert FrRuleSetSimpleObservation