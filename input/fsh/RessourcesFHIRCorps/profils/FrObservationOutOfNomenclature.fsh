Profile: FrObservationOutOfNomenclature
Parent: Observation
Id: fr-out-of-nomenclature
Title: "Observation - Fr Out of nomenclature"
Description: "FrObservationOutOfNomenclature permet d'indiquer si l’acte est hors nomenclature."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code ^short = "Catégorie de l'entrée"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-298 "Hors nomenclature"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : l’acte n’est pas hors nomenclature
value='false' : l’acte est hors nomenclature
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