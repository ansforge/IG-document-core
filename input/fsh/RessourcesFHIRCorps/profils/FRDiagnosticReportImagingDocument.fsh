Profile: FRDiagnosticReportImagingDocument
Id: fr-diagnostic-report-imaging-document
Parent: DiagnosticReport
Title: "DiagnosticReport - FR Diagnostic Report Imaging Document"
Description: """
Le profil FRDiagnosticReportImagingDocument est dédié aux comptes rendus d’imagerie.
Ce document représente le rapport d’un examen d’imagerie. Il constitue la ressource principale qui fait référence à l’ensemble des données produites lors de l’examen d’imagerie.
"""

* identifier 1..*
  * ^short = "identifiant du compte-rendu d'imagerie"

* status
  * ^short = "Statut du compte-rendu d'imagerie"

// référence à la demande d'examen d'imagerie contenant l'Accession Number comme identifiant
* basedOn  0..* MS
* basedOn ^slicing.discriminator.type = #pattern  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] only Reference(FRSeviceRequestDocument)
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"


* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis
  * ^short = "Type de document d'imagerie"

* subject only Reference(FRPatientINSDocument)
* subject ^short = "Patient concerné par le compte-rendu d'imagerie"

* performer MS
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer contains organization 0..*
* performer[organization] only Reference(FROrganizationDocument)
* performer[organization] ^short = "Organization productrice du CR d'imagerie"

* resultsInterpreter MS
* resultsInterpreter.extension contains FRActorExtension named author 1..*
* resultsInterpreter.extension[author] ^short = "Auteur du compte-rendu d'imagerie (Médecin - Radiologue)"
* resultsInterpreter.extension[author].extension[type].valueCode = #AUT
* resultsInterpreter.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

* result 0..* MS
* result only Reference(Observation)
* result ^short = "Résultats de l'acte d'imagerie"

// si conclusion non codée
* conclusion MS
* conclusion ^short = "Conclusions cliniques et interprétations du rapport d’imagerie."

// si conclusion codée
* conclusionCode MS
* conclusionCode ^short = "Conclusions codées du rapport d’imagerie."

* imagingStudy only Reference(FRImagingStudyDocument)
* imagingStudy ^short = "Acte d'imagerie associé au compte-rendu"

* extension contains FRComparisonStudiesExtension named comparaison 0..* MS
* extension[comparaison] ^short = "Comparaisons avec des résultats antérieurs"

* extension contains FRPatientHistoryExtension named historiqueMedical 0..* MS
* extension[historiqueMedical] ^short = "Historique médical du patient pertinent pour l'examen d'imagerie"

* extension contains FRImagingProcedureExtension named procedure 0..* MS
* extension[procedure] ^short = "Technique d'imagerie"

// si conclusion codée et qu'on veut faire référence à (Observation or FRConditionDocument  or FRDocumentReferenceDocument)
// sinon si la conclusion est codée de type CodeableConcept utiliser diagnosticReport.conclusionCode 
// sinon utiliser diagnosticReport.conclusion si la conclusion non codée
* extension contains FRConclusionExtension named impression 0..* MS
* extension[impression] ^short = "Conclusions sur l'examen d'imagerie"

* extension contains FRRecommendationExtension named recommendation 0..* MS
* extension[recommendation] ^short = "Recommendations : Informations pour le patient"

Extension: FRComparisonStudiesExtension
Title: "FR Comparison Studies Extension"
Id: fr-comparison-studies-extension
Description: "Examen de comparaison radiologique"
Context: DiagnosticReport
* value[x] only Reference(FRImagingStudyDocument)

Extension: FRPatientHistoryExtension
Title: "FR Patient History Extension"
Id: fr-patient-history-extension
Description: "Historique médical du patient pertinent pour l'examen d'imagerie"
Context: DiagnosticReport
//* value[x] only Reference(Resource)
* value[x] only Reference(FRObservationPregnancyDocument or FRObservationContraIndicationsImagingDocument or FRConditionDocument or Observation or FRDeviceAuteurDocument or FRMedicationAdministrationDocument or FRDocumentReferenceDocument)

Extension: FRImagingProcedureExtension
Title: "FR Imaging Procedure Extension"
Id: fr-imaging-procedure-extension
Description: "Imaging procedure used for the imaging acquisition"
Context: DiagnosticReport
* value[x] only Reference(FRProcedureImagingDocument)

Extension: FRConclusionExtension
Title: "FR Conclusion Extension"
Id: fr-conclusion-extension
Description: "Conclusions sur l'examen d'imagerie"
Context: DiagnosticReport
* value[x] only Reference(Observation or FRConditionDocument  or FRDocumentReferenceDocument)

Extension: FRRecommendationExtension
Title: "FR Recommendation Extension"
Id: fr-recommendation-extension
Description: "Recommendations : Informations pour le patient"
Context: DiagnosticReport
* value[x] only Reference(FRProcedureActDocument or Observation or FRDocumentReferenceDocument)