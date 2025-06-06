Profile: FrEnRapportAvecAccidentTravail
Parent: FrSimpleObservation
Id: fr-en-rapport-avec-accident-travail
Title: "Observation - En rapport avec accident travail"
Description: "Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec un accident du travail / une maladie professionnelle."

* code ^short = "Catégorie de l'entrée"
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-180 "En rapport avec un accident du travail ou une maladie professionnelle"
* value[x] only boolean
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'un accident du travail
value='false' : le traitement n'est pas prescrit dans le cadre d'un accident du travail
"""
