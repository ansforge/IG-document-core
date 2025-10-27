Profile: FRDiagnosticReportBIOChapterDocument
Parent: DiagnosticReport
Id: fr-diagnostic-report-bio-chapter-document
Title: "DiagnosticReport - FR Diagnostic Report BIO chapter Document"
Description: "FRDiagnosticReportBIOChapterDocument utilisé pour représenter un CR de biologie"

* code 1..1 MS 
* code ^short = "Type de document"
* category 1..1 MS
* category ^short = "Codes des chapitres de CR BIO"
* effective[x] 1..1 MS
* effective[x] ^short = "Date et heure de création du document"
* status 1..1 MS
* status ^short = "Statut du rapport de BIO (final, partial ...)"

* performer 1..* MS
* performer.extension contains FRActorExtension named author 1..*
* performer.extension[author] ^short = "Auteur du compte-rendu de BIO (Médecin - Biologie médicale)"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

* resultsInterpreter MS
* resultsInterpreter ^short = "Interpréteur de résultat primaire"
* resultsInterpreter only Reference(FRPractitionerRoleDocument)

* encounter MS
* encounter ^short = "L’événement de soins auquel se rapporte ce compte rendu de laboratoire (moment où l’examen a été prescrit)."
* encounter only Reference(FREncounterDocument)

* subject MS
* subject 1..1
* subject ^short = "Sujet concerné"
* subject only Reference(FRPatientINSDocument)

* specimen MS
* specimen only Reference(FRSpecimenDocument)
* specimen ^short = "Échantillons sur lesquels repose ce compte rendu."

* result 1..* MS
* result ^short = "Résultats"
* result only Reference(FRObservationLaboratoryReportResultsDocument)

* presentedForm 1..1 MS
* presentedForm ^short = "Copie du document"

* conclusion MS
* conclusion ^short = "Si le CR de BIO ne comporte pas de sous-chapitres (les commentaires seront dans les sous-chapitres)."