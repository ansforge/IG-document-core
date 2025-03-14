Instance: mappingAuteurCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping du modèle métier Auteur/CDA/FHIR"
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Groupe Mapping 1 : entre le modèle métier de l'auteur et l'élément CDA author
 - Groupe Mapping 2 : entre l'élément CDA author et Composition.author en FHIR"""

* name = "Mapping du modèle métier Auteur/CDA/FHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
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
* group[=].element[+].code = #Auteur.auteurPersonneStructure								
* group[=].element[=].target.code = #author.assignedAuthor.assignedPerson								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Auteur.auteurPersonneStructure.structure								
* group[=].element[=].target.code = #author.assignedAuthor.representedOrganization								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Auteur.auteurSysteme								
* group[=].element[=].target.code = #author.assignedAuthor.assignedAuthoringDevice								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Auteur.auteurSysteme.structure								
* group[=].element[=].target.code = #author.assignedAuthor.representedOrganization								
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-author"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"									
* group[=].element[+].code = #author						
* group[=].element[=].target.code = #Composition.author								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #author.functionCode								
* group[=].element[=].target.code = #Composition.author.PractitionerRole.code									
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Auteur du document est un professionnel et author.ofType(PractitionerRole)"
* group[=].element[+].code = #author.time								
* group[=].element[=].target.code = #Composition.author.extension:time								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #author.assignedAuthor.assignedPerson								
* group[=].element[=].target.code = #Composition.author.PractitionerRole.Practitioner
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #author.assignedAuthor.representedOrganization								
* group[=].element[=].target.code = #Composition.author.PractitionerRole.Organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(PractitionerRole or Patient)"
* group[=].element[+].code = #author.assignedAuthor.assignedAuthoringDevice								
* group[=].element[=].target.code = #Composition.author.Device
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(Device)"
* group[=].element[+].code = #author.assignedAuthor.representedOrganization									
* group[=].element[=].target.code = #Composition.author.Device.owner 						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(Organization)"