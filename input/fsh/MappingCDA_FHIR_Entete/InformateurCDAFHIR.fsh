Instance: mappingInformateurCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Informateur : CDA et FHIR"
Description: """Mapping du modèle métier Informateur entre CDA et FHIR."""

* name = "Mapping du modèle métier Informareur : CDA et FHIR"
* status = #draft
* experimental = false

// Mapping modèle métier / FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"									
* group[=].element[+].code = #Informateur								
* group[=].element[=].target.code = #informant
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

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity"									
* group[=].element[+].code = #PersonneStructure								
* group[=].element[=].target.code = #relatedEntity								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.identifiantPersonne						
* group[=].element[=].target.code = #relatedEntity.id								
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #PersonneStructure.personne.professionRole					
* group[=].element[=].target.code = #relatedEntity@classCode							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.lien				
* group[=].element[=].target.code = #relatedEntity.code							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.adresse					
* group[=].element[=].target.code = #relatedEntity.addr								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.coordonneesTelecom				
* group[=].element[=].target.code = #relatedEntity.telecom						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne				
* group[=].element[=].target.code = #relatedEntity.assignedPerson					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.nomPersonne				
* group[=].element[=].target.code = #relatedEntity.assignedPerson.name.family					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.nomPersonne.prenomPersonne				
* group[=].element[=].target.code = #relatedEntity.assignedPerson.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.civilite				
* group[=].element[=].target.code = #relatedEntity.assignedPerson.prefix					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.titre				
* group[=].element[=].target.code = #relatedEntity.assignedPerson.suffix 					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure				
* group[=].element[=].target.code = #relatedEntity.representedOrganization					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.identifiantStructure				
* group[=].element[=].target.code = #relatedEntity.representedOrganization.id					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.nomStructure				
* group[=].element[=].target.code = #relatedEntity.representedOrganization.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.adresse				
* group[=].element[=].target.code = #relatedEntity.representedOrganization.addr					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.coordonneesTelecom				
* group[=].element[=].target.code = #relatedEntity.representedOrganization.telecom					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.structure.secteurActivite				
* group[=].element[=].target.code = #relatedEntity.representedOrganization.standardIndustryClassCode				
* group[=].element[=].target.equivalence = #equivalent	


* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-informant-extension"									
* group[=].element[+].code = #informant					
* group[=].element[=].target.code = #informantExtension						
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-informant-extension"									
* group[=].element[+].code = #informant.assignedEntity						
* group[=].element[=].target.code = #informantExtension.extension:party							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "informantExtension.extension:party.resolve().ofType(PractitionerRole or Patient)"

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-informant-extension"									
* group[=].element[+].code = #informant.relatedEntity						
* group[=].element[=].target.code = #informantExtension.extension:party							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "informantExtension.extension:party.resolve().ofType(RelatedPerson)"