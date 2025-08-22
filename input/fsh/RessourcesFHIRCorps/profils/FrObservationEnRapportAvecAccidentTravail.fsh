Profile: FrObservationEnRapportAvecAccidentTravail
Parent: Observation
Id: fr-en-rapport-avec-accident-travail
Title: "Observation - Fr Observation En rapport avec accident travail"
Description: "Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec un accident du travail / une maladie professionnelle."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Catégorie de l'entrée"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-180 "En rapport avec un accident du travail ou une maladie professionnelle"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'un accident du travail
value='false' : le traitement n'est pas prescrit dans le cadre d'un accident du travail
"""
* insert FrRuleSetSimpleObservation