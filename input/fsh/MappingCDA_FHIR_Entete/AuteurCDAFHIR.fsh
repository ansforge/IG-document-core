Instance: mappingAuteurCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Auteur : CDA et FHIR"
Description: """Mapping du modèle métier Auteur entre CDA et FHIR."""

* name = "Mapping du modèle métier Auteur : CDA et FHIR"
* status = #draft
* experimental = false

// Mapping modèle métier / FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-author"									
* group[=].element[+].code = #Auteur								
* group[=].element[=].target.code = #author									
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Auteur.roleFonctionnel								
* group[=].element[=].target.code = #author.functionCode									
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Auteur.horodatageParticipation								
* group[=].element[=].target.code = #author.time								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Auteur.auteur[x]								
* group[=].element[=].target.code = #author.assignedAuthor								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[0].target.comment = "Auteur du document : ce peut être un professionnel, un patient/usager ou un système."

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author"									
* group[=].element[+].code = #PersonneStructureAuteur								
* group[=].element[=].target.code = #assignedAuthor								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[0].target.comment = "Auteur du document : Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels)."
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
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne.nomPersonne.prenomPersonne				
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne.civilite				
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.prefix					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructureAuteur.personne.IdentitePersonne.titre				
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.suffix 					
* group[=].element[=].target.equivalence = #equivalent
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

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Systeme"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authoring-device"									
* group[=].element[+].code = #Systeme.systeme					
* group[=].element[=].target.code = #assignedAuthoringDevice							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Systeme.systeme.nomModeleSysteme				
* group[=].element[=].target.code = #assignedAuthoringDevice.manufacturerModelName							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Systeme.systeme.nomSysteme				
* group[=].element[=].target.code = #assignedAuthoringDevice.softwareName							
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-author"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document"									
* group[=].element[+].code = #author						
* group[=].element[=].target.code = #PractitionerRole								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #author.functionCode								
* group[=].element[=].target.code = #PractitionerRole.code									
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #author.time								
* group[=].element[=].target.code = #Composition.author.extension:time								
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitioner-document"
* group[=].element[+].code = #assignedAuthor.id					
* group[=].element[=].target.code = #Practitioner.identifier								
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #assignedAuthor.code					
* group[=].element[=].target.code = #Practitioner.qualification.code							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.addr				
* group[=].element[=].target.code = #Practitioner.address								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.telecom				
* group[=].element[=].target.code = #Practitioner.telecom						
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-person"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitioner-document"
* group[=].element[+].code = #assignedPerson.name				
* group[=].element[=].target.code = #Practitioner.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedPerson.name.family				
* group[=].element[=].target.code = #Practitioner.name.family					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedPerson.name.given				
* group[=].element[=].target.code = #Practitioner.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedPerson.prefix				
* group[=].element[=].target.code = #Practitioner.name.prefix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedPerson.suffix 				
* group[=].element[=].target.code = #Practitioner.name.suffix					
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-represented-organization"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-organization-document"
* group[=].element[+].code = #representedOrganization				
* group[=].element[=].target.code = #Organization				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #representedOrganization.id				
* group[=].element[=].target.code = #Organization.identifier					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #representedOrganization.name				
* group[=].element[=].target.code = #Organization.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #representedOrganization.addr				
* group[=].element[=].target.code = #Organization.Organization.address				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #representedOrganization.telecom			
* group[=].element[=].target.code = #Organization.telecom					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #representedOrganization.standardIndustryClassCode				
* group[=].element[=].target.code = #Organization.type			
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authoring-device"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-document"									
* group[=].element[+].code = #assignedAuthoringDevice				
* group[=].element[=].target.code = #Device							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthoringDevice.manufacturerModelName					
* group[=].element[=].target.code = #Device.deviceName.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthoringDevice.softwareName					
* group[=].element[=].target.code = #Device.deviceName.type						
* group[=].element[=].target.equivalence = #equivalent






