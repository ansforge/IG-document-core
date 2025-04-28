Instance: mappingDocumentReferenceCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier DocumentReference/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier du document de référence et l'élément CDA relatedDocument
 - Groupe Mapping 2 : entre l'élément CDA relatedDocument et l'élément FHIR Composition.relatesTo"""

* name = "Mapping du modèle métier DocumentReference/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentReference"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-document"									
* group[=].element[+].code = #DocumentReference							
* group[=].element[=].target.code = #relatedDocument
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #DocumentReference.typeReference								
* group[=].element[=].target.code = #relatedDocument@typeCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #DocumentReference.identifiantUniqueDocument								
* group[=].element[=].target.code = #relatedDocument.parentDocument.id
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-document"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
* group[=].element[+].code = #relatedDocument						
* group[=].element[=].target.code = #Composition.relatesTo
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedDocument@typeCode								
* group[=].element[=].target.code = #Composition.relatesTo.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedDocument.parentDocument.id								
* group[=].element[=].target.code = #Composition.relatesTo.targetIdentifier
* group[=].element[=].target.equivalence = #equivalent