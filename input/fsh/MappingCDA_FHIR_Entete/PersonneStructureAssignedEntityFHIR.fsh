Instance: mappingPersonneStructureAssignedEntityFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier PersonneStructure/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier de la personne et/ou structure et l'élément CDA assignedEntity
 - Groupe Mapping 2 : entre l'élément CDA assignedEntity et le profil FHIR FrPractitionerRoleDocument"""

* name = "Mapping du modèle métier PersonneStructure/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity"									
* group[=].element[+].code = #PersonneStructure							
* group[=].element[=].target.code = #assignedEntity
* group[=].element[=].target.equivalence = #equivalent
// personne
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
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.prenomPersonne						
* group[=].element[=].target.code = #assignedEntity.assignedPerson.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.civilite						
* group[=].element[=].target.code = #assignedEntity.assignedPerson.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.titre						
* group[=].element[=].target.code = #assignedEntity.assignedPerson.name.suffix
* group[=].element[=].target.equivalence = #equivalent
//Structure
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

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document"									
* group[=].element[+].code = #assignedEntity						
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.id							
* group[=].element[=].target.code = #PractitionerRole.practitioner.identifier
* group[=].element[=].target.comment = "PractitionerRole.practitioner.resolve().ofType(Practitioner)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.code						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.qualification.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.addr						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.telecom						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.assignedPerson.name					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.assignedPerson.name.family					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.assignedPerson.name.given						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.assignedPerson.name.prefix					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.assignedPerson.name.suffix					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.suffix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.representedOrganization					
* group[=].element[=].target.code = #PractitionerRole.Organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "PractitionerRole.organization.resolve().ofType(Organization)"
* group[=].element[+].code = #assignedEntity.representedOrganization.id					
* group[=].element[=].target.code = #PractitionerRole.Organization.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.representedOrganization.name				
* group[=].element[=].target.code = #PractitionerRole.Organization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.representedOrganization.addr				
* group[=].element[=].target.code = #PractitionerRole.Organization.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.representedOrganization.telecom					
* group[=].element[=].target.code = #PractitionerRole.Organization.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedEntity.representedOrganization.standardIndustryClassCode					
* group[=].element[=].target.code = #PractitionerRole.Organization.type
* group[=].element[=].target.equivalence = #equivalent