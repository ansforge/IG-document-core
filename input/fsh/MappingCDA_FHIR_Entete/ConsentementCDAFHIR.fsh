Instance: mappingConsentementCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Consentement/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier du consentement associé au document et l'élément CDA authorization
 - Groupe Mapping 2 : entre l'élément CDA authorization et l'extension FHIR ConsentExtension"""

* name = "Mapping du modèle métier Consentement/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Consentement"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authorization"									
* group[=].element[+].code = #Consentement							
* group[=].element[=].target.code = #authorization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Consentement.identifiantConsentement								
* group[=].element[=].target.code = #authorization.consent.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Consentement.typeConsentement							
* group[=].element[=].target.code = #authorization.consent.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Consentement.statutConsentement								
* group[=].element[=].target.code = #authorization.consent.statusCode="completed"
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authorization"					
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension"
* group[=].element[+].code = #authorization							
* group[=].element[=].target.code = #extension:ConsentExtension.ValueReference.Consent
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Consent)"
* group[=].element[+].code = #authorization.consent.id								
* group[=].element[=].target.code = #extension:ConsentExtension.ValueReference.Consent.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authorization.consent.code						
* group[=].element[=].target.code = #extension:ConsentExtension.ValueReference.Consent.category 
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authorization.consent.statusCode="completed"								
* group[=].element[=].target.code = #extension:ConsentExtension.ValueReference.Consent.status:active 
* group[=].element[=].target.equivalence = #equivalent