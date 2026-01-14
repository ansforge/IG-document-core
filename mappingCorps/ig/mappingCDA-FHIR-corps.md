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
| FRLMActe.perfomer | FRCDAActe.performer | FRProcedureActDocument.performer.actor.extension:Intervenant |
| FRLMActe.auteur | FRCDAActe.author | FRProcedureActDocument.recorder.extension:author |
| FRLMActe.informateur | FRCDAActe.informant | FRProcedureActDocument.performer.actor.extension:Informateur |
| FRLMActe.participant | FRCDAActe.participant | FRProcedureActDocument.performer.actor.extension:Participant |
| FRLMActe.circonstances | FRCDAActe.entryRelationship:frReferenceInterneCirconstances | FRProcedureActDocument.encounter |
| FRLMActe.reason | FRCDAActe.entryRelationship:frReferenceInterneMotifActe | FRProcedureActDocument.reasonReference |
| FRLMActe.dispositifMedical | FRCDAActe.entryRelationship:frReferenceInterneDM | FRProcedureActDocument.usedReference |
| FRLMActe.difficulte | FRCDAActe.entryRelationship:frSimpleObservationDifficulte | FRProcedureActDocument.extension:difficulte |
| FRLMActe.scores | FRCDAActe.entryRelationship:frSimpleObservationScores | FRProcedureActDocument.partOf |
| **FRLMAllergieOuHypersensibilite** | **FRCDAAllergieOuHypersensibilite** | **FRAllergyIntoleranceDocument** |
| FRLMAllergieOuHypersensibilite.identifiant | FRCDAAllergieOuHypersensibilite.id | FRAllergyIntoleranceDocument.identifier |
| FRLMAllergieOuHypersensibilite.description | FRCDAAllergieOuHypersensibilite.text | FRAllergyIntoleranceDocument.code.Text |
| FRLMAllergieOuHypersensibilite.type | FRCDAAllergieOuHypersensibilite.code | FRAllergyIntoleranceDocument.code |
| FRLMAllergieOuHypersensibilite.statut | FRCDAAllergieOuHypersensibilite.statusCode |  |
| FRLMAllergieOuHypersensibilite.date | FRCDAAllergieOuHypersensibilite.effectiveTime | FRAllergyIntoleranceDocument.onsetPeriod |
| FRLMAllergieOuHypersensibilite.participant | FRCDAAllergieOuHypersensibilite.participant | FRAllergyIntoleranceDocument.reaction.substance |
| FRLMAllergieOuHypersensibilite.probleme | FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme | FRAllergyIntoleranceDocument.reaction |
| FRLMAllergieOuHypersensibilite.statutClique | FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutCliniqueAllergie | FRAllergyIntoleranceDocument.clinicalStatus |
| FRLMAllergieOuHypersensibilite.certitude | FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude | FRAllergyIntoleranceDocument.verificationStatus |
| FRLMAllergieOuHypersensibilite.criticite | FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite | FRAllergyIntoleranceDocument.criticality |
| **FRLMAntecedentFamilialObserve** | **FRCDAAntecedentFamilialObserve** | FRFamilyMemberHistoryDocument.condition |
| FRLMAntecedentFamilialObserve.identifiant | FRCDAAntecedentFamilialObserve.id | FRFamilyMemberHistoryDocument.identifier |
| FRLMAntecedentFamilialObserve.statut | FRCDAAntecedentFamilialObserve.statusCode | FRFamilyMemberHistoryDocument.status |
| FRLMAntecedentFamilialObserve.code | FRCDAAntecedentFamilialObserve.code | FRFamilyMemberHistoryDocument.condition.code |
| FRLMAntecedentFamilialObserve.descriptionNarrative | FRCDAAntecedentFamilialObserve.text | FRFamilyMemberHistoryDocument.condition.note |
| FRLMAntecedentFamilialObserve.horodatage | FRCDAAntecedentFamilialObserve.effectiveTime | FRFamilyMemberHistoryDocument.condition.onset[x] |
| FRLMAntecedentFamilialObserve.resultat | FRCDAAntecedentFamilialObserve.value | FRFamilyMemberHistoryDocument.condition.outcome |
| FRLMAntecedentFamilialObserve.interpretation | FRCDAAntecedentFamilialObserve.interpretationCode | FRFamilyMemberHistoryDocument.condition.extension:FRInterpretationExtension |
| FRLMAntecedentFamilialObserve.methode | FRCDAAntecedentFamilialObserve.methodCode | FRFamilyMemberHistoryDocument.condition.extension:FRMethodExtension |
| FRLMAntecedentFamilialObserve.site | FRCDAAntecedentFamilialObserve.targetSiteCode | FRFamilyMemberHistoryDocument.condition.extension:FRFamilyMemberHistoryBodySiteExtension |
| FRLMAntecedentFamilialObserve.auteur | FRCDAAntecedentFamilialObserve.author | FRFamilyMemberHistoryDocument.condition.extension:FRActorExtension |
| **FRLMAntecedentsFamiliauxEntree** | **FRCDAAntecedentsFamiliaux** | **FRFamilyMemberHistoryDocument** |
| FRLMAntecedentsFamiliauxEntree.statut | FRCDAAntecedentsFamiliaux.statusCode | FRFamilyMemberHistoryDocument.status |
| FRLMAntecedentsFamiliauxEntree.identificationParent | FRCDAAntecedentsFamiliaux.subject |  |
| FRLMAntecedentsFamiliauxEntree.participant | FRCDAAntecedentsFamiliaux.participant | FRFamilyMemberHistoryDocument.relationship |
| FRLMAntecedentsFamiliauxEntree.antecedentFamilialObserve | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve | FRFamilyMemberHistoryDocument.condition |
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
| FRLMDocumentAttache.typeDocumentAttache | FRCDADocumentAttache.component:frTypeDocumentAttache | FRDocumentReferenceDocument.type |
| FRLMDocumentAttache.documentAttache | FRCDADocumentAttache.component.observationMedia | FRDocumentReferenceDocument.content.attachment |
| FRLMDocumentAttache.documentAttache. observationMedia.identifiant | FRCDADocumentAttache.component. observationMedia.id | FRDocumentReferenceDocument.content.attachment.id |
| FRLMDocumentAttache.documentAttache. observationMedia.documentAttacheEncode | FRCDADocumentAttache.component. observationMedia.value | FRDocumentReferenceDocument.content.attachment.data |
| **FRLMEffetIndesirable** | **FRCDAEffetIndesirable** | **FRAdverseEventDocument** |
| FRLMEffetIndesirable.identifiant | FRCDAEffetIndesirable.id | FRAdverseEventDocument.identifier |
| FRLMEffetIndesirable.typeEffetIndesirable | FRCDAEffetIndesirable.code | FRAdverseEventDocument.category |
| FRLMEffetIndesirable.description | FRCDAEffetIndesirable.text | FRAdverseEventDocument.category.text |
| FRLMEffetIndesirable.dateDebutFin | FRCDAEffetIndesirable.effectiveTime |  |
| FRLMEffetIndesirable.valeur | FRCDAEffetIndesirable.value |  |
| FRLMEffetIndesirable.traitement | FRCDAEffetIndesirable.entryRelationship:frTraitement | FRAdverseEventDocument.suspectEntity.instance |
| FRLMEffetIndesirable.probleme | FRCDAEffetIndesirable.entryRelationship:frProbleme | FRAdverseEventDocument.resultingCondition |
| FRLMEffetIndesirable.imputabiliteEffetIndesirable | FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable | FRAdverseEventDocument.suspectEntity.causality |
| FRLMEffetIndesirable.graviteEffetIndesirable | FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable | FRAdverseEventDocument.seriousness |
| FRLMEffetIndesirable.evolutionEffetIndesirable | FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable | FRAdverseEventDocument.outcome |
| **FRLMRencontre** | **FRCDARencontre** | **FREncounterDocument** |
| FRLMRencontre.identifiant | FRCDARencontre.id | FREncounterDocument.identifier |
| FRLMRencontre.typeRencontre | FRCDARencontre.code | FREncounterDocument.class |
| FRLMRencontre.description | FRCDARencontre.text | FREncounterDocument.class.text |
| FRLMRencontre.dateRencontre | FRCDARencontre.effectiveTime | FREncounterDocument.period |
| FRLMRencontre.confirmationRencontre | FRCDARencontre.priorityCode | FREncounterDocument.priority |
| FRLMRencontre.executant | FRCDARencontre.performer | FREncounterDocument.participant.individual.extension:executant |
| FRLMRencontre.auteur | FRCDARencontre.author | FREncounterDocument.participant.individual.extension:author |
| FRLMRencontre.informateur | FRCDARencontre.informant | FREncounterDocument.participant.individual.extension:informant |
| FRLMRencontre.participant | FRCDARencontre.participant | FREncounterDocument.location.location |
| FRLMRencontre.participant | FRCDARencontre.participant | FREncounterDocument.participant |
| FRLMRencontre.autreParticipant | FRCDARencontre.participant | FREncounterDocument.location.location |
| FRLMRencontre.autreParticipant | FRCDARencontre.participant | FREncounterDocument.participant |
| **FRLMExamenImagerie** | **FRCDADICOMExamenImagerie** | **FRImagingStudyDocument** |
| FRLMExamenImagerie.uuidInstanceExamen | FRCDADICOMExamenImagerie.id | FRImagingStudyDocument.identifier:studyInstanceUid |
| FRLMExamenImagerie.codeActe | FRCDADICOMExamenImagerie.code |  |
| FRLMExamenImagerie.description | FRCDADICOMExamenImagerie.text |  |
| FRLMExamenImagerie.dateActe | FRCDADICOMExamenImagerie.effectiveTime | FRImagingStudyDocument.started |
| FRLMExamenImagerie.serieImagerie | FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie | FRImagingStudyDocument.series |
| FRLMExamenImagerie.objectifsReferences | FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie. entryRelationship:frDICOMSOPInstanceObservvation.entryRelationship:frDICOMObjectifsDeReference | FRImagingStudyDocument.reasonCode |
| **FRLMImageIllustrative** | **FRCDAImageIllustrative** |  |
| FRLMImageIllustrative.identifiant | FRCDAImageIllustrative.id |  |
| FRLMImageIllustrative.langue | FRCDAImageIllustrative.languageCode |  |
| FRLMImageIllustrative.imageEncodee | FRCDAImageIllustrative.value |  |
| FRLMImageIllustrative.mediaType | FRCDAImageIllustrative.value.mediaType |  |
| FRLMImageIllustrative.representation | FRCDAImageIllustrative.value.representation |  |
| FRLMImageIllustrative.subject | FRCDAImageIllustrative.subject |  |
| FRLMImageIllustrative.specimen | FRCDAImageIllustrative.specimen |  |
| FRLMImageIllustrative.performer | FRCDAImageIllustrative.performer |  |
| FRLMImageIllustrative.auteur | FRCDAImageIllustrative.author |  |
| FRLMImageIllustrative.informant | FRCDAImageIllustrative.informant |  |
| FRLMImageIllustrative.participant | FRCDAImageIllustrative.participant |  |
| FRLMImageIllustrative.entryRelationship | FRCDAImageIllustrative.entryRelationship |  |
| FRLMImageIllustrative.reference | FRCDAImageIllustrative.reference |  |
| FRLMImageIllustrative.precondition | FRCDAImageIllustrative.precondition |  |
| **FRLMDispositifMedicalEntree** | **FRCDADispositifMedical** | **FRDeviceRequestDocument** |
| FRLMDispositifMedicalEntree.identifiant | FRCDADispositifMedical.id | FRDeviceRequestDocument.identifier |
| FRLMDispositifMedicalEntree.description | FRCDADispositifMedical.text | FRDeviceRequestDocument.note |
| FRLMDispositifMedicalEntree.date | FRCDADispositifMedical.effectiveTime | FRDeviceRequestDocument.occurrence[x] |
| FRLMDispositifMedicalEntree.renouvellement | FRCDADispositifMedical.repeatNumber | FRDeviceRequestDocument.occurrenceTiming.repeat.count |
| FRLMDispositifMedicalEntree.duree | FRCDADispositifMedical.expectedUseTime | FRDeviceRequestDocument.occurrencePeriod |
| FRLMDispositifMedicalEntree.quantite | FRCDADispositifMedical.quantity | FRDeviceRequestDocument.parameter.valueQuantity |
| FRLMDispositifMedicalEntree.auteur | FRCDADispositifMedical.author | FRDeviceRequestDocument.requester.extension:prescripteur |
| FRLMDispositifMedicalEntree.dispositifMedical | FRCDADispositifMedical.participant | FRDeviceRequestDocument.codeReference |
| FRLMDispositifMedicalEntree.affectionLongueDuree | FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD | FRDeviceRequestDocument.reasonReference:EnRapportAvecALD |
| FRLMDispositifMedicalEntree.accidentTravail | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail | FRDeviceRequestDocument.reasonReference:EnRapportAvecAccidentTravail |
| FRLMDispositifMedicalEntree.prevention | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention | FRDeviceRequestDocument.reasonReference:EnRapportAvecLaPrevention |
| FRLMDispositifMedicalEntree.nonRemboursable | FRCDADispositifMedical.entryRelationship:frNonRemboursable | FRDeviceRequestDocument.extension:notCovered |
| **FRLMProbleme** | **FRCDAProbleme** | **FRConditionDocument** |
| FRLMProbleme.identifiant | FRCDAProbleme.id | FRConditionDocument.identifier |
| FRLMProbleme.type | FRCDAProbleme.code | FRConditionDocument.category |
| FRLMProbleme.description | FRCDAProbleme.text | FRConditionDocument.category.text |
| FRLMProbleme.problemeObserve | FRCDAProbleme.value | FRConditionDocument.code |
| FRLMProbleme.statut | FRCDAProbleme.statusCode |  |
| FRLMProbleme.dateProbleme | FRCDAProbleme.effectiveTime |  |
| FRLMProbleme.statutProbleme | FRCDAProbleme.entryRelationship:frStatutDuProbleme | FRConditionDocument.clinicalStatus |
| FRLMProbleme.severite | FRCDAProbleme.entryRelationship:frSeverite | FRConditionDocument.severity |
| FRLMProbleme.certitude | FRCDAProbleme.entryRelationship:frCertitude | FRConditionDocument.verificationStatus |
| FRLMProbleme.statutClinique | FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient | FRConditionDocument.stage.summary |
| FRLMProbleme.reference | FRCDAProbleme.reference | FRConditionDocument.evidence.detail |
| FRLMProbleme.reference. externalDocument.identifiant | FRCDAProbleme.reference. externalDocument.id |  |
| FRLMProbleme.reference. externalDocument.text.reference | FRCDAProbleme.reference. externalDocument.text.reference |  |
| FRLMProbleme.commentaire | FRCDAProbleme.entryRelationship:frCommentaireER | FRConditionDocument.note |
| **FRLMReferenceItemPlanTraitement** | **FRCDAReferenceItemPlanTraitement** | **FRCarePlanDocument** |
| FRLMReferenceItemPlanTraitement.identifiant | FRCDAReferenceItemPlanTraitement.id | FRCarePlanDocument.identifier |
| FRLMReferenceItemPlanTraitement.code | FRCDAReferenceItemPlanTraitement.code | FRCarePlanDocument.category |
| FRLMReferenceItemPlanTraitement.produitSante | FRCDAReferenceItemPlanTraitement.consumable | FRCarePlanDocument.activity.detail.productReference |
| FRLMReferenceItemPlanTraitement.auteur | FRCDAReferenceItemPlanTraitement.author | FRCarePlanDocument.author |
| FRLMReferenceItemPlanTraitement.traitementPrescrit | FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument |
| FRLMReferenceItemPlanTraitement.reference | FRCDAReferenceItemPlanTraitement.reference | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument |
| FRLMReferenceItemPlanTraitement.reference. externalDocument.identifiant | FRCDAReferenceItemPlanTraitement.reference. externalDocument.id | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument.identifier |
| **FRLMTraitement** | **FRCDATraitement** |  |
| FRLMTraitement.identifiant | FRCDATraitement.id | FRMedicationAdministrationDocument.identifier |
| FRLMTraitement.code | FRCDATraitement.code | FRMedicationAdministrationDocument.category |
| FRLMTraitement.note | FRCDATraitement.text | FRMedicationAdministrationDocument.category.text |
| FRLMTraitement.status | FRCDATraitement.statusCode | FRMedicationAdministrationDocument.status |
| FRLMTraitement.occurancePeriod | FRCDATraitement.effectiveTime[not(@operator='A')] | FRMedicationAdministrationDocument.effectivePeriod |
| FRLMTraitement.occuranceDateTim | FRCDATraitement.effectiveTime[@operator='A'] | FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5 |
| FRLMTraitement.dosage |  |  |
| FRLMTraitement.dosage.route | FRCDATraitement.routeCode | FRMedicationAdministrationDocument.dosage.route |
| FRLMTraitement.dosage.site | FRCDATraitement.approachSiteCode | FRMedicationAdministrationDocument.dosage.site |
| FRLMTraitement.dosage.dose | FRCDATraitement.doseQuantity | FRMedicationAdministrationDocument.dosage.dose |
| FRLMTraitement.dosage.rate[x] | FRCDATraitement.rateQuantity | FRMedicationAdministrationDocument.dosage.rate[x] |
| FRLMTraitement.dosage.doseMaximale | FRCDATraitement.maxDoseQuantity | FRMedicationAdministrationDocument.dosage.rateRatio |
| FRLMTraitement.medicament | FRCDATraitement.consumable | FRMedicationAdministrationDocument.medication:FRMedicationDocument |
| FRLMTraitement.reason | FRCDATraitement.entryRelationship:frReferenceInterne | FRMedicationAdministrationDocument.reasonReference |
| FRLMTraitement.prescription | FRCDATraitement.entryRelationship:frPrescription | FRMedicationAdministrationDocument.request |
| FRLMTraitement.subordinateTreatment | FRCDATraitement.entryRelationship:frTraitementSubordonne | FRMedicationAdministrationDocument.medication:FRMedicationsCombinaisonDocument |
| FRLMTraitement.instructionsPatient | FRCDATraitement.entryRelationship:frInstructionsAuPatient | FRMedicationAdministrationDocument.dosage.text |
| FRLMTraitement.precondition | FRCDATraitement.precondition | FRMedicationAdministrationDocument.note |
| **FRLMResultatsEntry** | **FRCDAResultats** | **FRDiagnosticReportDocument** |
| FRLMResultatsEntry.identifiant | FRCDAResultats.id | FRDiagnosticReportDocument.identifier |
| FRLMResultatsEntry.code | FRCDAResultats.code | FRDiagnosticReportDocument.code |
| FRLMResultatsEntry.statut | FRCDAResultats.statusCode |  |
| FRLMResultatsEntry.date | FRCDAResultats.effectiveTime | FRDiagnosticReportDocument.effective[x] |
| FRLMResultatsEntry.executant | FRCDAResultats.performer | FRDiagnosticReportDocument.performer.extension:performerFunction |
| FRLMResultatsEntry.auteur | FRCDAResultats.author | FRDiagnosticReportDocument.resultsInterpreter.extension:performerFunction |
| FRLMResultatsEntry.resultat | FRCDAResultats.component:frResultat | FRDiagnosticReportDocument.result |
| **FRLMDispositifMedicalEntree** | **FRCDADispositifMedical** | **FRDeviceUseStatementDocument** |
| FRLMDispositifMedicalEntree.identifiant | FRCDADispositifMedical.id | FRDeviceUseStatementDocument.identifier |
| FRLMDispositifMedicalEntree.date | FRCDADispositifMedical.effectiveTime | FRDeviceUseStatementDocument.timing[x] |
| FRLMDispositifMedicalEntree.dispensateur | FRCDADispositifMedical.performer | FRDeviceUseStatementDocument.source.extension:performer |
| FRLMDispositifMedicalEntree.dispositifMedical | FRCDADispositifMedical.participant | FRDeviceUseStatementDocument.device |
| FRLMDispositifMedicalEntree.affectionLongueDuree | FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD | FRDeviceUseStatementDocument.reasonReference:EnRapportAvecALD |
| FRLMDispositifMedicalEntree.accidentTravail | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail | FRDeviceUseStatementDocument.reasonReference:EnRapportAvecAccidentTravail |
| FRLMDispositifMedicalEntree.prevention | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention | FRDeviceUseStatementDocument.reasonReference:EnRapportAvecLaPrevention |
| **FRLMVaccinRecommande** | **FRCDAVaccinRecommande** | **FRImmunizationRecommendationDocument** |
| FRLMVaccinRecommande.identifiantVaccinRecommande | FRCDAVaccinRecommande.id | FRImmunizationRecommendationDocument.identifier |
| FRLMVaccinRecommande.codeVaccinRecommande | FRCDAVaccinRecommande.code | FRImmunizationRecommendationDocument.recommendation.vaccineCode |
| FRLMVaccinRecommande.descriptionNarrativeVaccinRecommande | FRCDAVaccinRecommande.text | FRImmunizationRecommendationDocument.recommendation.vaccineCode.text |
| FRLMVaccinRecommande.statutVaccinRecommande | FRCDAVaccinRecommande.statusCode | FRImmunizationRecommendationDocument.recommendation.forecastStatus |
| FRLMVaccinRecommande.periodeVaccination | FRCDAVaccinRecommande.effectiveTime | FRImmunizationRecommendationDocument.recommendation.dateCriterion.value |
| FRLMVaccinRecommande.voieAdministration | FRCDAVaccinRecommande.routeCode |  |
| FRLMVaccinRecommande.regionAnatomique | FRCDAVaccinRecommande.approachSiteCode |  |
| FRLMVaccinRecommande.doseAdministree | FRCDAVaccinRecommande.doseQuantity |  |
| FRLMVaccinRecommande.vaccin | FRCDAVaccinRecommande.consumable.FRCDAProduitDeSante | FRImmunizationRecommendationDocument.recommendation.vaccineCode |
| FRLMVaccinRecommande.prescription | FRCDAVaccinRecommande.entryRelationship:frPrescription | FRImmunizationRecommendationDocument.recommendation.supportingPatientInformation |
| FRLMVaccinRecommande.rangVaccination | FRCDAVaccinRecommande.entryRelationship:frRangDeLaVaccination | FRImmunizationRecommendationDocument.recommendation.seriesDosesPositiveInt |
| FRLMVaccinRecommande.commentaire | FRCDAVaccinRecommande.entryRelationship:frCommentaireER | FRImmunizationRecommendationDocument.description |
| **FRLMVaccination** | **FRCDAVaccination** | **FRImmunizationDocument** |
| FRLMVaccination.identifiant | FRCDAVaccination.id | FRImmunizationDocument.identifier |
| FRLMVaccination.code | FRCDAVaccination.code | FRImmunizationDocument.protocolApplied.series |
| FRLMVaccination.description | FRCDAVaccination.text | FRImmunizationDocument.vaccineCode.text |
| FRLMVaccination.statut | FRCDAVaccination.statusCode | FRImmunizationDocument.status |
| FRLMVaccination.dateVaccination | FRCDAVaccination.effectiveTime | FRImmunizationDocument.occurrence[x] |
| FRLMVaccination.voieAadministration | FRCDAVaccination.routeCode | FRImmunizationDocument.route |
| FRLMVaccination.regionAnatomique | FRCDAVaccination.approachSiteCode | FRImmunizationDocument.site |
| FRLMVaccination.doseVaccination | FRCDAVaccination.doseQuantity |  |
| FRLMVaccination.vaccin | FRCDAVaccination.consumable.FRCDAProduitDeSante |  |
| FRLMVaccination.prescription | FRCDAVaccination.entryRelationship:frPrescription | FRImmunizationDocument.extension:immunization-basedOn-r5 |
| FRLMVaccination.rangVaccination | FRCDAVaccination.entryRelationship:frRangDeLaVaccination | FRImmunizationDocument.protocolApplied.doseNumberPositiveInt |
| FRLMVaccination.reaction | FRCDAVaccination.entryRelationship:frProbleme | FRImmunizationDocument.reasonReference |
| FRLMVaccination.commentaire | FRCDAVaccination.entryRelationship:frCommentaireER | FRImmunizationDocument.note |
| FRLMVaccination.DoseAntigene | FRCDAVaccination.entryRelationship:frDoseAntigene | FRImmunizationDocument.extension:immunization-administeredProduct-r5 |

