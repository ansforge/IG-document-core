Instance: mappingOperateurSaisieCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Opérateur de saisie : CDA et FHIR"
Description: """Mapping du modèle métier Opérateur de saisie entre CDA et FHIR."""

* name = "Mapping du modèle métier Opérateur de saisie : CDA et FHIR"
* status = #draft
* experimental = false

// Mapping modèle métier / FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer"									
* group[=].element[+].code = #OperateurSaisie								
* group[=].element[=].target.code = #dataEnterer
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OperateurSaisie.dateSaisie								
* group[=].element[=].target.code = #dataEnterer.time
* group[=].element[=].target.equivalence = #equivalent								
* group[=].element[+].code = #OperateurSaisie.operateurSaisie								
* group[=].element[=].target.code = #dataEnterer.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity"									
* group[=].element[+].code = #PersonneStructure								
* group[=].element[=].target.code = #assignedEntity								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.identifiantPersonne						
* group[=].element[=].target.code = #assignedEntity.id								
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #PersonneStructure.personne.professionRole					
* group[=].element[=].target.code = #assignedEntity.code							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.adresse					
* group[=].element[=].target.code = #assignedEntity.addr								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.coordonneesTelecom				
* group[=].element[=].target.code = #assignedEntity.telecom						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne				
* group[=].element[=].target.code = #assignedEntity.assignedPerson					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.nomPersonne				
* group[=].element[=].target.code = #assignedEntity.assignedPerson.name.family					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.nomPersonne.prenomPersonne				
* group[=].element[=].target.code = #assignedEntity.assignedPerson.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.civilite				
* group[=].element[=].target.code = #assignedEntity.assignedPerson.prefix					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.titre				
* group[=].element[=].target.code = #assignedEntity.assignedPerson.suffix 					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure				
* group[=].element[=].target.code = #assignedEntity.representedOrganization					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.identifiantStructure				
* group[=].element[=].target.code = #assignedEntity.representedOrganization.id					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.nomStructure				
* group[=].element[=].target.code = #assignedEntity.representedOrganization.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.adresse				
* group[=].element[=].target.code = #assignedEntity.representedOrganization.addr					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.coordonneesTelecom				
* group[=].element[=].target.code = #assignedEntity.representedOrganization.telecom					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.secteurActivite				
* group[=].element[=].target.code = #assignedEntity.representedOrganization.standardIndustryClassCode				
* group[=].element[=].target.equivalence = #equivalent	


* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-data-enterer-extension"									
* group[=].element[+].code = #dataEnterer.time						
* group[=].element[=].target.code = #DataEntererExtension.extension:time						
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-data-enterer-extension"									
* group[=].element[+].code = #dataEnterer.assignedEntity						
* group[=].element[=].target.code = #DataEntererExtension.extension:party							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "DataEntererExtension.extension:party.resolve().ofType(PractitionerRole)"