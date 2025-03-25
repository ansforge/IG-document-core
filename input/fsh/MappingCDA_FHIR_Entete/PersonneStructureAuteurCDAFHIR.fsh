Instance: mappingPersonneStructureAuteurFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier PersonneStructureAuteur/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier de la personne et/ou structure (Auteur) et l'élément CDA assignedAuthor
 - Groupe Mapping 2 : entre l'élément CDA assignedAuthor et le profil FHIR FrPractitionerRoleDocument"""

* name = "Mapping du modèle métier PersonneStructureAuteur/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author"									
* group[=].element[+].code = #PersonneStructureAuteur							
* group[=].element[=].target.code = #assignedAuthor
* group[=].element[=].target.equivalence = #equivalent
// personne
* group[=].element[+].code = #PersonneStructureAuteur.personne.identifiantPersonne							
* group[=].element[=].target.code = #assignedAuthor.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.professionRole							
* group[=].element[=].target.code = #assignedAuthor.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.adresse						
* group[=].element[=].target.code = #assignedAuthor.addr
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.coordonneesTelecom						
* group[=].element[=].target.code = #assignedAuthor.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne					
* group[=].element[=].target.code = #assignedAuthor.assignedPerson
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne.nomPersonne					
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne						
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne.civilite						
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne.titre						
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.suffix
* group[=].element[=].target.equivalence = #equivalent
//Structure
* group[=].element[+].code = #PersonneStructureAuteur.structure					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.structure.identifiantStructure					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.structure.nomStructure				
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.structure.adresse				
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.addr
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.structure.coordonneesTelecom					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.structure.secteurActivite					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.standardIndustryClassCode
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document"									
* group[=].element[+].code = #assignedAuthor						
* group[=].element[=].target.code = #PractitionerRole.Practitioner
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "PractitionerRole.practitioner.resolve().ofType(Practitioner)"
* group[=].element[+].code = #assignedAuthor.id							
* group[=].element[=].target.code = #PractitionerRole.Practitioner.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.code						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.qualification.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.addr						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.telecom						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name				
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.family					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.given						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.prefix					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.suffix					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.suffix
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #assignedAuthor.representedOrganization					
* group[=].element[=].target.code = #PractitionerRole.Organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "PractitionerRole.organization.resolve().ofType(Organization)"
* group[=].element[+].code = #assignedAuthor.representedOrganization.id					
* group[=].element[=].target.code = #PractitionerRole.Organization.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.name				
* group[=].element[=].target.code = #PractitionerRole.Organization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.addr				
* group[=].element[=].target.code = #PractitionerRole.Organization.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.telecom					
* group[=].element[=].target.code = #PractitionerRole.Organization.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.standardIndustryClassCode					
* group[=].element[=].target.code = #PractitionerRole.Organization.type
* group[=].element[=].target.equivalence = #equivalent