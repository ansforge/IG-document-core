// StructureDefinition for Accidents Transfusionnels
Profile: FrObservationAccidentsTransfusionnels
Parent: Observation
Id: fr-accidents-transfusionnels
Title: "Observation - Fr Observation Accidents Transfusionnels"
Description: "FrObservationAccidentsTransfusionnels est un profil utilisé pour décrire un accident transfusionnel."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-146 "Accidents transfusionnels"
* value[x] only string
* valueString 1..1 MS
* valueString ^short = "Description sous forme textuelle de l'accident transfusionnel"

// author
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer contains auteur 0..1 MS
* performer[auteur] ^short = "Auteur"
* performer[auteur] only Reference(FrPractitionerRoleDocument or FrPatientINSDocument or FrPatientDocument or FrOrganizationDocument)
* performer[auteur].extension contains $event-performerFunction named performerFunction 0..1
* performer[auteur].extension[performerFunction] ^short = "Rôle fonctionnel de l'auteur :
Si l'auteur est le patient/usager : ne pas utiliser l'élément performerFunction
Si l'auteur n'est pas le patient :Valeur issue du https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS."

* insert FrRuleSetSimpleObservation