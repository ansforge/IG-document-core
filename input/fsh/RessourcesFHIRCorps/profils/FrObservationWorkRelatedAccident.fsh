Profile: FrObservationWorkRelatedAccident
Parent: Observation
Id: fr-work-related-accident
Title: "Observation - Fr work related accident"
Description: "FrObservationWorkRelatedAccident permet d'indiquer si l'élément auquel elle est associée est en rapport avec un accident du travail / une maladie professionnelle."

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

* performer MS
* performer.extension contains FrActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.extension[author].extension[actor].valueReference only Reference(
    FrPractitionerRoleDocument 
    or FrOrganizationDocument 
    or FrPractitionerRoleDocument 
    or FrPatientINSDocument 
    or FrPatientDocument)

* insert FrRuleSetSimpleObservation