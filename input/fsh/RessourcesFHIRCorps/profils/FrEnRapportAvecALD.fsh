Profile: FrEnRapportAvecALD
Parent: FrSimpleObservation
Id: fr-en-rapport-avec-ald
Title: "Observation - En rapport avec ALD"
Description: "Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec une Affection Longue Durée (ALD)."

* code ^short = "Catégorie de l'entrée"
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-574 "En rapport avec une ALD"
* value[x] only boolean
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'une affection longue durée (ALD)
value='false' : le traitement n'est pas prescrit dans le cadre d'une affection longue durée (ALD)
"""
