// StructureDefinition for RecordTarget
Profile: FrRecordTarget
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RecordTarget
Id: fr-core-record-target
Title: "recordTarget"
<<<<<<< HEAD
Description: "Patient/Usager concerné par le document."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode
=======
Description: "L'élément de l'en-tête du CDA recordTarget permet de représenter le patient/usager concerné par le document."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* contextControlCode 0..0
* patientRole ^short = "Description du patient/usager."
>>>>>>> main
* patientRole only fr-core-patient-role // patient est de type fr-core-patient-role
