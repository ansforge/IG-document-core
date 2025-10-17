Profile: FrObservationRelatedToLongTermCondition
Parent: Observation
Id: fr-related-to-long-term-condition
Title: "Observation - Fr related to long term condition"
Description: "FrObservationRelatedToLongTermCondition permet d'indiquer si l'élément auquel elle est associée est en rapport avec une Affection Longue Durée (ALD)."


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
* performer MS
* performer.extension contains FrActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(
    FrPractitionerRoleDocument 
    or FrOrganizationDocument 
    or FrPractitionerRoleDocument 
    or FrPatientINSDocument 
    or FrPatientDocument)

* insert FrRuleSetSimpleObservation