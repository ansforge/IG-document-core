// StructureDefinition for Author
Profile: FrAuthor
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Author
Id: fr-core-author
Title: "author"
<<<<<<< HEAD
Description: "author permet d’enregistrer un auteur du document."
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode
* functionCode.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS (required)
* functionCode.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans functionCode
* functionCode.code 1..1 // Rendre le code en obligatoire si functionCode existe
* functionCode.codeSystem 1..1 // Rendre le codeSystem en obligatoire si functionCode existe
* functionCode.codeSystemVersion 0..0 // Interdire l’attribut @codeSystemVersion dans functionCode
* functionCode.sdtcValueSet 0..0 // Interdire l’attribut @sdtcValueSet dans functionCode
* functionCode.sdtcValueSetVersion 0..0 // Interdire l’attribut @sdtcValueSetVersion dans functionCode
* time.value 1..1
=======
Description: "L'élément de l'en-tête du CDA author permet d’enregistrer un auteur du document."
* ^status = #draft
* nullFlavor 0..0 
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* contextControlCode 0..0
* functionCode ^short = "Rôle fonctionnel de l'auteur. A utiliser uniquement si l'auteur est un professionnel."
* functionCode.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS (required)
* functionCode.nullFlavor 0..0
* functionCode.code 1..1 // Rendre le code en obligatoire si functionCode existe
* functionCode.codeSystem 1..1 // Rendre le codeSystem en obligatoire si functionCode existe
* functionCode.codeSystemVersion 0..0
* functionCode.sdtcValueSet 0..0
* functionCode.sdtcValueSetVersion 0..0
* functionCode.originalText ^short = "Description du rôle fonctionnel de l'auteur."
* time ^short = "Horodatage de la participation de l’auteur"
* time.value 1..1
* assignedAuthor ^short = "Identification de l’auteur"
>>>>>>> main
* assignedAuthor only fr-core-assigned-author // Déclare une référence obligatoire vers FrAssignedAuthor