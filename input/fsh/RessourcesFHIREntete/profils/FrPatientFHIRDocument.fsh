// StructureDefinition for Patient
Profile: FrPatientFHIRDocument
Parent: FRCorePatientProfile
Id: fr-patient-fhir-document
Title: "FrPatientFHIRDocument"
Description: "Ce profil représente le patient concerné par le document."
* contact
  * name 1..1 
  * name only fr-human-name-document
  * address 0..1
// relationship
  * relationship[RelationType] from $JDV_J11_RelationPatient_CISIS  (required)
  * relationship[Role] from FRValueSetPatientContactRole  (required)
* generalPractitioner only Reference(FrPractitionerDocument)

* name.family.extension contains $qualifier named qualifier-family 1..1
  * ^short = "qualifier='BR' pour le nom de naissance (ou nom de famille) : obligatoire si le matricule INS est présent.| qualifier='CL' pour le nom utilisé (RNIV)."
* name.given.extension contains $qualifier named qualifier-given 0..1
  * ^short = "qualifier non utilisé pour la liste des prénoms de l’acte de naissance : obligatoire si le matricule INS est présent.| qualifier='BR' pour le premier prénom extrait de la liste des prénoms de l’acte de naissance : obligatoire si le matricule INS est présent.| 
  qualifier='CL' pour pour le prénom utilisé (RNIV)."

