ValueSet: FrValueSetRequestIntent
Id: fr-request-intent
Title: "Intentions restreintes pour ServiceRequest"
Description: "Restriction de ServiceRequest.intent aux codes : proposal, plan et order"
* ^compose.include.system = "http://hl7.org/fhir/request-intent"
* ^compose.include.concept[+].code = #proposal
* ^compose.include.concept[+].code = #plan
* ^compose.include.concept[+].code = #order