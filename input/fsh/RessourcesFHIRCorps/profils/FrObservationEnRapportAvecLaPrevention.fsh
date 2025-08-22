Profile: FrObservationEnRapportAvecLaPrevention
Parent: Observation
Id: fr-en-rapport-avec-la-prevention
Title: "Observation - Fr Observation En rapport avec la prévention"
Description: "Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec la prévention."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Catégorie de l'entrée"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-295 "En rapport avec la prévention"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'une prévention
value='false' : le traitement n'est pas prescrit dans le cadre d'une prévention
"""
* insert FrRuleSetSimpleObservation
