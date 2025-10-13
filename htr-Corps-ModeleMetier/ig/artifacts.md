# Artifacts Summary - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Modèle logique métier 

| | |
| :--- | :--- |
| [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md) | Eléments de l’entête d’un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc…). |
| [Modèle métier - Association du document à une prescription](StructureDefinition-Prescription.md) | Association à une prescription à l’origine de l’acte dont résulte le document. |
| [Modèle métier - Association du document à une prise en charge](StructureDefinition-PriseEncharge.md) | Association du document à une prise en charge du patient/usager par un professionnel ou par une structure.* Exemples : 
* Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.
* Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.
 
* Pour un document d’expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n’a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d’activité.
 |
| [Modèle métier - Auteur du document (humain ou système)](StructureDefinition-Auteur.md) | Auteur du document : ce peut être un professionnel, un patient/usager ou un système.* Pour un professionnel ou un système, la structure de rattachement doit être précisée.
 |
| [Modèle métier - Autres personnes / structures impliquées](StructureDefinition-Participant.md) | Personne/Structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. |
| [Modèle métier - Consentement associé au document](StructureDefinition-Consentement.md) | Permet de documenter qu’un consentement éclairé a été obtenu et d’indiquer quel type de consentement a été fourni. |
| [Modèle métier - Destinataire prévu du document](StructureDefinition-DestinatairePrevu.md) | Personne déclarée comme destinataire prévu du document.* Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s). Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l’envoyer à d’autres destinataires.
 |
| [Modèle métier - Document de référence](StructureDefinition-DocumentDeReference.md) | Référence un document existant (à remplacer ou transformé). |
| [Modèle métier - Informateur](StructureDefinition-Informateur.md) | Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d’urgence, aidant, aidé. |
| [Modèle métier - Opérateur de saisie](StructureDefinition-OperateurSaisie.md) | Opérateur de saisie de la totalité ou d’une partie du contenu du document. |
| [Modèle métier - Patient / Usager](StructureDefinition-PatientUsager.md) | Patient/Usager concerné par le document. |
| [Modèle métier - Personne et/ou Structure](StructureDefinition-PersonneStructure.md) | Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). |
| [Modèle métier - Personne et/ou Structure (Auteur)](StructureDefinition-PersonneStructureAuteur.md) | Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). |
| [Modèle métier - Responsable du document](StructureDefinition-Responsable.md) | Représente le responsable du document, qui est :* soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel.
* soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …).
* soit le patient/usager responsable du document d’expression personnelle
* soit le SNR responsable du document produit via ce SNR.
* Soit le Dossier Pharmaceutique (DP) responsable des documents qu’il produit
 |
| [Modèle métier - Structure chargée de la conservation du document](StructureDefinition-StructureConservation.md) | Structure chargée de la conservation du document, c’est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie. |
| [Modèle métier - Système / Structure](StructureDefinition-SystemeStructureAuteur.md) | Système auteur du document |
| [Modèle métier - Validateur du document](StructureDefinition-Validateur.md) | Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N’est pas utilisé dans un document d’expression personnelle du patient/usager et un document produit par un système. |
| [Modèle métier - Évènement documenté](StructureDefinition-Evenement.md) | Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l’évènement principal avec obligatoirement une date de début et un exécutant. |

### Eléments CDA 

