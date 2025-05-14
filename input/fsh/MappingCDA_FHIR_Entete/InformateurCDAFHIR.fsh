Instance: mappingInformateurCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Informateur/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier de l'informateur et l'élément CDA informant
 - Groupe Mapping 2 : entre l'élément CDA informant et l'extension FHIR InformantExtension"""

* name = "Mapping du modèle métier Informateur/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"									
* group[=].element[+].code = #Informateur								
* group[=].element[=].target.code = #informant
* group[=].element[=].target.equivalence = #equivalent
// Mapping pour assignedEntity
* group[=].element[+].code = #Informateur.informateur								
* group[=].element[=].target.code = #informant.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément informateur est de type PersonneStructure."
// Mapping pour relatedEntity
* group[=].element[+].code = #Informateur.informateur								
* group[=].element[=].target.code = #informant.relatedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément informateur est de type PersonneStructure."
// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"					
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension"									
* group[=].element[+].code = #informant					
* group[=].element[=].target.code = #extension:InformantExtension						
* group[=].element[=].target.equivalence = #equivalent									
* group[=].element[+].code = #informant.assignedEntity						
* group[=].element[=].target.code = #extension:InformantExtension.extension:party.ValueReference							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "extension:party.ValueReference.resolve().ofType(PractitionerRole or Patient)"
* group[=].element[+].code = #informant.relatedEntity						
* group[=].element[=].target.code = #extension:InformantExtension.extension:party.ValueReference							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "extension:party.ValueReference.resolve().ofType(RelatedPerson)"