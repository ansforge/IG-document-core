// StructureDefinition for Patient INS Document
Profile: FrPatientINSDocument
Parent: FRCorePatientINSProfile
Id: fr-patient-ins-document
Title: "Fr Patient INS Document"
Description: "Ce profil représente le patient concerné par le document."

* name[officialName].family ^short = "Nom de naissance"
* name[usualName].family ^short = "Nom utilisé"
* name[usualName].family 0..1
* name[officialName].extension[birth-list-given-name] ^short = "Liste des prénoms de l'acte de naissance"
* name[officialName].given ^short = "Premier prénom de l'acte de naissance"
* name[usualName].given ^short = "Prénom utilisé"
* name[usualName].given 0..1

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

//INVARIANTS
Invariant: pat-gp-1
Description: "Le generalPractitioner doit être un PractitionerRole contenant un code[typeCode] fixé à 'INF'."
Expression:  "resolve().code.coding.where(code='INF').exists()"
Severity: #error

Invariant: pat-gp-2
Description: "Le generalPractitioner doit être un PractitionerRole contenant un code[functionCode] fixé à 'PCP'."
Expression: "resolve().code.coding.where(code='PCP').exists()"
Severity: #error

Invariant: pat-gp-3
Description: "Le generalPractitioner doit être un PractitionerRole contenant un code[classCode] fixé à 'PROV'."
Expression: "resolve().code.coding.where(code='PROV').exists()"
Severity: #error