Profile: FrHorsNomenclature
Parent: FrSimpleObservation
Id: fr-hors-nomenclature
Title: "Observation - Hors nomenclature"
Description: "Cette observation permet d'indiquer si l’acte est hors nomenclature."

* code ^short = "Catégorie de l'entrée"
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-298 "Hors nomenclature"
* value[x] only boolean
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : l’acte n’est pas hors nomenclature
value='false' : l’acte est hors nomenclature
"""
