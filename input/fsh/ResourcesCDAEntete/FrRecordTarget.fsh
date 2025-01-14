// StructureDefinition for RecordTarget
Profile: FrRecordTarget
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RecordTarget
Id: fr-core-record-target
Title: "recordTarget"
Description: "Patient/Usager concerné par le document."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode
* patientRole only fr-core-patient-role // patient est de type fr-core-patient-role
