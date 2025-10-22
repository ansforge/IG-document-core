Profile: FRPatientINSDocument
Parent: FRCorePatientINSProfile
Id: fr-patient-ins-document
Title: "FR Patient INS Document"
Description: "Ce profil représente le patient concerné par le document."

* contact
  * name 1..1 
  * name only fr-human-name-document
  * address 0..1
// relationship
  * relationship[RelationType] from $JDV_J11_RelationPatient_CISIS  (required)
  * relationship[Role] from $jdv-role-informateur-cisis (required)

* generalPractitioner only Reference(FRPractitionerDocument)