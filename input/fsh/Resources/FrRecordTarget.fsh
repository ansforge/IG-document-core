// StructureDefinition for RecordTarget
Profile: FrRecordTarget
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RecordTarget
Id: fr-core-recordTarget
Title: "recordTarget"
Description: "Patient/Usager concerné par le document."
* ^status = #draft
* nullFlavor 0..0 // Interdit l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdit l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdit l’attribut @displayable dans typeId
* typeCode 0..0 // Interdit l’attribut @typeCode
* contextControlCode 0..0 // Interdit l’attribut @contextControlCode
