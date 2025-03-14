Instance: mappingOperateurSaisieCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Opérateur de saisie : CDA et FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Groupe Mapping 1 : entre le modèle logique métier de l'opérateur de saisieet et l'élément CDA dataEnterer
 - Groupe Mapping 2 : entre l'élément CDA dataEnterer et DataEntererExtension en FHIR"""

* name = "Mapping du modèle métier Opérateur de saisie : CDA et FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer"									
* group[=].element[+].code = #OperateurSaisie								
* group[=].element[=].target.code = #dataEnterer
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OperateurSaisie.dateSaisie								
* group[=].element[=].target.code = #dataEnterer.time
* group[=].element[=].target.equivalence = #equivalent								
* group[=].element[+].code = #OperateurSaisie.operateurSaisie[PersonneStructure]								
* group[=].element[=].target.code = #dataEnterer.assignedEntity
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-data-enterer-extension"									
* group[=].element[+].code = #dataEnterer					
* group[=].element[=].target.code = #DataEntererExtension						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #dataEnterer.time						
* group[=].element[=].target.code = #DataEntererExtension.extension:time						
* group[=].element[=].target.equivalence = #equivalent								
* group[=].element[+].code = #dataEnterer.assignedEntity						
* group[=].element[=].target.code = #DataEntererExtension.extension:party							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "DataEntererExtension.extension:party.resolve().ofType(PractitionerRole)"