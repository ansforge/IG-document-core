// StructureDefinition for Administration de derivés du sang
Profile: FrObservationAdministrationDeDerivesDuSang
Parent: Observation
Id: fr-administration-de-derives-du-sang
Title: "Observation - Fr Observation Administration de derivés du sang"
Description: "FrObservationAdministrationDeDerivesDuSang est un profil utilisé pour indiquer s'il y a eu ou pas une administration de dérivés du sang."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-147 "Administration de dérivés du sang"
* value[x] only boolean
* valueBoolean 1..1 MS
* valueBoolean ^short = "Administration de dérivés du sang"

// author
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer contains auteur 0..1 MS
* performer[auteur] ^short = "Auteur"
* performer[auteur] only Reference(FrPractitionerRoleDocument)
* performer[auteur].extension contains $event-performerFunction named performerFunction 0..1
* performer[auteur].extension[performerFunction] ^short = "Rôle fonctionnel de l'auteur :
Si l'auteur est le patient/usager : ne pas utiliser l'élément performerFunction
Si l'auteur n'est pas le patient :Valeur issue du https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS."