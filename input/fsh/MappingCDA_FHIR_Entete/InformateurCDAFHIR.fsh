Instance: mappingInformateurCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Informateur/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier de l'informateur et l'élément CDA informant
 - Groupe Mapping 2 : entre l'élément CDA informant et InformantExtension en FHIR"""

* name = "Mapping du modèle métier Informateur/CDA/FHIR"
* status = #draft
* experimental = false
* sourceUri = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"					
* targetUri = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"

// Mapping modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"									
* group[=].element[+].code = #Informateur								
* group[=].element[=].target.code = #informant
* group[=].element[=].target.equivalence = #equivalent
// Mapping pour assignedEntity
* group[=].element[+].code = #Informateur.informateur								
* group[=].element[=].target.code = #informant.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Informateur.informateur.resolve().ofType(PersonneStructure)"
// Mapping pour relatedEntity
* group[=].element[+].code = #Informateur.informateur								
* group[=].element[=].target.code = #informant.relatedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Informateur.informateur.resolve().ofType(PersonneStructure)"
// Mapping modèle CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-informant-extension"									
* group[=].element[+].code = #informant					
* group[=].element[=].target.code = #extension:InformantExtension						
* group[=].element[=].target.equivalence = #equivalent									
* group[=].element[+].code = #informant.assignedEntity						
* group[=].element[=].target.code = #extension:InformantExtension.extension:party.ValueReference							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "informantExtension.extension:party.resolve().ofType(PractitionerRole or Patient)"
* group[=].element[+].code = #informant.relatedEntity						
* group[=].element[=].target.code = #extension:InformantExtension.extension:party.ValueReference							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "informantExtension.extension:party.resolve().ofType(RelatedPerson)"

