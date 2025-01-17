// StructureDefinition for Participant
Profile: FrParticipant
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Participant1
Id: fr-core-participant
Title: "participant"
Description: "participant représente toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs."
* ^status = #draft
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0	// Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode
* typeCode ^short = "Type de participation : la valeur doit être issue du JDV_J144_ParticipationType_CISIS (1.2.250.1.213.1.1.5.591)"
* typeCode from https://mos.esante.gouv.fr/NOS/JDV_J144-ParticipationType-CISIS/FHIR/JDV-J144-ParticipationType-CISIS
* functionCode ^short = "Rôle fonctionnel"
* time 1..1 // Rendre time obligatoire
* time ^short = "Date de début et/ou de fin de la participation"
* time.low 0..1
* time.high 0..1
* time.low ^short = "Date/heure de début de la participation"
* time.high ^short = "Date/heure de fin de la participation"
* time.center 0..0
* time.width 0..0
* time.operator 0..0
* functionCode.code ^short = "Code issu du JDV_J47_FunctionCode_CISIS (1.2.250.1.213.1.1.5.124)"
* functionCode.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS (required)
* functionCode.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans functionCode
* functionCode.code 1..1 // Rendre le code en obligatoire si functionCode existe
* functionCode.codeSystem 1..1 // Rendre le codeSystem en obligatoire si functionCode existe
* functionCode.codeSystemVersion 0..0 // Interdire l’attribut @codeSystemVersion dans functionCode
* functionCode.sdtcValueSet 0..0 // Interdire l’attribut @sdtcValueSet dans functionCode
* functionCode.sdtcValueSetVersion 0..0 // Interdire l’attribut @sdtcValueSetVersion dans functionCode
* functionCode.originalText ^short = "Précision sur le rôle fonctionnel du participant" 
* associatedEntity only fr-core-associated-entity // associatedEntity est de type fr-core-associated-entity
* associatedEntity ^short = "Identification du participant"