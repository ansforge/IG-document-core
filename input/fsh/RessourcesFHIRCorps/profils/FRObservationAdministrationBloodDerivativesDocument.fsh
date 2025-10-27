Profile: FRObservationAdministrationBloodDerivativesDocument
Parent: Observation
Id: fr-observation-administration-blood-derivatives-document
Title: "Observation - FR Observation Administration Blood Derivatives Document"
Description: "FRObservationAdministrationBloodDerivativesDocument est un profil utilisé pour indiquer s'il y a eu ou pas une administration de dérivés du sang."

* identifier 1..1 MS
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-147 "Administration de dérivés du sang"
* value[x] only boolean
* valueBoolean 1..1 MS
* valueBoolean ^short = "Administration de dérivés du sang"

// Auteur
* performer MS
* performer.extension contains FRActorExtension named author 0..1
* performer.extension[author] ^short = "Auteur"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
* performer.extension[author].extension[actor] ^short = "Dans code[functionCode] de FRPractitionerRoleDocument on trouve le rôle fonctionnel de l'auteur :
Si l'auteur est le patient/usager : ne pas utiliser l'élément code[functionCode]
Si l'auteur n'est pas le patient :Valeur issue du https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS."

* insert FRRuleSetSimpleObservation