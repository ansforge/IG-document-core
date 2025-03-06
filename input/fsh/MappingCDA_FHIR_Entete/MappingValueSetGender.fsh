Instance: MappingAdministrativeGender
InstanceOf: ConceptMap
Usage: #definition
Title: "MappingValueSetAdministrativeGender"
Description: "Ce ConceptMap établit la correspondance entre les codes du ValueSet FHIR AdministrativeGender et ceux du ValueSet JDV_J143-AdministrativeGender-CISIS."

* name = "GenderMappingFHIRtoANS"
* status = #active
* experimental = false

* group[+].source = "http://hl7.org/fhir/administrative-gender"
* group[=].target = "https://mos.esante.gouv.fr/NOS/JDV_J143-AdministrativeGender-CISIS/FHIR/JDV-J143-AdministrativeGender-CISIS"

* group[=].element[+].code = #male
* group[=].element[=].target.code = #M
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #female
* group[=].element[=].target.code = #F
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #unknown
* group[=].element[=].target.code = #UN
* group[=].element[=].target.equivalence = #equivalent