| | |
| :--- | :--- |
| [CDA - assignedAuthor](StructureDefinition-fr-core-assigned-author.md) | L’élément de l’en-tête du CDA assignedAuthor contient les éléments permettant de décrire l’auteur. |
| [CDA - assignedCustodian](StructureDefinition-fr-core-assigned-custodian.md) | L’élément de l’en-tête du CDA assignedCustodian contient l’élément representedCustodianOrganization caractérisant la structure conservant le document. |
| [CDA - assignedEntity](StructureDefinition-fr-core-assigned-entity.md) | L’élément de l’en-tête du CDA assignedEntity est utilisé dans les éléments suivants : dataEnterer, informant, legalAuthenticator, authenticator, performer, responsibleParty et encounterParticipant. |
| [CDA - assignedPerson](StructureDefinition-fr-core-person.md) | L’élément de l’en-tête du CDA assignedPerson permet de décrire une personne physique. |
| [CDA - associatedEntity](StructureDefinition-fr-core-associated-entity.md) | L’élément de l’en-tête du CDA associatedEntity permet de représenter les caractéristiques du professionnel et/ou de l’établissement participant. |
| [CDA - authenticator](StructureDefinition-fr-core-authenticator.md) | L’élément de l’en-tête du CDA authenticator permet de représenter le professionnel (personne physique) attestant la validité du contenu du document. |
| [CDA - author](StructureDefinition-fr-core-author.md) | L’élément de l’en-tête du CDA author permet d’enregistrer un auteur du document. |
| [CDA - authoringDevice](StructureDefinition-fr-core-authoring-device.md) | L’élément de l’en-tête du CDA authoringDevice contient les informations complémentaires si l’auteur est un système. |
| [CDA - authorization](StructureDefinition-fr-core-authorization.md) | L’élément de l’en-tête du CDA authorization permet de documenter qu’un consentement éclairé a été obtenu et d’indiquer quel type de consentement a été fourni. |
| [CDA - clinicalDocument](StructureDefinition-fr-core-clinical-document.md) | L’élément de l’en-tête CDA ‘ClinicalDocument’ est l’élément racine d’un document médical. |
| [CDA - componentOf](StructureDefinition-fr-core-component-of.md) | L’élément de l’en-tête du CDA componentOf permet d’associer le document à une prise en charge du patient/usager. |
| [CDA - custodian](StructureDefinition-fr-core-custodian.md) | L’élément de l’en-tête du CDA custodian permet de représenter la structure chargée de la conservation du document. |
| [CDA - dataEnterer](StructureDefinition-fr-core-data-enterer.md) | L’élément de l’en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document. |
| [CDA - documentationOf](StructureDefinition-fr-core-documentation-of.md) | L’élément de l’en-tête du CDA documentationOf permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l’évènement principal avec obligatoirement une date de début et un exécutant. |
| [CDA - encompassingEncounter](StructureDefinition-fr-core-encompassing-encounter.md) | L’élément de l’en-tête du CDA encompassingEncounter permet de décrire la prise en charge du patient/usager par un professionnel ou par une structure. |
| [CDA - encounterParticipant](StructureDefinition-fr-core-encounter-participant.md) | L’élément de l’en-tête du CDA encounterParticipant permet de représenter la personne impliquée dans la prise en charge du patient/usager, comme par exemple, le professionnel co-responsable, le professionnel ayant fait l’admission ou encore le professionnel ayant donné son avis quant à la prise en charge. |
| [CDA - healthCareFacility](StructureDefinition-fr-core-health-care-facility.md) | L’élément de l’en-tête du CDA healthCareFacility permet de représenter la structure de prise en charge (cabinet du médecin, hôpital ou clinique, etc.). |
| [CDA - informant](StructureDefinition-fr-core-informant.md) | L’élément de l’en-tête du CDA informant permet d’identifier un informateur, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée. |
| [CDA - informationRecipient](StructureDefinition-fr-core-information-recipient.md) | L’élément de l’en-tête du CDA informationRecipient permet d’enregistrer une personne déclarée comme destinataire prévu du document. |
| [CDA - inFulfillmentOf](StructureDefinition-fr-core-inFulfillment-of.md) | L’élément de l’en-tête du CDA inFulfillmentOf permet d’associer un document à une prescription. |
| [CDA - intendedRecipient](StructureDefinition-fr-core-intended-recipient.md) | L’élément de l’en-tête du CDA intendedRecipient permet d’enregistrer le destinataire prévu du document. |
| [CDA - legalAuthenticator](StructureDefinition-fr-core-legal-authenticator.md) | L’élément de l’en-tête du CDA legalAuthenticator permet de représenter les caractéristiques du professionnel et/ou de l’établissement participant. |
| [CDA - Name](StructureDefinition-fr-core-name.md) | L’élément de l’en-tête du CDA correspond au nom d’une personne physique. |
| [CDA - order](StructureDefinition-fr-core-order.md) | L’élément de l’en-tête du CDA order permet de représenter la prescription à l’origine de l’acte dont résulte le document. |
| [CDA - parentDocument](StructureDefinition-fr-core-parent-document.md) | L’élément de l’en-tête du CDA parentDocument permet de représenter le document de référence. |
| [CDA - participant](StructureDefinition-fr-core-participant.md) | L’élément de l’en-tête du CDA participant permet de représenter toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. |
| [CDA - patient](StructureDefinition-fr-core-patient.md) | L’élément de l’en-tête du CDA patient permet de représenter une personne physique. |
| [CDA - patientRole](StructureDefinition-fr-core-patient-role.md) | L’élément de l’en-tête du CDA patientRole permet de décrire le patient/usager. |
| [CDA - performer](StructureDefinition-fr-core-performer.md) | L’élément de l’en-tête du CDA performer permet de représenter l’exécutant de l’évènement documenté. Il est obligatoire et son attribut nullFlavor interdit pour l’évènement documenté principal. |
| [CDA - recordTarget](StructureDefinition-fr-core-record-target.md) | L’élément de l’en-tête du CDA recordTarget permet de représenter le patient/usager concerné par le document. |
| [CDA - relatedDocument](StructureDefinition-fr-core-related-document.md) | L’élément de l’en-tête du CDA relatedDocument permet de référencer un document existant (à remplacer ou transformé). |
| [CDA - relatedEntity](StructureDefinition-fr-core-related-entity.md) | L’élément de l’en-tête du CDA relatedEntity permet de décrire : un informateur non professionnel, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée. |
| [CDA - representedCustodianOrganization](StructureDefinition-fr-core-represented-custodian-organization.md) | L’élément de l’en-tête du CDA representedCustodianOrganization contient les éléments caractérisant la structure conservant le document, à savoir l’identifiant, le nom, les adresses géopostales et de télécommunication. |
| [CDA - representedOrganization](StructureDefinition-fr-core-represented-organization.md) | L’élément de l’en-tête du CDA representedOrganization permet de représenter la structure pour le compte de laquelle intervient le professionnel. |
| [CDA - serviceEvent](StructureDefinition-fr-core-service-event.md) | L’élément de l’en-tête du CDA serviceEvent permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. L’occurrence de documentationOf/serviceEvent contenant les données de l’évènement documenté principal doit inclure un élément effectiveTime et un élément performer renseignés, sans recours à l’attribut nullFlavor. |

