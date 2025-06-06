Instance: CdaToFhirProcedureStatus
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping CDA status vers FHIR Procedure.status"
Description: "Correspondance entre les statuts CDA (statusCode) et FHIR (Procedure.status)."

* url = "http://example.org/ConceptMap/cda-to-fhir-procedure-status"
* status = #active
* sourceUri = "http://terminology.hl7.org/CodeSystem/v3-ActStatus"
* targetUri = "http://hl7.org/fhir/event-status"

* group[0].source = "http://hl7.org/v3/ActStatus"
* group[0].target = "http://hl7.org/fhir/procedure-status"

* group[0].element[0].code = #completed
* group[0].element[0].target[0].code = #completed
* group[0].element[0].target[0].equivalence = #equivalent

* group[0].element[1].code = #active
* group[0].element[1].target[0].code = #in-progress
* group[0].element[1].target[0].equivalence = #equivalent

* group[0].element[2].code = #cancelled
* group[0].element[2].target[0].code = #not-done
* group[0].element[2].target[0].equivalence = #equivalent

* group[0].element[3].code = #aborted
* group[0].element[3].target[0].code = #stopped
* group[0].element[3].target[0].equivalence = #equivalent

