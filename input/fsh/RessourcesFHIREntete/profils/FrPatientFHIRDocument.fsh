// StructureDefinition for Patient
Profile: FrPatientFHIRDocument
Parent: FRCorePatientProfile
Id: fr-patient-fhir-document
Title: "Fr PatientFHIR Document"
Description: "Ce profil représente le patient concerné par le document."
* contact
  * name 1..1 
  * name only fr-human-name-document
  * address 0..1
// relationship
  * relationship[RelationType] from $JDV_J11_RelationPatient_CISIS  (required)
  * relationship[Role] from FRValueSetPatientContactRole  (required)
* generalPractitioner only Reference(FrPractitionerDocument)
* generalPractitioner obeys pat-gp-1
* generalPractitioner obeys pat-gp-2
* generalPractitioner obeys pat-gp-3

* name.family.extension contains $qualifier named qualifier-family 1..1
  * ^short = "qualifier='BR' pour le nom de naissance (ou nom de famille) : obligatoire si le matricule INS est présent.| qualifier='CL' pour le nom utilisé (RNIV)."
* name.given.extension contains $qualifier named qualifier-given 0..1
  * ^short = "qualifier non utilisé pour la liste des prénoms de l’acte de naissance : obligatoire si le matricule INS est présent.| qualifier='BR' pour le premier prénom extrait de la liste des prénoms de l’acte de naissance : obligatoire si le matricule INS est présent.| 
  qualifier='CL' pour pour le prénom utilisé (RNIV)."

//INVARIANTS
Invariant: pat-gp-1
Description: "Le generalPractitioner doit être un PractitionerRole contenant un code[typeCode] fixé à 'INF'."
Expression:  "resolve().code.coding.where(code='INF').exists()"
Severity: #error

Invariant: pat-gp-2
Description: "Le generalPractitioner doit être un PractitionerRole contenant un un code[functionCode] fixé à 'PCP'."
Expression: "resolve().code.coding.where(code='PCP').exists()"
Severity: #error

Invariant: pat-gp-3
Description: "Le generalPractitioner doit être un PractitionerRole contenant un un code[classCode] fixé à 'PROV'."
Expression: "resolve().code.coding.where(code='PROV').exists()"
Severity: #error