### Profils FHIR 

| | |
| :--- | :--- |
| [Fr Bundle Document](StructureDefinition-fr-bundle-document.md) | Ce profil permet d’assembler les éléments de l’en-tête et du corps d’un document. |
| [Fr Composition Document](StructureDefinition-fr-composition-document.md) | Ce profil est utilisé pour représenter un document médical. |
| [Fr Device Document](StructureDefinition-fr-device-auteur-document.md) | Ce profil représente le système auteur du document. |
| [Fr Encounter Document](StructureDefinition-fr-encounter-document.md) | Ce profil représente l’association du document à une prise en charge. |
| [Fr Location Document](StructureDefinition-fr-location-document.md) | Ce profil représente le lieu de la prise en charge. |
| [Fr Organization Document](StructureDefinition-fr-organization-document.md) | Ce profil représente la structure pour le compte de laquelle intervient le professionnel. |
| [Fr Patient Document](StructureDefinition-fr-patient-document.md) | Ce profil représente le patient concerné par le document. |
| [Fr Patient INS Document](StructureDefinition-fr-patient-ins-document.md) | Ce profil représente le patient concerné par le document. |
| [Fr Practitioner Document](StructureDefinition-fr-practitioner-document.md) | Ce profil permet de décrire un professionnel de santé dans le cadre d’un document médical |
| [Fr PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md) | Ce profil représente les professionnels de santé et leurs rôles dans le cadre d’un document médical. |
| [Fr RelatedPerson Document](StructureDefinition-fr-related-person-document.md) | Ce profil représente l’informateur non professionnel. |

### Data Type Profiles 

| | |
| :--- | :--- |
| [Human Name Document](StructureDefinition-fr-human-name-document.md) | Ce profil correspond au type de données HumanName utilisé dans le document. |

### Extensions FHIR 

| | |
| :--- | :--- |
| [Fr Author Time Extension](StructureDefinition-fr-author-time.md) | Extension permettant d’ajouter un horodatage (TS) à l’élément author d’une Composition. |
| [Fr Performer Event](StructureDefinition-fr-performer-event.md) | Extension permettant d’ajouter un performer à l’élément event d’une Composition. |

### Concept Maps 

