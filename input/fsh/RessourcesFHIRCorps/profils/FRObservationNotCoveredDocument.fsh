Profile: FRObservationNotCoveredDocument
Parent: Observation
Id: fr-observation-not-covered-document
Title: "Observation - FR Observation Not Covered Document"
Description: "FRObservationNotCoveredDocument permet d'indiquer si le traitement auquel elle est associée est non remboursable."

* code ^short = "Catégorie de l'entrée"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-181 "Non remboursable"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement prescrit n'est pas remboursable
value='false' : le traitement prescrit est remboursable
"""

* performer MS
* performer.extension contains FRActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(
    FRPractitionerRoleDocument 
    or FROrganizationDocument 
    or FRPractitionerRoleDocument 
    or FRPatientINSDocument 
    or FRPatientDocument)

* insert FRRuleSetSimpleObservation
