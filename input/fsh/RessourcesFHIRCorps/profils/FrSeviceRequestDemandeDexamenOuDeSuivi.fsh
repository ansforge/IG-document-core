Profile: FrSeviceRequestDemandeDexamenOuDeSuivi
Parent: ServiceRequest
Id: fr-service-request-demande-d-examen-ou-de-suivi
Title: "ServiceRequest - Fr Demande d'examen ou de Suivi"
Description: "Ce profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* intent MS
* intent ^short = 
"""
Si la demande fait partie d'un plan de soins : 'INT = order'
Si la demande est une proposition : 'PRP = proposal'
Si la demande est un objectif à atteindre : 'GOL = plan'
"""
* intent from FrValueSetRequestIntent (required)

* code 1..1 MS
* code ^short = "Type de la demande"
* code.coding ^short = "Type de la demande : Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20 'Autre demande d’examen ou de suivi'"
//Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20
//* code.concept = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-092.04.20 "Autre demande d’examen ou de suivi"
* occurrence[x] 1..1 MS
* occurrence[x] ^short = "Date prévisionnelle de l'examen, du suivi, de l'objectif"
* orderDetail 0..1 MS
* orderDetail.coding ^short = "Résultat de la demande"
// * supportingInfo ^short = "Résultat de la demande"
// * supportingInfo only Reference(Observation)

* bodySite MS
* bodySite ^short = "Cible"

* extension contains FrInterpretationExtension named interpretation 0..1
* extension[interpretation] MS
* extension[interpretation] ^short = "Interprétation"

* extension contains FrMethodExtension named method 0..1 
* extension[method] MS
* extension[method] ^short = "Méthode"

* requester MS
* requester.extension contains FrActorExtension named author 0..1
* requester.extension[author] ^short = "Auteur de la demande"
* requester.extension[author].extension[type].valueCode = #AUT (exactly)
* requester.extension[author].extension[actor].valueReference only Reference(FrPractitionerRoleDocument or Device or FrDeviceDocument or FrOrganizationDocument or FrRelatedPersonDocument or FrPatientINSDocument or FrPatientDocument)