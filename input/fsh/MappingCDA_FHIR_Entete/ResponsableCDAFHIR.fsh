Instance: mappingResponsableCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Responsable/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier du responsable du document et l'élément CDA legalAuthenticator
 - Groupe Mapping 2 : entre l'élément CDA legalAuthenticator et l'élément FHIR Composition.attester"""

* name = "Mapping du modèle métier Responsable/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Responsable"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-legal-authenticator"									
* group[=].element[+].code = #Responsable							
* group[=].element[=].target.code = #legalAuthenticator
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Responsable.dateHeureAttestationPriseResponsabilite								
* group[=].element[=].target.code = #legalAuthenticator.time
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Responsable.responsable								
* group[=].element[=].target.code = #legalAuthenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément responsable est de type PersonneStructure."

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-legal-authenticator"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"									
* group[=].element[+].code = #legalAuthenticator				
* group[=].element[=].target.code = #Composition.attester						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.where(mode='legal')"		
* group[=].element[+].code = #legalAuthenticator.time				
* group[=].element[=].target.code = #Composition.attester.time						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole)"
* group[=].element[+].code = #legalAuthenticator.assignedEntity.id		
* group[=].element[=].target.code = #Composition.attester.party.Practitioner.identifier						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()"
* group[=].element[+].code = #legalAuthenticator.assignedEntity.code	
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.qualification.code						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.addr					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.address					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.telecom					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.telecom					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.name					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.name.family					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name.family					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.name.given				
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.name.prefix				
* group[=].element[=].target.code = #Composition.attester.party.Practitioner.name.prefix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.name.suffix			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name.suffix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.representedOrganization			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole).organization.resolve()"
* group[=].element[+].code = #legalAuthenticator.assignedEntity.representedOrganization.id			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.identifier				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.representedOrganization.name			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.name			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.representedOrganization.telecom			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.telecom			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.representedOrganization.addr			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.address		
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #legalAuthenticator.assignedEntity.representedOrganization.standardIndustryClassCode			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.type		
* group[=].element[=].target.equivalence = #equivalent