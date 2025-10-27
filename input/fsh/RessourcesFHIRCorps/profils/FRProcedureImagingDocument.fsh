Profile: FRProcedureImagingDocument
Parent: Procedure
Id: fr-procedure-imaging-document
Title: "Procedure - FR Procedure Imaging Document"
Description: "FRProcedureImagingDocument permet d'enregistrer les différents paramètres de l’acquisition d’image :
acte d'imagerie, modalité d'acquisition, localisation anatomique / latéralité / topographie, d'autres paramètres de l'acte "

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* identifier ^short = "Identifiant"


// référence à la demande d'examen d'imagerie contenant l'Accession Number comme identifiant
* basedOn  0..* MS
* basedOn ^slicing.discriminator.type = #pattern  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] only Reference(FRSeviceRequestDocument)
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"


* partOf only Reference(FRMedicationAdministrationDocument)
* partOf ^short = "Produits administrés pendant l'acte d'imagerie"

* code 1..1 MS
* code ^short = "Code de l'acte d'imagerie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis (required)

* subject MS
* subject only Reference(FRPatientINSDocument)
* subject ^short = "Patient concerné"

* performed[x] MS
* performed[x] ^short = "Date de l'acte"

* bodySite MS
* bodySite from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-localisation-anatomique-cisis
* bodySite ^short = "Localisation anatomique"

* performer ^slicing.discriminator.type = #pattern  
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer 0..* MS
  * function 1..1
* performer contains performer 0..* and dispositif-medical 0..*
* performer[performer]
  * actor only Reference(FRPractitionerRoleDocument)
* performer[dispositif-medical]
  * actor only Reference(Device)
/* 
* performer MS
* performer ^short = "Participant"
* performer.actor.extension contains
    FRActorExtension named Participant 0..1
* performer.actor.extension[Participant].extension[type].valueCode = #PART
* performer.actor.extension[Participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or Device)
* performer.actor.extension[Participant].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
 */
* complicationDetail MS
* complicationDetail only Reference(FRConditionDocument)
* complicationDetail ^short = "Complications survenues au cours de l'acte d'imagerie"