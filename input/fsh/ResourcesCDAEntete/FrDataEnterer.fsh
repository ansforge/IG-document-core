// StructureDefinition for DataEnterer
Profile: FrDataEnterer
Parent: http://hl7.org/cda/stds/core/StructureDefinition/DataEnterer
Id: fr-core-data-enterer
Title: "dataEnterer"
<<<<<<< HEAD
Description: "DataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document." 
* ^status = #draft
* nullFlavor 0..0 // Interdire l’attribut @nullFlavor
* typeId.nullFlavor 0..0 // Interdire l’attribut @nullFlavor dans typeId
* typeId.assigningAuthorityName 0..0 // Interdire l’attribut @assigningAuthorityName dans typeId
* typeId.displayable 0..0 // Interdire l’attribut @displayable dans typeId
* typeCode 0..0 // Interdire l’attribut @typeCode
* contextControlCode 0..0 // Interdire l’attribut @contextControlCode
* time 1..1 // rendre time obligatoire
=======
Description: "L'élément de l'en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document." 
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode 0..0
* contextControlCode 0..0
* time ^short = "Horodatage de la participation de l’opérateur."
* time 1..1 // rendre time obligatoire
  * value ^short = "Date et heure à laquelle l’opérateur a participé à l’élaboration du document."
* assignedEntity ^short = "Personne physique."
>>>>>>> main
* assignedEntity only fr-core-assigned-entity