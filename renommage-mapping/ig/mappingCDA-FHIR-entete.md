# Mapping Métier/CDA/FHIR - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Entête document**](enteteDocument.md)
* **Mapping Métier/CDA/FHIR**

## Mapping Métier/CDA/FHIR

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Éléments de 1ᵉʳ niveau

| | |
| :--- | :--- |
| Titre du profil | Description |
| [Mapping Métier/CDA/FHIR : "Auteur"](ConceptMap-mappingAuteurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "Auteur" et l'élément CDA "author"
* Mapping 2 : entre l'élément CDA "author" et l'élément FHIR "Composition.author"
 |
| [Mapping Métier/CDA/FHIR : "Consentement"](ConceptMap-mappingConsentementCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "ConsentementAssocie" et l'élément CDA "authorization"
* Mapping 2 : entre l'élément CDA "authorization" et l'extension FHIR "ConsentExtension"
 |
| [Mapping Métier/CDA/FHIR : "Destinataire prévu"](ConceptMap-mappingDestinatairePrevuCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "destinataire" et l'élément CDA "informationRecipient"
* Mapping 2 : entre l'élément CDA "informationRecipient" et l'extension FHIR "InformationRecipientExtension"
 |
| [Mapping Métier/CDA/FHIR : "DocumentDeReference"](ConceptMap-mappingDocumentDeReferenceCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "documentDeReference" et l'élément CDA "relatedDocument"
* Mapping 2 : entre l'élément CDA "relatedDocument" et l'élément FHIR "Composition.relatesTo"
 |
| [Mapping Métier/CDA/FHIR : "Evènement documenté"](ConceptMap-mappingEvenementCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 :entre le modèle métier "evenement" et l'élément CDA "documentationOf"
* Mapping 2 : entre l'élément CDA "documentationOf" et l'élément FHIR "Composition.event"
 |
| [Mapping Métier/CDA/FHIR : "Informateur"](ConceptMap-mappingInformateurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "informateur" et l'élément CDA "informant"
* Mapping 2 : entre l'élément CDA "informant" et l'extension FHIR "InformantExtension"
 |
| [Mapping Métier/CDA/FHIR : "Opérateur de saisie"](ConceptMap-mappingOperateurSaisieCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "operateurSaisie" et l'élément CDA "dataEnterer"
* Mapping 2 : entre l'élément CDA "dataEnterer" et l'extension FHIR "DataEntererExtension"
 |
| [Mapping Métier/CDA/FHIR : "Participant"](ConceptMap-mappingParticipantCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "participant" et l'élément CDA "participant"
* Mapping 2 : entre l'élément CDA "participant" et l'extension FHIR "ParticipantExtension"
 |
| [Mapping Métier/CDA/FHIR : "Patient/Usager"](ConceptMap-mappingPatientCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "patient" et l'élément CDA "recordTarget"
* Mapping 2 : entre l'élément CDA "recordTarget" et le profil FHIR "FrPatientDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)"](ConceptMap-mappingPersonneStructureAssignedEntityFHIR.md) | Ce ConceptMap de l'élément PersonneStructure présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructure" et l'élément CDA "assignedEntity"
* Mapping 2 : entre l'élément CDA "assignedEntity" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)"](ConceptMap-mappingPersonneStructureAuteurFHIR.md) | Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructureAuteur" et l'élément CDA "assignedAuthor"
* Mapping 2 : entre l'élément CDA "assignedAuthor" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"](ConceptMap-mappingPersonneStructureRelatedEntityFHIR.md) | Ce ConceptMap de l'élément PersonneStructure présente trois groupes de mapping:* Mapping 1 : entre le modèle métier "FRLMPersonneStructure" et l'élément CDA "relatedEntity"
* Mapping 2 : entre l'élément CDA "relatedEntity" et le profil FHIR "FrRelatedPersonDocument"
* Mapping 3 : entre l'élément CDA "relatedEntity" et l'élément FHIR "Patient.contact"
 |
| [Mapping Métier/CDA/FHIR : "Prescription"](ConceptMap-mappingPrescriptionCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "prescription" et l'élément CDA "inFulfillmentOf"
* Mapping 2 : entre l'élément CDA "inFulfillmentOf" et l'extension FHIR "OrderExtension"
 |
| [Mapping Métier/CDA/FHIR : "Prise en charge"](ConceptMap-mappingPriseEnchargeCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "prise en charge" et l'élément CDA "componentOf"
* Mapping 2 : entre l'élément CDA "componentOf" et l'élément FHIR "Composition.encounter(Encounter)"
 |
| [Mapping Métier/CDA/FHIR : "Responsable du document"](ConceptMap-mappingResponsableCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "responsable" et l'élément CDA "legalAuthenticator"
* Mapping 2 : entre l'élément CDA "legalAuthenticator" et l'élément FHIR "Composition.attester"
 |
| [Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document"](ConceptMap-mappingStructureConservationCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "structureConservation" et l'élément CDA "custodian"
* Mapping 2 : entre l'élément CDA "custodian" et l'élément FHIR "Composition.custodian"
 |
| [Mapping Métier/CDA/FHIR : "Système / Structure Auteur"](ConceptMap-mappingSystemeFHIR.md) | Ce ConceptMap de l'élément SystemeStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "SystemeStructureAuteur" et l'élément CDA "assignedAuthor"
* Mapping 2 : entre l'élément CDA "assignedAuthor" et le profil FHIR "FrDeviceDocument"
 |
| [Mapping Métier/CDA/FHIR : "Validateur"](ConceptMap-mappingValidateurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "validateur" et l'élément CDA "authenticator"
* Mapping 2 : entre l'élément CDA "authenticator" et l'élément FHIR "Composition.attester"
 |
| [Mapping Métier/CDA/FHIR : Entête d'un document](ConceptMap-mappingmodelemetierCDAFHIR.md) | Ce ConceptMap présente trois groupes de mapping :* Mapping 1 : entre le modèle métier "EnteteDocument" et l'élément CDA "clinicalDocument"
* Mapping 2 : entre l'élément CDA "clinicalDocument" et le profil FHIR "FrBundleDocument"
* Mapping 3 : entre l'élément CDA "clinicalDocument" et le profil FHIR "FrCompositionDocument"
 |

### Éléments de 2ᵉ niveau

| | |
| :--- | :--- |
| Titre du profil | Description |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)"](ConceptMap-mappingPersonneStructureAssignedEntityFHIR.md) | Ce ConceptMap de l'élément PersonneStructure présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructure" et l'élément CDA "assignedEntity"
* Mapping 2 : entre l'élément CDA "assignedEntity" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)"](ConceptMap-mappingPersonneStructureAuteurFHIR.md) | Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructureAuteur" et l'élément CDA "assignedAuthor"
* Mapping 2 : entre l'élément CDA "assignedAuthor" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"](ConceptMap-mappingPersonneStructureRelatedEntityFHIR.md) | Ce ConceptMap de l'élément PersonneStructure présente trois groupes de mapping:* Mapping 1 : entre le modèle métier "FRLMPersonneStructure" et l'élément CDA "relatedEntity"
* Mapping 2 : entre l'élément CDA "relatedEntity" et le profil FHIR "FrRelatedPersonDocument"
* Mapping 3 : entre l'élément CDA "relatedEntity" et l'élément FHIR "Patient.contact"
 |
| [Mapping Métier/CDA/FHIR : "Système / Structure Auteur"](ConceptMap-mappingSystemeFHIR.md) | Ce ConceptMap de l'élément SystemeStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "SystemeStructureAuteur" et l'élément CDA "assignedAuthor"
* Mapping 2 : entre l'élément CDA "assignedAuthor" et le profil FHIR "FrDeviceDocument"
 |

