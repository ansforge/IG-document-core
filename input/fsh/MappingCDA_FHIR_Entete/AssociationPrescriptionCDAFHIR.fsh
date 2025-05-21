Instance: mappingAssociationPrescriptionCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : "Prescription" "
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier "prescription" et l'élément CDA "inFulfillmentOf"
 - Mapping 2 : entre l'élément CDA "inFulfillmentOf" et l'extension FHIR "OrderExtension""""

* name = "Mapping Métier/CDA/FHIR : "Prescription""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Prescription"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-inFulfillment-of"									
* group[=].element[+].code = #Prescription								
* group[=].element[=].target.code = #inFulfillmentOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Prescription.identifiantPrescription							
* group[=].element[=].target.code = #inFulfillmentOf.order.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Prescription.accessionNumber								
* group[=].element[=].target.code = #inFulfillmentOf.order.ps3-20:accessionNumber
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-inFulfillment-of"					
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension"									
* group[=].element[+].code = #inFulfillmentOf								
* group[=].element[=].target.code = #extension:OrderExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #inFulfillmentOf.order.id							
* group[=].element[=].target.code = #extension:OrderExtension.ValueReference.ServiceRequest.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #inFulfillmentOf.order.ps3-20:accessionNumber							
* group[=].element[=].target.code = #extension:OrderExtension.ValueReference.ServiceRequest.identifier
* group[=].element[=].target.equivalence = #equivalent