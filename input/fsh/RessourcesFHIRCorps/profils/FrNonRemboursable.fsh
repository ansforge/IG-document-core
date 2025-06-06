Profile: FrNonRemboursable
Parent: FrSimpleObservation
Id: fr-non-remboursable
Title: "Observation - Non Remboursable"
Description: "Cette observation permet d'indiquer si le traitement auquel elle est associée est non remboursable."

* code ^short = "Catégorie de l'entrée"
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-181 "Non remboursable"
* value[x] only boolean
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement prescrit n'est pas remboursable
value='false' : le traitement prescrit est remboursable
"""
