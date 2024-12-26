// StructureDefinition for Author
Profile: FrAuthor
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Author
Id: fr-core-author
Title: "author"
Description: "author permet d’enregistrer un auteur du document."
* ^status = #draft
* nullFlavor 0..0 // Interdit l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdit l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdit l’attribut @displayable dans typeId
* typeCode 0..0 // Interdit l’attribut @typeCode
* contextControlCode 0..0 // Interdit l’attribut @contextControlCode
* functionCode.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS (required)
* functionCode.nullFlavor 0..0 // Interdit l’attribut @nullFlavor dans functionCode
* functionCode.code 1..1 // Rendre le code en obligatoire si functionCode existe
* functionCode.codeSystem 1..1 // Rendre le codeSystem en obligatoire si functionCode existe
* functionCode.codeSystemVersion 0..0 // Interdit l’attribut @codeSystemVersion dans functionCode
* functionCode.sdtcValueSet 0..0 // Interdit l’attribut @sdtcValueSet dans functionCode
* functionCode.sdtcValueSetVersion 0..0 // Interdit l’attribut @sdtcValueSetVersion dans functionCode
* time.value 1..1
* assignedAuthor only Reference(fr-core-assignedAuthor) // Déclare une référence obligatoire vers FrAssignedAuthor