| | |
| :--- | :--- |
| [Mapping Métier/CDA/FHIR : Entête d'un document](ConceptMap-mappingmodelemetierCDAFHIR.md) | Ce ConceptMap présente trois groupes de mapping :* Mapping 1 : entre le modèle métier "EnteteDocument" et l’élément CDA "clinicalDocument"
* Mapping 2 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrBundleDocument"
* Mapping 3 : entre l’élément CDA "clinicalDocument" et le profil FHIR "FrCompositionDocument"
 |
| [Mapping Métier/CDA/FHIR : "Auteur"](ConceptMap-mappingAuteurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "auteur" et l’élément CDA "author"
* Mapping 2 : entre l’élément CDA "author" et l’élément FHIR "Composition.author"
 |
| [Mapping Métier/CDA/FHIR : "Consentement"](ConceptMap-mappingConsentementCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "ConsentementAssocie" et l’élément CDA "authorization"
* Mapping 2 : entre l’élément CDA "authorization" et l’extension FHIR "ConsentExtension"
 |
| [Mapping Métier/CDA/FHIR : "Destinataire prévu"](ConceptMap-mappingDestinatairePrevuCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "destinataire" et l’élément CDA "informationRecipient"
* Mapping 2 : entre l’élément CDA "informationRecipient" et l’extension FHIR "InformationRecipientExtension"
 |
| [Mapping Métier/CDA/FHIR : "DocumentDeReference"](ConceptMap-mappingDocumentDeReferenceCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "documentDeReference" et l’élément CDA "relatedDocument"
* Mapping 2 : entre l’élément CDA "relatedDocument" et l’élément FHIR "Composition.relatesTo"
 |
| [Mapping Métier/CDA/FHIR : "Evènement documenté"](ConceptMap-mappingEvenementCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 :entre le modèle métier "evenement" et l’élément CDA "documentationOf"
* Mapping 2 : entre l’élément CDA "documentationOf" et l’élément FHIR "Composition.event"
 |
| [Mapping Métier/CDA/FHIR : "Informateur"](ConceptMap-mappingInformateurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "informateur" et l’élément CDA "informant"
* Mapping 2 : entre l’élément CDA "informant" et l’extension FHIR "InformantExtension"
 |
| [Mapping Métier/CDA/FHIR : "Opérateur de saisie"](ConceptMap-mappingOperateurSaisieCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "operateurSaisie" et l’élément CDA "dataEnterer"
* Mapping 2 : entre l’élément CDA "dataEnterer" et l’extension FHIR "DataEntererExtension"
 |
| [Mapping Métier/CDA/FHIR : "Participant"](ConceptMap-mappingParticipantCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "participant" et l’élément CDA "participant"
* Mapping 2 : entre l’élément CDA "participant" et l’extension FHIR "ParticipantExtension"
 |
| [Mapping Métier/CDA/FHIR : "Patient/Usager"](ConceptMap-mappingPatientCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "patient" et l’élément CDA "recordTarget"
* Mapping 2 : entre l’élément CDA "recordTarget" et le profil FHIR "FrPatientDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)"](ConceptMap-mappingPersonneStructureAssignedEntityFHIR.md) | Ce ConceptMap de l’élément PersonneStructure présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructure" et l’élément CDA "assignedEntity"
* Mapping 2 : entre l’élément CDA "assignedEntity" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)"](ConceptMap-mappingPersonneStructureAuteurFHIR.md) | Ce ConceptMap de l’élément PersonneStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "PersonneStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrPractitionerRoleDocument"
 |
| [Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"](ConceptMap-mappingPersonneStructureRelatedEntityFHIR.md) | Ce ConceptMap de l’élément PersonneStructure présente trois groupes de mapping:* Mapping 1 : entre le modèle métier "PersonneStructure" et l’élément CDA "relatedEntity"
* Mapping 2 : entre l’élément CDA "relatedEntity" et le profil FHIR "FrRelatedPersonDocument"
* Mapping 3 : entre l’élément CDA "relatedEntity" et l’élément FHIR "Patient.contact"
 |
| [Mapping Métier/CDA/FHIR : "Prescription"](ConceptMap-mappingPrescriptionCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "prescription" et l’élément CDA "inFulfillmentOf"
* Mapping 2 : entre l’élément CDA "inFulfillmentOf" et l’extension FHIR "OrderExtension"
 |
| [Mapping Métier/CDA/FHIR : "Prise en charge"](ConceptMap-mappingPriseEnchargeCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "prise en charge" et l’élément CDA "componentOf"
* Mapping 2 : entre l’élément CDA "componentOf" et l’élément FHIR "Composition.encounter(Encounter)"
 |
| [Mapping Métier/CDA/FHIR : "Responsable du document"](ConceptMap-mappingResponsableCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "responsable" et l’élément CDA "legalAuthenticator"
* Mapping 2 : entre l’élément CDA "legalAuthenticator" et l’élément FHIR "Composition.attester"
 |
| [Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document"](ConceptMap-mappingStructureConservationCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "structureConservation" et l’élément CDA "custodian"
* Mapping 2 : entre l’élément CDA "custodian" et l’élément FHIR "Composition.custodian"
 |
| [Mapping Métier/CDA/FHIR : "Système / Structure Auteur"](ConceptMap-mappingSystemeFHIR.md) | Ce ConceptMap de l’élément SystemeStructureAuteur présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "SystemeStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrDeviceDocument"
 |
| [Mapping Métier/CDA/FHIR : "Validateur"](ConceptMap-mappingValidateurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "validateur" et l’élément CDA "authenticator"
* Mapping 2 : entre l’élément CDA "authenticator" et l’élément FHIR "Composition.attester"
 |
| [Mapping ValueSet AdministrativeGender](ConceptMap-mappingAdministrativeGender.md) | Mapping entre les codes du ValueSet FHIR AdministrativeGender et ceux du ValueSet JDV_J143-AdministrativeGender-CISIS établi par ce ConceptMap. |

### Modèles logiques métier des sections 

| | |
| :--- | :--- |
| [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md) | Eléments métier du corps d’un document |
| [* Section](StructureDefinition-Section.md) | Modèle logique métier : Section |
| [Acte d'imagerie](StructureDefinition-FrActeImagerie.md) | Section Acte d’imagerie |
| [Addendum](StructureDefinition-FrAddendum.md) | Section Addendum |
| [Allergies et hypersensibilités](StructureDefinition-FrAllergiesEtHypersensibilites.md) | Section Allergies et hypersensibilités |
| [Antécédents familiaux](StructureDefinition-FrAntecedentsFamiliaux.md) | Section Antécédents familiaux |
| [Antécédents médicaux](StructureDefinition-FrAntecedentsMedicaux.md) | Section Antécédents médicaux |
| [Antécédents obstétricaux](StructureDefinition-FrHistoriqueDesGrossesses.md) | Section Historique des grossesses |
| [Codes à barres](StructureDefinition-FrCodesAbarres.md) | Section Codes à barres |
| [Commentaire (non-codé)](StructureDefinition-FrCommentaireNonCode.md) | Modèle logique métier de la section Commentaire (non-codé) |
| [Comparaison d'examens d'imagerie](StructureDefinition-FrComparaisonExamensImagerie.md) | Section Comparaison d’examens d’imagerie |
| [Complications Acte](StructureDefinition-FrComplicationsActe.md) | Section Complications au cours de l’acte |
| [Compte rendu de biologie de 1er niveau](StructureDefinition-FrCRBIOChapitre.md) | Section Compte rendu de biologie de 1er niveau |
| [Conclusion examen d'imagerie](StructureDefinition-FrConclusionExamenImagerie.md) | Section Conclusion examen d’imagerie |
| [Demande d'examen d'imagerie](StructureDefinition-FrDemandeExamenImagerie.md) | Section Demande d’examen d’imagerie |
| [Directives-anticipées](StructureDefinition-FrDirectivesAnticipees.md) | Section Directives anticipées |
| [Dispensation médicaments](StructureDefinition-FrDispensationMedicaments.md) | Section Dispensation médicaments |
| [Dispositifs medicaux](StructureDefinition-FrDispositifsMedicaux.md) | Section Dispositifs medicaux |
| [Document PDF copie](StructureDefinition-FrDocumentPDFCopie.md) | Section Document PDF-copie |
| [Documents ajoutés](StructureDefinition-FrDocumentsAjoutes.md) | Section Documents ajoutés |
| [Education du patient](StructureDefinition-FrEducationPatient.md) | Section Education du patient |
| [Effets indesirables](StructureDefinition-FrEffetsIndesirables.md) | Section Effets indesirables |
| [Exposition aux radiations](StructureDefinition-FrExpositionRadiations.md) | Section Exposition aux radiations |
| [Facteurs de risque professionnels non code](StructureDefinition-FrFacteursDeRisqueProfessionnelsNonCode.md) | Section Facteurs de risque professionnels non code |
| [Fonctions physiques](StructureDefinition-FrFonctionsPhysiques.md) | Section Fonctions physiques |
| [Habitus et modes de vie](StructureDefinition-FrHabitusModeDeVie.md) | Section Habitus et modes de vie |
| [Historique des actes](StructureDefinition-FrHistoriqueDesActes.md) | Section Historique des actes |
| [Informations Cliniques](StructureDefinition-FrInformationsCliniques.md) | Section Informations Cliniques |
| [Object Catalog](StructureDefinition-FrObjectCatalog.md) | Section Object Catalog |
| [Plan de soins](StructureDefinition-FrPlanSoins.md) | Section Plan de soins |
| [Prescription de dispositifs médicaux](StructureDefinition-FrPrescriptionDispositifsMedicaux.md) | Section Prescription de dispositifs médicaux |
| [Prescription de médicaments](StructureDefinition-FrPrescriptionMedicaments.md) | Section Prescription de médicaments |
| [Problèmes actifs](StructureDefinition-FrProblemesActifs.md) | Section Problèmes actifs |
| [Raison de la recommandation](StructureDefinition-FrRaisonRecommandation.md) | Section Raison de la recommandation |
| [Raison de la recommandation (non codée)](StructureDefinition-FrRaisonRecommandationNonCode.md) | Section Raison de la recommandation (non codée) |
| [Résultats](StructureDefinition-FrResultats.md) | Section Résultats |
| [Résultats d'examens](StructureDefinition-FrResultatsExamens.md) | Section Résultats d’examens |
| [Résultats d'examens (non codée)](StructureDefinition-FrResultatsExamensNonCode.md) | Section Résultats d’examens (non codée) |
| [Résultats d'événements](StructureDefinition-FrResultatsEvenements.md) | Section Résultats d’événements |
| [Résultats de laboratoire de biologie de seconde intention](StructureDefinition-FrResultatsLaboratoireBiologieSecondeIntention.md) | Modèle logique métier de la section Résultats de laboratoire de biologie de seconde intention |
| [Section Points de vigilance (non-codés)](StructureDefinition-FrPointsDeVigilancesNonCode.md) | Section Points de vigilance (non-codés) |
| [Signes vitaux](StructureDefinition-FrSignesVitaux.md) | Section Signes vitaux |
| [Sous-chapitre du compte rendu d'examens de biologie (section de 2nd niveau)](StructureDefinition-FrCRBIOSousChapitre.md) | Modèle logique métier de la section Sous-chapitre du compte rendu d’examens de biologie (section de 2nd niveau) |
| [Statut du document](StructureDefinition-FrStatutDocument.md) | Section Statut du document |
| [Statut fonctionnel](StructureDefinition-FrStatutFonctionnel.md) | Section Statut fonctionnel |
| [Traitement](StructureDefinition-FrTraitement.md) | Entrée Traitement |
| [Traitements administrés](StructureDefinition-FrTraitementsAdministres.md) | Section Traitements administrés |
| [Traitements à la sortie](StructureDefinition-FrTraitementSortie.md) | Section Traitements à la sortie |
| [Vaccinations](StructureDefinition-FrVaccinations.md) | Section Vaccinations |

### Modèles logiques métier des entrées 

| | |
| :--- | :--- |
| [Accident transfusionnel](StructureDefinition-FrAccidentsTransfusionnels.md) | Entrée Accident transfusionnel |
| [Acte](StructureDefinition-FrActe.md) | Entrée Acte |
| [Acte substitution](StructureDefinition-FrActeSubstitution.md) | Entrée Acte substitution |
| [Administration de dérivés du sang](StructureDefinition-FrAdministrationDeDerivesDuSang.md) | Modèle logique métier de l’entrée Administration de dérivés du sang |
| [Administration produit de sante](StructureDefinition-FrAdministrationProduitDeSante.md) | Entrée Administration produit de sante |
| [Allergie, Hypersensibilité non allergique, Intolérance, Idiosyncrasie](StructureDefinition-FrAllergieOuHypersensibilite.md) | Entrée Allergie ou hypersensibilite |
| [Antécédent familial observé](StructureDefinition-FrAntecedentFamilialObserve.md) | Entrée Antécédent familial |
| [Antécédents familiaux](StructureDefinition-FrAntecedentsFamiliauxEntry.md) | Entrée Antécédents familiaux |
| [Autorisation exposition](StructureDefinition-FrAutorisationExposition.md) | Entrée Autorisation exposition |
| [Autorisation substitution](StructureDefinition-FrAutorisationSubstitution.md) | Entrée Autorisation substitution |
| [Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md) | Entrée Batterie d’examens de biologie médicale |
| [Certitude](StructureDefinition-FrCertitude.md) | Entrée Certitude |
| [Commentaire](StructureDefinition-FrCommentaireER.md) | Entrée Commentaire |
| [Criticite](StructureDefinition-FrCriticite.md) | Entrée Criticite |
| [Demande d'examen ou de suivi / Objectif à atteindre](StructureDefinition-FrDemandeExamenOuSuivi.md) | Entrée Demande d’examen ou de suivi / Objectif à atteindre |
| [Directive anticipée](StructureDefinition-FrDirectiveAnticipee.md) | Entrée Directive anticipée |
| [Dispositif médical](StructureDefinition-FrDispositifMedicalEntry.md) | Entrée Dispositif médical |
| [Document attaché](StructureDefinition-FrDocumentAttache.md) | Entrée Document attaché |
| [Dose d'antigène](StructureDefinition-FrDoseAntigene.md) | Entrée Dose d’antigène |
| [Effet indesirable](StructureDefinition-FrEffetIndesirable.md) | Entrée Effet indesirable |
| [En rapport avec la prevention](StructureDefinition-FrEnRapportAvecLaPrevention.md) | Entrée En rapport avec la prevention |
| [En rapport avec un accident travail](StructureDefinition-FrEnRapportAvecAccidentTravail.md) | Entrée En rapport avec un accident travail |
| [En rapport avec une Affection Longue Durée (ALD)](StructureDefinition-FrEnRapportAvecALD.md) | Entrée En rapport avec une Affection Longue Durée (ALD) |
| [Entrée Observation](StructureDefinition-FrObservation.md) | Entrée observation |
| [Evaluation](StructureDefinition-FrEvaluation.md) | Entrée Evaluation |
| [Evaluation Composant](StructureDefinition-FrEvaluationComposant.md) | Entrée Evaluation Composant |
| [Evaluation Composant N2](StructureDefinition-FrEvaluationComposantN2.md) | Entrée Evaluation Composant N2 |
| [Evolution effet indesirable](StructureDefinition-FrEvolutionEffetIndesirable.md) | Entrée Evolution effet indesirable |
| [Evènements indésirables pendant l'hospitalisation](StructureDefinition-FrEvenementIndesirablePendantHospitalisation.md) | Entrée Evènements indésirables pendant l’hospitalisation |
| [Evènements indésirables suite à l'administration de dérivés du sang](StructureDefinition-FrEvenementsIndesirablesSuiteAdministrationDerivesSang.md) | Entrée Evènements indésirables suite à l’administration de dérivés du sang |
| [Examen Imagerie](StructureDefinition-FrExamenImagerie.md) | Entrée DICOM Examen Imagerie |
| [Gravite effet indesirable](StructureDefinition-FrGraviteEffetIndesirable.md) | Entrée Gravite effet indesirable |
| [Groupe de questionnaires d'évalutation](StructureDefinition-FrGroupDeQuestionnairesDevaluation.md) | Entrée Groupe de questionnaires d’évalutation |
| [Habitus Mode de vie](StructureDefinition-FrHabitusModeDeVieEntry.md) | Entrée Habitus Mode de vie |
| [Historique de la grossesse](StructureDefinition-FrHistoriqueGrossesse.md) | Entrée Historique de la grossesse |
| [Hors Autorisation de Mise sur le Marché (AMM)](StructureDefinition-FrHorsAMM.md) | Entrée Hors Autorisation de Mise sur le Marché (AMM) |
| [Identification de micro-organismes multirésistants](StructureDefinition-FrIdentificationDeMicroOrganismesMultiresistants.md) | Entrée Identification de micro-organismes multirésistants |
| [Image illustrative](StructureDefinition-FrImageIllustrative.md) | Entrée Image illustrative. |
| [Imputabilite effet indesirable](StructureDefinition-FrImputabiliteEffetIndesirable.md) | Entrée Imputabilite effet indesirable |
| [Instruction au patient](StructureDefinition-FrInstructionAuPatient.md) | Entrée Instruction au patient |
| [Instructions au dispensateur](StructureDefinition-FrInstructionsAuDispensateur.md) | Entrée Instructions au dispensateur |
| [Instructions au patient](StructureDefinition-FrInstructionsPatient.md) | Entrée Instructions au patient |
| [Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md) | Entrée Isolat microbiologique |
| [Modalité d'entrée](StructureDefinition-FrModaliteEntree.md) | Entrée Modalité d’entrée |
| [Modalité de sortie](StructureDefinition-FrModaliteSortie.md) | Entrée Modalité de sortie |
| [Naissance](StructureDefinition-FrNaissance.md) | Entrée Naissance |
| [Non remboursable](StructureDefinition-FrNonRemboursable.md) | Entrée Non remboursable |
| [Notes du dispensateur](StructureDefinition-FrNotesDispensateur.md) | Entrée Notes du dispensateur |
| [Observation sur la grossesse](StructureDefinition-FrObservationGrossesse.md) | Entrée Observation sur la grossesse |
| [Prescription](StructureDefinition-FrPrescriptionEntry.md) | Entrée Prescription |
| [Problème](StructureDefinition-FrProbleme.md) | Entrée Problème |
| [Produit de santé](StructureDefinition-FrProduitSante.md) | Produit de santé |
| [Prélèvement](StructureDefinition-FrPrelevement.md) | Entrée Prélèvement |
| [Période de renouvellement de la prescription](StructureDefinition-FrPeriodeDeRenouvellement.md) | Entrée Période de renouvellement de la prescription |
| [Quantité de produit](StructureDefinition-FrQuantiteProduit.md) | Entrée Quantité de produit |
| [Quantité exposition](StructureDefinition-FrQuantiteExposition.md) | Entrée Quantité exposition |
| [Rang de la vaccination](StructureDefinition-FrRangVaccination.md) | Entrée Rang de la vaccination |
| [Recherche de micro organismes](StructureDefinition-FrRechercheDeMicroOrganismes.md) | Entrée Recherche de micro organismes |
| [Rencontre](StructureDefinition-FrRencontre.md) | Entrée Rencontre |
| [Resultats](StructureDefinition-FrResultatsEntry.md) | Entrée Resultats |
| [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md) | Entrée Resultats d’examens de biologie medicale |
| [Référence interne](StructureDefinition-FrReferenceInterne.md) | Entrée Référence interne |
| [Référence item plan traitement](StructureDefinition-FrReferenceItemPlanTraitement.md) | Entrée Référence item plan traitement |
| [Référence item prescription](StructureDefinition-FrReferenceItemPrescription.md) | Entrée Référence item prescription |
| [Références externes](StructureDefinition-FrReferencesExternes.md) | Entrée Références externes |
| [Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.md) | Entrée Résultat d’examens de biologie / élement clinique pertinent |
| [Serie imagerie](StructureDefinition-FrSerieImagerie.md) | Entrée Serie imagerie |
| [Signe vital](StructureDefinition-FrSigneVital.md) | Entrée Signe vital |
| [Signe vital observé](StructureDefinition-FrSigneVitalObserve.md) | Entrée Signe vital observé |
| [SOP Instance](StructureDefinition-FrSOPInstance.md) | Entrée SOP Instance |
| [Statut](StructureDefinition-FrStatut.md) | Entrée Statut |
| [Statut clinique du patient](StructureDefinition-FrStatutCliniquePatient.md) | Entrée Statut clinique du patient |
| [Statut du document](StructureDefinition-FrStatutDocumentEntry.md) | Entrée Statut du document |
| [Statut du problème](StructureDefinition-FrStatutProbleme.md) | Entrée Statut du problème. |
| [Synthese medicale sejour](StructureDefinition-FrSyntheseMedicaleSejour.md) | Entrée Synthese medicale sejour |
| [Sévérité](StructureDefinition-FrSeverite.md) | Entrée Sévérité. |
| [Technique imagerie](StructureDefinition-FrTechniqueImagerie.md) | Entrée Technique imagerie |
| [Traitement dispensé](StructureDefinition-FrTraitementDispense.md) | Entrée Traitement dispense |
| [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md) | Entrée Traitement prescrit |
| [Traitement Prescrit Subordonnee](StructureDefinition-FrTraitementPrescritSubordonne.md) | Entrée Traitement prescrit subordonne |
| [Traitement subordonné](StructureDefinition-FrTraitementSubordonne.md) | Entrée Traitement subordonné |
| [Traitements](StructureDefinition-FrTraitements.md) | Section Traitements |
| [Transfert du patient](StructureDefinition-FrTransfertDuPatient.md) | Entrée Transfert du patient |
| [Transfusion de produits sanguins](StructureDefinition-FrTransfusionDeProduitsSanguins.md) | Entrée Transfusion de produits sanguins |
| [Vaccin recommandé](StructureDefinition-FrVaccinRecommande.md) | Entrée Vaccin recommandé |
| [Vaccination](StructureDefinition-FrVaccination.md) | Entrée Vaccination |

### Modèles logiques métier des éléments transversaux 

| | |
| :--- | :--- |
| [Auteur APSR](StructureDefinition-AuteurAPSR.md) | Modèle logique métier de l’élément Auteur APSR* La structure de cet élément est identique à celle de l’élément Auteur
 |
| [Dispositif médical](StructureDefinition-DispositifMedical.md) | Modèle logique métier Dispositif médical |
| [Informant APSR](StructureDefinition-InformantAPSR.md) | Modèle logique métier de l’élément Informant APSR* La structure de cet élément est identique à celle de l’élément Iformateur
 |
| [Laboratoire exécutant](StructureDefinition-LaboratoireExecutant.md) | Modèle logique métier de l’élément Laboratoire exécutant |
| [Participant](StructureDefinition-FrParticipantCorps.md) | Modèle logique métier de l’élément Participant |
| [Participant APSR](StructureDefinition-ParticipantAPSR.md) | Modèle logique métier de l’élément Participant APSR |
| [Patient avec sujet non humain](StructureDefinition-PatientSujetNonHumain.md) | Modèle logique métier de l’élément Patient avec sujet non humain |
| [Performer](StructureDefinition-Performer.md) | Modèle logique métier de l’élément Performer |
| [Sujet](StructureDefinition-Sujet.md) | Modèle logique métier de l’élément Sujet |
| [Sujet non humain](StructureDefinition-SujetNonHumain.md) | Modèle logique métier de l’élément Sujet non humain |
| [Échantillon prélevé](StructureDefinition-EchantillonPreleve.md) | Modèle logique métier Échantillon prélevé |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Résultats d'examen d'imagerie](StructureDefinition-FrResultatsExamenImagerie.md) | Section Résultats d’examen d’imagerie |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR ValueSet Participation Type](ValueSet-fr-doc-vs-participation-type.md) | Type de participation : destinataire |
| [Fr ValueSet RolePriseCharge](ValueSet-fr-doc-vs-role-prise-charge.md) | Pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle). |
| [Fr ValueSet Savoir-faire Profession Chirurgien-Dentiste](ValueSet-fr-doc-vs-savoir-faire-profession-chirurgien-dentiste.md) | Savoir-faire pour la profession 40 (Chirurgien-Dentiste) |
| [Fr ValueSet Savoir-faire Profession Infirmier](ValueSet-fr-doc-vs-savoir-faire-profession-infirmier.md) | Savoir-faire pour la profession 60 (Infirmier) |
| [Fr ValueSet Savoir-faire Profession Pharmacien](ValueSet-fr-doc-vs-savoir-faire-profession-pharmacien.md) | Savoir-faire pour la profession 21 (Pharmacien) |
| [Fr ValueSet Type Savoir-faire Profession Chirurgien-Dentiste](ValueSet-fr-doc-vs-type-savoir-faire-profession-chirurgien-dentiste.md) | Type Savoir-faire pour la profession 40 (Chirurgien-Dentiste) |
| [Fr ValueSet Type Savoir-faire Profession Infirmier](ValueSet-fr-doc-vs-type-savoir-faire-profession-infirmier.md) | Type Savoir-faire pour la profession 60 (Infirmier) |
| [Fr ValueSet Type Savoir-faire Profession Medecin](ValueSet-fr-doc-vs-type-savoir-faire-profession-medecin.md) | Type Savoir-faire pour la profession 10 (Médecin) |
| [Fr ValueSet Type Savoir-faire Profession Pharmacien](ValueSet-fr-doc-vs-type-savoir-faire-profession-pharmacien.md) | Type Savoir-faire pour la profession 21 (Pharmacien) |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [Binary/BIO-CR-BIO-2024.01-Microbiologie-V1](Binary-BIO-CR-BIO-2024.01-Microbiologie-V1.md) |
| [Binary/BIO-CR-BIO-2024.01-glycemie-mole](Binary-BIO-CR-BIO-2024.01-glycemie-mole.md) |
| [Binary/IPS-FR-2024.01](Binary-IPS-FR-2024.01.md) |
| [Binary/LDL-SES-2022.01](Binary-LDL-SES-2022.01.md) |
| [Binary/eDISP-MED-2024.01](Binary-eDISP-MED-2024.01.md) |
| [Binary/eP-MED-DM-2024.01-PosoNonStruct](Binary-eP-MED-DM-2024.01-PosoNonStruct.md) |
| [Binary/eP-MED-DM-2024.01-PosoStruct](Binary-eP-MED-DM-2024.01-PosoStruct.md) |

