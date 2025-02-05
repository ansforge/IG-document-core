// StructureDefinition for RecordTarget
Profile: FrRecordTarget
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RecordTarget
Id: fr-core-record-target
Title: "recordTarget"
Description: "Patient/Usager concerné par le document."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* contextControlCode 0..0
* patientRole ^short = "Description du patient/usager."
* patientRole only fr-core-patient-role // patient est de type fr-core-patient-role
