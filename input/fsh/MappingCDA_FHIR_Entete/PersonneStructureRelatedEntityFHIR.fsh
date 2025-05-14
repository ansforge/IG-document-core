Instance: mappingPersonneStructureRelatedEntityFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier PersonneStructure/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier de la personne et/ou structure et l'élément CDA relatedEntity
 - Groupe Mapping 2 : entre l'élément CDA relatedEntity et le profil FHIR FrRelatedPersonDocument
 - Groupe Mapping 3 : entre l'élément CDA relatedEntity et l'élément FHIR Patient.contact"""

* name = "Mapping du modèle métier PersonneStructure/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity"									
* group[=].element[+].code = #PersonneStructure							
* group[=].element[=].target.code = #relatedEntity
* group[=].element[=].target.equivalence = #equivalent
// personne
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
* group[=].element[=].target.code = #relatedEntity.relatedPerson
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.nomPersonne					
* group[=].element[=].target.code = #relatedEntity.relatedPerson.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.prenomPersonne						
* group[=].element[=].target.code = #relatedEntity.relatedPerson.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.civilite						
* group[=].element[=].target.code = #relatedEntity.relatedPerson.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonneStructure.personne.IdentitePersonne.titre						
* group[=].element[=].target.code = #relatedEntity.relatedPerson.name.suffix
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping 2 : CDA to FHIR (RelatedPerson)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-related-person-document"									
* group[=].element[+].code = #relatedEntity						
* group[=].element[=].target.code = #RelatedPerson
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity@classCode					
* group[=].element[=].target.equivalence = #unmatched	
* group[=].element[+].code = #relatedEntity.code						
* group[=].element[=].target.code = #RelatedPerson.relationship.coding
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.addr						
* group[=].element[=].target.code = #RelatedPerson.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.telecom						
* group[=].element[=].target.code = #RelatedPerson.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson					
* group[=].element[=].target.code = #RelatedPerson.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.family					
* group[=].element[=].target.code = #RelatedPerson.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.given						
* group[=].element[=].target.code = #RelatedPerson.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.prefix					
* group[=].element[=].target.code = #RelatedPerson.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.suffix					
* group[=].element[=].target.code = #RelatedPerson.name.suffix
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR (Patient.contact)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document"									
* group[=].element[+].code = #relatedEntity						
* group[=].element[=].target.code = #Patient.contact
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity@classCode
* group[=].element[=].target.code = #Patient.contact.relationship:Role
* group[=].element[=].target.equivalence = #equivalent						
* group[=].element[+].code = #relatedEntity.code						
* group[=].element[=].target.code = #Patient.contact.relationship:RelationType.coding
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.addr						
* group[=].element[=].target.code = #Patient.contact.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.telecom						
* group[=].element[=].target.code = #Patient.contact.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name					
* group[=].element[=].target.code = #Patient.contact.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.family					
* group[=].element[=].target.code = #Patient.contact.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.given						
* group[=].element[=].target.code = #Patient.contact.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.prefix					
* group[=].element[=].target.code = #Patient.contact.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedEntity.relatedPerson.name.suffix					
* group[=].element[=].target.code = #Patient.contact.name.suffix
* group[=].element[=].target.equivalence = #equivalent