Instance: MappingGenderFHIRANS
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping entre ValueSet FHIR et ValueSet ANS pour le genre"
Description: "Ce ConceptMap établit la correspondance entre les codes du ValueSet FHIR et ceux du ValueSet ANS pour le genre."

* name = "GenderMappingFHIRtoANS"
* status = #active
* experimental = false

* group[+].source = "http://hl7.org/fhir/administrative-gender"
* group[=].target = "$JDV_J143_AdministrativeGender"

* group[=].element[+].code = #male
* group[=].element[=].target.code = #M
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #female
* group[=].element[=].target.code = #F
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #unknown
* group[=].element[=].target.code = #UN
* group[=].element[=].target.equivalence = #equivalent