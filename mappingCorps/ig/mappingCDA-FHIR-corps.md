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
| FRLMActe.identifiant | FRCDAActe.id | FRProcedureActDocument.identifier |
| FRLMActe.description | FRCDAActe.text | FRProcedureActDocument.note |
| FRLMActe.code | FRCDAActe.code | FRProcedureActDocument.code |
| FRLMActe.titre |  |  |
| FRLMActe.statut | FRCDAActe.statusCode | FRProcedureActDocument.status |
| FRLMActe.date | FRCDAActe.effectiveTime | FRProcedureActDocument.performed[x] |
| FRLMActe.priorite | FRCDAActe.priorityCode |  |
| FRLMActe.localisationAnatomique | FRCDAActe.targetSiteCode | FRProcedureActDocument.bodySite.TargetSiteCode |
| FRLMActe.voieDAbord | FRCDAActe.approachSiteCode | FRProcedureActDocument.bodySite.ApproachSiteCode |
| FRLMActe.perfomer | FRCDAActe.performer | FRProcedureActDocument.performer.actor.extension.Intervenant |
| FRLMActe.auteur | FRCDAActe.author | FRProcedureActDocument.recorder.extension.author |
| FRLMActe.informateur | FRCDAActe.informant | FRProcedureActDocument.performer.actor.extension.Informateur |
| FRLMActe.participant | FRCDAActe.participant | FRProcedureActDocument.performer.actor.extension.Participant |
| FRLMActe.circonstances | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.encounter |
| FRLMActe.circonstances | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.reasonReference |
| FRLMActe.circonstances | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.usedReference |
| FRLMActe.reason | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.encounter |
| FRLMActe.reason | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.reasonReference |
| FRLMActe.reason | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.usedReference |
| FRLMActe.dispositifMedical | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.encounter |
| FRLMActe.dispositifMedical | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.reasonReference |
| FRLMActe.dispositifMedical | FRCDAActe.entryRelationship.frReferenceInterne | FRProcedureActDocument.usedReference |
| FRLMActe.difficulte | FRCDAActe.entryRelationship.frSimpleObservation | FRProcedureActDocument.partOf |
| FRLMActe.scores | FRCDAActe.entryRelationship.frSimpleObservation | FRProcedureActDocument.partOf |
| **FRLMAllergieOuHypersensibilite** | **FRCDAAllergieOuHypersensibilite** | **FRAllergyIntoleranceDocument** |
| FRLMAllergieOuHypersensibilite.identifiant | FRCDAAllergieOuHypersensibilite.id | FRAllergyIntoleranceDocument.identifier |
| FRLMAllergieOuHypersensibilite.description | FRCDAAllergieOuHypersensibilite.text | FRAllergyIntoleranceDocument.code.Text |
| FRLMAllergieOuHypersensibilite.type | FRCDAAllergieOuHypersensibilite.code | FRAllergyIntoleranceDocument.code |
| FRLMAllergieOuHypersensibilite.statut | FRCDAAllergieOuHypersensibilite.statusCode |  |
| FRLMAllergieOuHypersensibilite.date | FRCDAAllergieOuHypersensibilite.effectiveTime | FRAllergyIntoleranceDocument.onsetPeriod |
| FRLMAllergieOuHypersensibilite.participant | FRCDAAllergieOuHypersensibilite.participant | FRAllergyIntoleranceDocument.reaction.substance |
| FRLMAllergieOuHypersensibilite.probleme | FRCDAAllergieOuHypersensibilite.entryRelationship.frProbleme | FRAllergyIntoleranceDocument.reaction |
| FRLMAllergieOuHypersensibilite.statutClique | FRCDAAllergieOuHypersensibilite.entryRelationship.frStatutCliniqueAllergie | FRAllergyIntoleranceDocument.clinicalStatus |
| FRLMAllergieOuHypersensibilite.certitude | FRCDAAllergieOuHypersensibilite.entryRelationship.frCertitude | FRAllergyIntoleranceDocument.verificationStatus |
| FRLMAllergieOuHypersensibilite.criticite | FRCDAAllergieOuHypersensibilite.entryRelationship.frCriticite | FRAllergyIntoleranceDocument.criticality |
| **FRLMDirectiveAnticipee** | **FRCDADirectiveAnticipee** | **FRAdvanceDirectiveDocument** |
| FRLMDirectiveAnticipee.identifiant | FRCDADirectiveAnticipee.id |  |
| FRLMDirectiveAnticipee.code | FRCDADirectiveAnticipee.code | FRAdvanceDirectiveDocument.provision.code |
| FRLMDirectiveAnticipee.description | FRCDADirectiveAnticipee.text | FRAdvanceDirectiveDocument.provision.code.text |
| FRLMDirectiveAnticipee.statut | FRCDADirectiveAnticipee.statusCode | FRAdvanceDirectiveDocument.status |
| FRLMDirectiveAnticipee.date | FRCDADirectiveAnticipee.effectiveTime | FRAdvanceDirectiveDocument.dateTime |
| FRLMDirectiveAnticipee.valeurDirectiveIdentifiee | FRCDADirectiveAnticipee.valueBoolean |  |
| FRLMDirectiveAnticipee.reference | FRCDADirectiveAnticipee.reference. externalDocument.text.reference | FRAdvanceDirectiveDocument.sourceReference |
| FRLMDirectiveAnticipee.documentEncapsule | FRCDADirectiveAnticipee.entryRelationship | FRAdvanceDirectiveDocument.sourceAttachment |
| FRLMDirectiveAnticipee.documentEncapsule.observationMedia | FRCDADirectiveAnticipee.entryRelationship.observationMedia | FRAdvanceDirectiveDocument.sourceAttachment |
| FRLMDirectiveAnticipee.documentEncapsule. observationMedia.identifiant | FRCDADirectiveAnticipee.entryRelationship. observationMedia.id |  |
| FRLMDirectiveAnticipee.documentEncapsule. observationMedia.documentEncapsuleEncode | FRCDADirectiveAnticipee.entryRelationship. observationMedia.value | FRAdvanceDirectiveDocument.sourceAttachment.data |
| FRLMDirectiveAnticipee.documentEncapsule. observationMedia.documentEncapsuleEncode | FRCDADirectiveAnticipee.entryRelationship. observationMedia.value | FRAdvanceDirectiveDocument.sourceAttachment.url |
| **FRLMDocumentAttache** | **FRCDADocumentAttache** | **FRDocumentReferenceDocument** |
| FRLMDocumentAttache.identifiant | FRCDADocumentAttache.id | FRDocumentReferenceDocument.identifier |
| FRLMDocumentAttache.code | FRCDADocumentAttache.code |  |
| FRLMDocumentAttache.statut | FRCDADocumentAttache.statusCode | FRDocumentReferenceDocument.docStatus |
| FRLMDocumentAttache.date | FRCDADocumentAttache.effectiveTime | FRDocumentReferenceDocument.date |
| FRLMDocumentAttache.typeDocumentAttache | FRCDADocumentAttache.component.frTypeDocumentAttache | FRDocumentReferenceDocument.type |
| FRLMDocumentAttache.documentAttache | FRCDADocumentAttache.component.observationMedia | FRDocumentReferenceDocument.content.attachment |
| FRLMDocumentAttache.documentAttache. observationMedia.identifiant | FRCDADocumentAttache.component. observationMedia.id | FRDocumentReferenceDocument.content.attachment.id |
| FRLMDocumentAttache.documentAttache. observationMedia.documentAttacheEncode | FRCDADocumentAttache.component. observationMedia.value | FRDocumentReferenceDocument.content.attachment.data |
| **FRLMEffetIndesirable** | **FRCDAEffetIndesirable** | **FRAdverseEventDocument** |
| FRLMEffetIndesirable.identifiant | FRCDAEffetIndesirable.id | FRAdverseEventDocument.identifier |
| FRLMEffetIndesirable.typeEffetIndesirable | FRCDAEffetIndesirable.code | FRAdverseEventDocument.category |
| FRLMEffetIndesirable.description | FRCDAEffetIndesirable.text | FRAdverseEventDocument.category.text |
| FRLMEffetIndesirable.dateDebutFin | FRCDAEffetIndesirable.effectiveTime |  |
| FRLMEffetIndesirable.valeur | FRCDAEffetIndesirable.value |  |
| FRLMEffetIndesirable.traitement | FRCDAEffetIndesirable.entryRelationship.frTraitement | FRAdverseEventDocument.suspectEntity.instance |
| FRLMEffetIndesirable.probleme | FRCDAEffetIndesirable.entryRelationship.frProbleme | FRAdverseEventDocument.resultingCondition |
| FRLMEffetIndesirable.imputabiliteEffetIndesirable | FRCDAEffetIndesirable.entryRelationship.frImputabiliteEffetIndesirable | FRAdverseEventDocument.suspectEntity.causality |
| FRLMEffetIndesirable.graviteEffetIndesirable | FRCDAEffetIndesirable.entryRelationship.frGraviteEffetIndesirable | FRAdverseEventDocument.seriousness |
| FRLMEffetIndesirable.evolutionEffetIndesirable | FRCDAEffetIndesirable.entryRelationship.frEvolutionEffetIndesirable | FRAdverseEventDocument.outcome |
| **FRLMRencontre** | **FRCDARencontre** | **FREncounterDocument** |
| FRLMRencontre.identifiant | FRCDARencontre.id | FREncounterDocument.identifier |
| FRLMRencontre.typeRencontre | FRCDARencontre.code | FREncounterDocument.class |
| FRLMRencontre.description | FRCDARencontre.text | FREncounterDocument.class.text |
| FRLMRencontre.dateRencontre | FRCDARencontre.effectiveTime | FREncounterDocument.period |
| FRLMRencontre.confirmationRencontre | FRCDARencontre.priorityCode | FREncounterDocument.priority |
| FRLMRencontre.executant | FRCDARencontre.performer | FREncounterDocument.participant.individual.extension.executant |
| FRLMRencontre.auteur | FRCDARencontre.author | FREncounterDocument.participant.individual.extension.author |
| FRLMRencontre.informateur | FRCDARencontre.informant | FREncounterDocument.participant.individual.extension.informant |
| FRLMRencontre.participant | FRCDARencontre.participant | FREncounterDocument.location.location |
| FRLMRencontre.participant | FRCDARencontre.participant | FREncounterDocument.participant |
| FRLMRencontre.autreParticipant | FRCDARencontre.participant | FREncounterDocument.location.location |
| FRLMRencontre.autreParticipant | FRCDARencontre.participant | FREncounterDocument.participant |
| **FRLMDispositifMedicalEntree** | **FRCDADispositifMedical** | **FRDeviceRequestDocument** |
| FRLMDispositifMedicalEntree.identifiant | FRCDADispositifMedical.id | FRDeviceRequestDocument.identifier |
| FRLMDispositifMedicalEntree.description | FRCDADispositifMedical.text | FRDeviceRequestDocument.note |
| FRLMDispositifMedicalEntree.date | FRCDADispositifMedical.effectiveTime | FRDeviceRequestDocument.occurrence[x] |
| FRLMDispositifMedicalEntree.renouvellement | FRCDADispositifMedical.repeatNumber | FRDeviceRequestDocument.occurrenceTiming.repeat.count |
| FRLMDispositifMedicalEntree.duree | FRCDADispositifMedical.expectedUseTime | FRDeviceRequestDocument.occurrencePeriod |
| FRLMDispositifMedicalEntree.quantite | FRCDADispositifMedical.quantity | FRDeviceRequestDocument.parameter.valueQuantity |
| FRLMDispositifMedicalEntree.auteur | FRCDADispositifMedical.author | FRDeviceRequestDocument.requester.extension.prescripteur |
| FRLMDispositifMedicalEntree.dispositifMedical | FRCDADispositifMedical.participant | FRDeviceRequestDocument.codeReference |
| FRLMDispositifMedicalEntree.affectionLongueDuree | FRCDADispositifMedical.entryRelationship.frEnRapportAvecALD | FRDeviceRequestDocument.reasonReference.EnRapportAvecALD |
| FRLMDispositifMedicalEntree.accidentTravail | FRCDADispositifMedical.entryRelationship.frEnRapportAvecAccidentTravail | FRDeviceRequestDocument.reasonReference.EnRapportAvecAccidentTravail |
| FRLMDispositifMedicalEntree.prevention | FRCDADispositifMedical.entryRelationship.frEnRapportAvecPrevention | FRDeviceRequestDocument.reasonReference.EnRapportAvecLaPrevention |
| FRLMDispositifMedicalEntree.nonRemboursable | FRCDADispositifMedical.entryRelationship.frNonRemboursable | FRDeviceRequestDocument.extension.notCovered |
| **FRLMProbleme** | **FRCDAProbleme** | **FRConditionDocument** |
| FRLMProbleme.identifiant | FRCDAProbleme.id | FRConditionDocument.identifier |
| FRLMProbleme.type | FRCDAProbleme.code | FRConditionDocument.category |
| FRLMProbleme.description | FRCDAProbleme.text | FRConditionDocument.category.text |
| FRLMProbleme.problemeObserve | FRCDAProbleme.value | FRConditionDocument.code |
| FRLMProbleme.statut | FRCDAProbleme.statusCode |  |
| FRLMProbleme.dateProbleme | FRCDAProbleme.effectiveTime |  |
| FRLMProbleme.statutProbleme | FRCDAProbleme.entryRelationship.frStatutDuProbleme | FRConditionDocument.clinicalStatus |
| FRLMProbleme.severite | FRCDAProbleme.entryRelationship.frSeverite | FRConditionDocument.severity |
| FRLMProbleme.certitude | FRCDAProbleme.entryRelationship.frCertitude | FRConditionDocument.verificationStatus |
| FRLMProbleme.statutClinique | FRCDAProbleme.entryRelationship.frStatutCliniqueDuPatient | FRConditionDocument.stage.summary |
| FRLMProbleme.reference | FRCDAProbleme.reference | FRConditionDocument.evidence.detail |
| FRLMProbleme.reference. externalDocument.identifiant | FRCDAProbleme.reference. externalDocument.id |  |
| FRLMProbleme.reference. externalDocument.text.reference | FRCDAProbleme.reference. externalDocument.text.reference |  |
| FRLMProbleme.commentaire | FRCDAProbleme.entryRelationship.frCommentaireER | FRConditionDocument.note |
| **FRLMReferenceItemPlanTraitement** | **FRCDAReferenceItemPlanTraitement** | **FRCarePlanDocument** |
| FRLMReferenceItemPlanTraitement.identifiant | FRCDAReferenceItemPlanTraitement.id | FRCarePlanDocument.identifier |
| FRLMReferenceItemPlanTraitement.code | FRCDAReferenceItemPlanTraitement.code | FRCarePlanDocument.category |
| FRLMReferenceItemPlanTraitement.produitSante | FRCDAReferenceItemPlanTraitement.frProduitSante | FRCarePlanDocument.activity.detail.productReference |
| FRLMReferenceItemPlanTraitement.auteur | FRCDAReferenceItemPlanTraitement.author | FRCarePlanDocument.author |
| FRLMReferenceItemPlanTraitement.traitementPrescrit | FRCDAReferenceItemPlanTraitement.entryRelationship.frItemPlanTraitement | FRCarePlanDocument.activity.reference[FRMedicationRequestDocument] |
| FRLMReferenceItemPlanTraitement.reference | FRCDAReferenceItemPlanTraitement.reference | FRCarePlanDocument.activity.reference[FRMedicationRequestDocument] |
| FRLMReferenceItemPlanTraitement.reference. externalDocument.identifiant | FRCDAReferenceItemPlanTraitement.reference. externalDocument.id | FRCarePlanDocument.activity.reference[FRMedicationRequestDocument].identifier |
| **FRLMResultatsEntry** | **FRCDAResultats** | **FRDiagnosticReportDocument** |
| FRLMResultatsEntry.identifiant | FRCDAResultats.id | FRDiagnosticReportDocument.identifier |
| FRLMResultatsEntry.code | FRCDAResultats.code | FRDiagnosticReportDocument.code |
| FRLMResultatsEntry.statut | FRCDAResultats.statusCode |  |
| FRLMResultatsEntry.date | FRCDAResultats.effectiveTime | FRDiagnosticReportDocument.effective[x] |
| FRLMResultatsEntry.executant | FRCDAResultats.performer | FRDiagnosticReportDocument.performer.extension.performerFunction |
| FRLMResultatsEntry.auteur | FRCDAResultats.author | FRDiagnosticReportDocument.resultsInterpreter.extension.performerFunction |
| FRLMResultatsEntry.resultat | FRCDAResultats.component.frResultat | FRDiagnosticReportDocument.result |
| **FRLMDispositifMedicalEntree** | **FRCDADispositifMedical** | **FRDeviceUseStatementDocument** |
| FRLMDispositifMedicalEntree.identifiant | FRCDADispositifMedical.id | FRDeviceUseStatementDocument.identifier |
| FRLMDispositifMedicalEntree.date | FRCDADispositifMedical.effectiveTime | FRDeviceUseStatementDocument.timing[x] |
| FRLMDispositifMedicalEntree.dispensateur | FRCDADispositifMedical.performer | FRDeviceUseStatementDocument.source.extension.performer |
| FRLMDispositifMedicalEntree.dispositifMedical | FRCDADispositifMedical.participant | FRDeviceUseStatementDocument.device |
| FRLMDispositifMedicalEntree.affectionLongueDuree | FRCDADispositifMedical.entryRelationship.frEnRapportAvecALD | FRDeviceUseStatementDocument.reasonReference.EnRapportAvecALD |
| FRLMDispositifMedicalEntree.accidentTravail | FRCDADispositifMedical.entryRelationship.frEnRapportAvecAccidentTravail | FRDeviceUseStatementDocument.reasonReference.EnRapportAvecAccidentTravail |
| FRLMDispositifMedicalEntree.prevention | FRCDADispositifMedical.entryRelationship.frEnRapportAvecPrevention | FRDeviceUseStatementDocument.reasonReference.EnRapportAvecLaPrevention |

