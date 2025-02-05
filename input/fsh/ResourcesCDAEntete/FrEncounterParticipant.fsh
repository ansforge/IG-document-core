// StructureDefinition for encounterParticipant
Profile: FrEncounterParticipant
Parent: http://hl7.org/cda/stds/core/StructureDefinition/EncounterParticipant
Id: fr-core-encounter-participant
Title: "encounterParticipant"
Description: "encounterParticipant représente une personne impliquée dans la prise en charge du patient/usager, comme par exemple, le professionnel co-responsable, le professionnel ayant fait l'admission ou encore le professionnel 
ayant donné son avis quant à la prise en charge." 
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode ^short = "Code issu du JDV_J140_EncounterParticipationType_CISIS (1.2.250.1.213.1.1.5.528)."
* typeCode from https://mos.esante.gouv.fr/NOS/JDV_J140-EncounterParticipationType-CISIS/FHIR/JDV-J140-EncounterParticipationType-CISIS
* time ^short = "Date de début et/ou de fin de la participation"
* assignedEntity 1..1 // Rendre assignedEntity obligatoire
* assignedEntity ^short = "Professionnel impliqué"