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
| **FRLMDispositifMedicalEntree** | **FRCDADispositifMedical** | **FRDeviceRequestDocument** |
| FRLMDispositifMedicalEntree.identifiant | FRCDADispositifMedical.id | FRDeviceRequestDocument.identifier |
| FRLMDispositifMedicalEntree.description | FRCDADispositifMedical.text | FRDeviceRequestDocument.note |
| FRLMDispositifMedicalEntree.date | FRCDADispositifMedical.effectiveTime | FRDeviceRequestDocument.occurrenceTiming |
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

