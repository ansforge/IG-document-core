# Mapping Métier/CDA/FHIR - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Corps d'un document**](corpsDocument.md)
* **Mapping Métier/CDA/FHIR**

## Mapping Métier/CDA/FHIR

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping entre les éléments du corps : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMActe** | **FRCDAActe** | **FRProcedureActDocument** |
| **FRLMDirectiveAnticipee** | **FRCDADirectiveAnticipee** | **FRAdvanceDirectiveDocument** |
| **FRLMEffetIndesirable** | **FRCDAEffetIndesirable** | **FRAdverseEventDocument** |
| **FRLMAllergieOuHypersensibilite** | **FRCDAAllergieOuHypersensibilite** | **FRAllergyIntoleranceDocument** |
| **FRLMReferenceItemPlanTraitement** | **FRCDAReferenceItemPlanTraitement** | **FRCarePlanDocument** |
| **FRLMProbleme** | **FRCDAProbleme** | **FRConditionDocument** |
| **FRLMDispositifMedicalEntree** | **FRCDADispositifMedical** | **FRDeviceRequestDocument** |
| **FRLMDispositifMedicalEntree** | **FRCDADispositifMedical** | **FRDeviceUseStatementDocument** |
| **FRLMResultatsEntry** | **FRCDAResultats** | **FRDiagnosticReportDocument** |
| **FRLMDocumentAttache** | **FRCDADocumentAttache** | **FRDocumentReferenceDocument** |
| **FRLMRencontre** | **FRCDARencontre** | **FREncounterDocument** |
| FRLMActe.identifiant | FRCDAActe.id | FRProcedureActDocument.identifier |
| FRLMDirectiveAnticipee.identifiant | FRCDADirectiveAnticipee.id |  |
| FRLMEffetIndesirable.identifiant | FRCDAEffetIndesirable.id | FRAdverseEventDocument.identifier |
| FRLMAllergieOuHypersensibilite.identifiant | FRCDAAllergieOuHypersensibilite.id | FRAllergyIntoleranceDocument.identifier |
| FRLMReferenceItemPlanTraitement.identifiant | FRCDAReferenceItemPlanTraitement.id | FRCarePlanDocument.identifier |
| FRLMProbleme.identifiant | FRCDAProbleme.id | FRConditionDocument.identifier |
| FRLMDispositifMedicalEntree.identifiant | FRCDADispositifMedical.id | FRDeviceRequestDocument.identifier |
| FRLMDispositifMedicalEntree.identifiant | FRCDADispositifMedical.id | FRDeviceUseStatementDocument.identifier |
| FRLMResultatsEntry.identifiant | FRCDAResultats.id | FRDiagnosticReportDocument.identifier |
| FRLMDocumentAttache.identifiant | FRCDADocumentAttache.id | FRDocumentReferenceDocument.identifier |
| FRLMRencontre.identifiant | FRCDARencontre.id | FREncounterDocument.identifier |
| FRLMActe.description | FRCDAActe.text | FRProcedureActDocument.note |
| FRLMDirectiveAnticipee.code | FRCDADirectiveAnticipee.code | FRAdvanceDirectiveDocument.provision.code |
| FRLMEffetIndesirable.typeEffetIndesirable | FRCDAEffetIndesirable.code | FRAdverseEventDocument.category |
| FRLMAllergieOuHypersensibilite.description | FRCDAAllergieOuHypersensibilite.text | FRAllergyIntoleranceDocument.code.Text |
| FRLMReferenceItemPlanTraitement.code | FRCDAReferenceItemPlanTraitement.code | FRCarePlanDocument.category |
| FRLMProbleme.type | FRCDAProbleme.code | FRConditionDocument.category |
| FRLMDispositifMedicalEntree.description | FRCDADispositifMedical.text | FRDeviceRequestDocument.note |
| FRLMDispositifMedicalEntree.date | FRCDADispositifMedical.effectiveTime | FRDeviceUseStatementDocument.timing[x] |
| FRLMResultatsEntry.code | FRCDAResultats.code | FRDiagnosticReportDocument.code |
| FRLMDocumentAttache.code | FRCDADocumentAttache.code |  |
| FRLMRencontre.typeRencontre | FRCDARencontre.code | FREncounterDocument.class |
| FRLMActe.code | FRCDAActe.code | FRProcedureActDocument.code |
| FRLMDirectiveAnticipee.description | FRCDADirectiveAnticipee.text | FRAdvanceDirectiveDocument.provision.code.text |
| FRLMEffetIndesirable.description | FRCDAEffetIndesirable.text | FRAdverseEventDocument.category.text |
| FRLMAllergieOuHypersensibilite.type | FRCDAAllergieOuHypersensibilite.code | FRAllergyIntoleranceDocument.code |
| FRLMReferenceItemPlanTraitement.produitSante | FRCDAReferenceItemPlanTraitement.consumable | FRCarePlanDocument.activity.detail.productReference |
| FRLMProbleme.description | FRCDAProbleme.text | FRConditionDocument.category.text |
| FRLMDispositifMedicalEntree.date | FRCDADispositifMedical.effectiveTime | FRDeviceRequestDocument.occurrence[x] |
| FRLMDispositifMedicalEntree.dispensateur | FRCDADispositifMedical.performer | FRDeviceUseStatementDocument.source.extension:performer |
| FRLMResultatsEntry.statut | FRCDAResultats.statusCode |  |
| FRLMDocumentAttache.statut | FRCDADocumentAttache.statusCode | FRDocumentReferenceDocument.docStatus |
| FRLMRencontre.description | FRCDARencontre.text | FREncounterDocument.class.text |
| FRLMActe.titre |  |  |
| FRLMDirectiveAnticipee.statut | FRCDADirectiveAnticipee.statusCode | FRAdvanceDirectiveDocument.status |
| FRLMEffetIndesirable.dateDebutFin | FRCDAEffetIndesirable.effectiveTime |  |
| FRLMAllergieOuHypersensibilite.statut | FRCDAAllergieOuHypersensibilite.statusCode |  |
| FRLMReferenceItemPlanTraitement.auteur | FRCDAReferenceItemPlanTraitement.author | FRCarePlanDocument.author |
| FRLMProbleme.problemeObserve | FRCDAProbleme.value | FRConditionDocument.code |
| FRLMDispositifMedicalEntree.renouvellement | FRCDADispositifMedical.repeatNumber | FRDeviceRequestDocument.occurrenceTiming.repeat.count |
| FRLMDispositifMedicalEntree.dispositifMedical | FRCDADispositifMedical.participant | FRDeviceUseStatementDocument.device |
| FRLMResultatsEntry.date | FRCDAResultats.effectiveTime | FRDiagnosticReportDocument.effective[x] |
| FRLMDocumentAttache.date | FRCDADocumentAttache.effectiveTime | FRDocumentReferenceDocument.date |
| FRLMRencontre.dateRencontre | FRCDARencontre.effectiveTime | FREncounterDocument.period |
| FRLMActe.statut | FRCDAActe.statusCode | FRProcedureActDocument.status |
| FRLMDirectiveAnticipee.date | FRCDADirectiveAnticipee.effectiveTime | FRAdvanceDirectiveDocument.dateTime |
| FRLMEffetIndesirable.valeur | FRCDAEffetIndesirable.value |  |
| FRLMAllergieOuHypersensibilite.date | FRCDAAllergieOuHypersensibilite.effectiveTime | FRAllergyIntoleranceDocument.onsetPeriod |
| FRLMReferenceItemPlanTraitement.traitementPrescrit | FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument |
| FRLMProbleme.statut | FRCDAProbleme.statusCode |  |
| FRLMDispositifMedicalEntree.duree | FRCDADispositifMedical.expectedUseTime | FRDeviceRequestDocument.occurrencePeriod |
| FRLMDispositifMedicalEntree.affectionLongueDuree | FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD | FRDeviceUseStatementDocument.reasonReference:EnRapportAvecALD |
| FRLMResultatsEntry.executant | FRCDAResultats.performer | FRDiagnosticReportDocument.performer.extension:performerFunction |
| FRLMDocumentAttache.typeDocumentAttache | FRCDADocumentAttache.component:frTypeDocumentAttache | FRDocumentReferenceDocument.type |
| FRLMRencontre.confirmationRencontre | FRCDARencontre.priorityCode | FREncounterDocument.priority |
| FRLMActe.date | FRCDAActe.effectiveTime | FRProcedureActDocument.performed[x] |
| FRLMDirectiveAnticipee.valeurDirectiveIdentifiee | FRCDADirectiveAnticipee.valueBoolean |  |
| FRLMEffetIndesirable.traitement | FRCDAEffetIndesirable.entryRelationship:frTraitement | FRAdverseEventDocument.suspectEntity.instance |
| FRLMAllergieOuHypersensibilite.participant | FRCDAAllergieOuHypersensibilite.participant | FRAllergyIntoleranceDocument.reaction.substance |
| FRLMReferenceItemPlanTraitement.reference | FRCDAReferenceItemPlanTraitement.reference | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument |
| FRLMProbleme.dateProbleme | FRCDAProbleme.effectiveTime |  |
| FRLMDispositifMedicalEntree.quantite | FRCDADispositifMedical.quantity | FRDeviceRequestDocument.parameter.valueQuantity |
| FRLMDispositifMedicalEntree.accidentTravail | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail | FRDeviceUseStatementDocument.reasonReference:EnRapportAvecAccidentTravail |
| FRLMResultatsEntry.auteur | FRCDAResultats.author | FRDiagnosticReportDocument.resultsInterpreter.extension:performerFunction |
| FRLMDocumentAttache.documentAttache | FRCDADocumentAttache.component.observationMedia | FRDocumentReferenceDocument.content.attachment |
| FRLMRencontre.executant | FRCDARencontre.performer | FREncounterDocument.participant.individual.extension:executant |
| FRLMActe.priorite | FRCDAActe.priorityCode |  |
| FRLMDirectiveAnticipee.reference | FRCDADirectiveAnticipee.reference. externalDocument.text.reference | FRAdvanceDirectiveDocument.sourceReference |
| FRLMEffetIndesirable.probleme | FRCDAEffetIndesirable.entryRelationship:frProbleme | FRAdverseEventDocument.resultingCondition |
| FRLMAllergieOuHypersensibilite.probleme | FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme | FRAllergyIntoleranceDocument.reaction |
| FRLMReferenceItemPlanTraitement.reference. externalDocument.identifiant | FRCDAReferenceItemPlanTraitement.reference. externalDocument.id | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument.identifier |
| FRLMProbleme.statutProbleme | FRCDAProbleme.entryRelationship:frStatutDuProbleme | FRConditionDocument.clinicalStatus |
| FRLMDispositifMedicalEntree.auteur | FRCDADispositifMedical.author | FRDeviceRequestDocument.requester.extension:prescripteur |
| FRLMDispositifMedicalEntree.prevention | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention | FRDeviceUseStatementDocument.reasonReference:EnRapportAvecLaPrevention |
| FRLMResultatsEntry.resultat | FRCDAResultats.component:frResultat | FRDiagnosticReportDocument.result |
| FRLMDocumentAttache.documentAttache. observationMedia.identifiant | FRCDADocumentAttache.component. observationMedia.id | FRDocumentReferenceDocument.content.attachment.id |
| FRLMRencontre.auteur | FRCDARencontre.author | FREncounterDocument.participant.individual.extension:author |
| FRLMActe.localisationAnatomique | FRCDAActe.targetSiteCode | FRProcedureActDocument.bodySite.TargetSiteCode |
| FRLMDirectiveAnticipee.documentEncapsule | FRCDADirectiveAnticipee.entryRelationship | FRAdvanceDirectiveDocument.sourceAttachment |
| FRLMEffetIndesirable.imputabiliteEffetIndesirable | FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable | FRAdverseEventDocument.suspectEntity.causality |
| FRLMAllergieOuHypersensibilite.statutClique | FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutCliniqueAllergie | FRAllergyIntoleranceDocument.clinicalStatus |
| FRLMProbleme.severite | FRCDAProbleme.entryRelationship:frSeverite | FRConditionDocument.severity |
| FRLMDispositifMedicalEntree.dispositifMedical | FRCDADispositifMedical.participant | FRDeviceRequestDocument.codeReference |
| FRLMDocumentAttache.documentAttache. observationMedia.documentAttacheEncode | FRCDADocumentAttache.component. observationMedia.value | FRDocumentReferenceDocument.content.attachment.data |
| FRLMRencontre.informateur | FRCDARencontre.informant | FREncounterDocument.participant.individual.extension:informant |
| FRLMActe.voieDAbord | FRCDAActe.approachSiteCode | FRProcedureActDocument.bodySite.ApproachSiteCode |
| FRLMDirectiveAnticipee.documentEncapsule.observationMedia | FRCDADirectiveAnticipee.entryRelationship.observationMedia | FRAdvanceDirectiveDocument.sourceAttachment |
| FRLMEffetIndesirable.graviteEffetIndesirable | FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable | FRAdverseEventDocument.seriousness |
| FRLMAllergieOuHypersensibilite.certitude | FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude | FRAllergyIntoleranceDocument.verificationStatus |
| FRLMProbleme.certitude | FRCDAProbleme.entryRelationship:frCertitude | FRConditionDocument.verificationStatus |
| FRLMDispositifMedicalEntree.affectionLongueDuree | FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD | FRDeviceRequestDocument.reasonReference:EnRapportAvecALD |
| FRLMRencontre.participant | FRCDARencontre.participant | FREncounterDocument.location.location |
| FRLMRencontre.participant | FRCDARencontre.participant | FREncounterDocument.participant |
| FRLMActe.perfomer | FRCDAActe.performer | FRProcedureActDocument.performer.actor.extension:Intervenant |
| FRLMDirectiveAnticipee.documentEncapsule. observationMedia.identifiant | FRCDADirectiveAnticipee.entryRelationship. observationMedia.id |  |
| FRLMEffetIndesirable.evolutionEffetIndesirable | FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable | FRAdverseEventDocument.outcome |
| FRLMAllergieOuHypersensibilite.criticite | FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite | FRAllergyIntoleranceDocument.criticality |
| FRLMProbleme.statutClinique | FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient | FRConditionDocument.stage.summary |
| FRLMDispositifMedicalEntree.accidentTravail | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail | FRDeviceRequestDocument.reasonReference:EnRapportAvecAccidentTravail |
| FRLMRencontre.autreParticipant | FRCDARencontre.participant | FREncounterDocument.location.location |
| FRLMRencontre.autreParticipant | FRCDARencontre.participant | FREncounterDocument.participant |
| FRLMActe.auteur | FRCDAActe.author | FRProcedureActDocument.recorder.extension:author |
| FRLMDirectiveAnticipee.documentEncapsule. observationMedia.documentEncapsuleEncode | FRCDADirectiveAnticipee.entryRelationship. observationMedia.value | FRAdvanceDirectiveDocument.sourceAttachment.data |
| FRLMDirectiveAnticipee.documentEncapsule. observationMedia.documentEncapsuleEncode | FRCDADirectiveAnticipee.entryRelationship. observationMedia.value | FRAdvanceDirectiveDocument.sourceAttachment.url |
| FRLMProbleme.reference | FRCDAProbleme.reference | FRConditionDocument.evidence.detail |
| FRLMDispositifMedicalEntree.prevention | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention | FRDeviceRequestDocument.reasonReference:EnRapportAvecLaPrevention |
| FRLMActe.informateur | FRCDAActe.informant | FRProcedureActDocument.performer.actor.extension:Informateur |
| FRLMProbleme.reference. externalDocument.identifiant | FRCDAProbleme.reference. externalDocument.id |  |
| FRLMDispositifMedicalEntree.nonRemboursable | FRCDADispositifMedical.entryRelationship:frNonRemboursable | FRDeviceRequestDocument.extension:notCovered |
| FRLMActe.participant | FRCDAActe.participant | FRProcedureActDocument.performer.actor.extension:Participant |
| FRLMProbleme.reference. externalDocument.text.reference | FRCDAProbleme.reference. externalDocument.text.reference |  |
| FRLMActe.circonstances | FRCDAActe.entryRelationship:frReferenceInterne |  |
| FRLMProbleme.commentaire | FRCDAProbleme.entryRelationship:frCommentaireER | FRConditionDocument.note |
| FRLMActe.reason | FRCDAActe.entryRelationship:frReferenceInterne |  |
| FRLMActe.dispositifMedical | FRCDAActe.entryRelationship:frReferenceInterne |  |
| FRLMActe.difficulte | FRCDAActe.entryRelationship:frSimpleObservationDifficulte |  |
| FRLMActe.scores | FRCDAActe.entryRelationship:frSimpleObservationScores |  |

