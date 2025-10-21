# Artifacts Summary - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Modèle logique métier 

| | |
| :--- | :--- |
| [Modèle logique métier - FR LM Auteur](StructureDefinition-fr-lm-auteur.md) | Auteur du document : ce peut être un professionnel, un patient/usager ou un système.* Pour un professionnel ou un système, la structure de rattachement doit être précisée.
 |
| [Modèle logique métier - FR LM Consentement](StructureDefinition-fr-lm-consentement.md) | Permet de documenter qu’un consentement éclairé a été obtenu et d’indiquer quel type de consentement a été fourni. |
| [Modèle logique métier - FR LM Destinataire prévu](StructureDefinition-fr-lm-destinataire-prevu-document.md) | Personne déclarée comme destinataire prévu du document.* Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s). Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l’envoyer à d’autres destinataires.
 |
| [Modèle logique métier - FR LM Document de référence](StructureDefinition-fr-lm-document-reference.md) | Référence un document existant (à remplacer ou transformé). |
| [Modèle logique métier - FR LM En-tête document](StructureDefinition-fr-lm-entete-document.md) | Eléments de l’entête d’un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc…). |
| [Modèle logique métier - FR LM Informateur](StructureDefinition-fr-lm-informateur.md) | Informateur (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d’urgence, aidant, aidé. |
| [Modèle logique métier - FR LM Opérateur de saisie](StructureDefinition-fr-lm-operateur-saisie.md) | Opérateur de saisie de la totalité ou d’une partie du contenu du document. |
| [Modèle logique métier - FR LM Participant](StructureDefinition-fr-lm-participant.md) | Personne/Structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. |
| [Modèle logique métier - FR LM Patient Usager](StructureDefinition-fr-lm-patient-usager.md) | Patient/Usager concerné par le document. |
| [Modèle logique métier - FR LM Personne et/ou Structure](StructureDefinition-fr-lm-personne-structure.md) | Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). |
| [Modèle logique métier - FR LM Personne et/ou Structure Auteur](StructureDefinition-fr-lm-personne-structure-auteur.md) | Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). |
| [Modèle logique métier - FR LM Prescription](StructureDefinition-fr-lm-prescription.md) | Association à une prescription à l’origine de l’acte dont résulte le document. |
| [Modèle logique métier - FR LM Prise en charge](StructureDefinition-fr-lm-prise-en-charge.md) | Association du document à une prise en charge du patient/usager par un professionnel ou par une structure.* Exemples : 
* Dans une structure hospitalière, cette prise en charge est une hospitalisation complète ou partielle, des actes et soins externes, une consultation, etc.
* Dans un cabinet, cette prise en charge est une consultation ou des actes et soins.
 
* Pour un document d’expression personnelle du patient ou pour un document élaboré sans la présence du patient (ex : synthèse médicale) ou pour un document produit via un SNR, la prise en charge n’a pas de signification. Dans ce cas, on ne renseignera que les données obligatoires : date de prise en charge (avec nulllFlavor possible) et secteur d’activité.
 |
| [Modèle logique métier - FR LM Responsable](StructureDefinition-fr-lm-responsable.md) | Représente le responsable du document, qui est :* soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel.
* soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …).
* soit le patient/usager responsable du document d’expression personnelle
* soit le SNR responsable du document produit via ce SNR.
* Soit le Dossier Pharmaceutique (DP) responsable des documents qu’il produit
 |
| [Modèle logique métier - FR LM Structure conservation](StructureDefinition-fr-lm-structure-conservation.md) | Structure chargée de la conservation du document, c’est-à-dire de garder physiquement le document qui lui est confié tout en garantissant son cycle de vie. |
| [Modèle logique métier - FR LM Système / Structure](StructureDefinition-fr-lm-systeme-structure-auteur.md) | Système auteur du document |
| [Modèle logique métier - FR LM Validateur](StructureDefinition-fr-lm-validateur.md) | Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N’est pas utilisé dans un document d’expression personnelle du patient/usager et un document produit par un système. |
| [Modèle logique métier - FR LM Évènement](StructureDefinition-fr-lm-evenement.md) | Évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l’évènement principal avec obligatoirement une date de début et un exécutant. |

### Eléments CDA 

| | |
| :--- | :--- |
| [CDA - assignedAuthor](StructureDefinition-fr-cda-assigned-author.md) | L’élément de l’en-tête du CDA assignedAuthor contient les éléments permettant de décrire l’auteur. |
| [CDA - assignedCustodian](StructureDefinition-fr-cda-assigned-custodian.md) | L’élément de l’en-tête du CDA assignedCustodian contient l’élément representedCustodianOrganization caractérisant la structure conservant le document. |
| [CDA - assignedEntity](StructureDefinition-fr-cda-assigned-entity.md) | L’élément de l’en-tête du CDA assignedEntity est utilisé dans les éléments suivants : dataEnterer, informant, legalAuthenticator, authenticator, performer, responsibleParty et encounterParticipant. |
| [CDA - assignedPerson](StructureDefinition-fr-cda-assigned-person.md) | L’élément de l’en-tête du CDA assignedPerson permet de décrire une personne physique. |
| [CDA - associatedEntity](StructureDefinition-fr-cda-associated-entity.md) | L’élément de l’en-tête du CDA associatedEntity permet de représenter les caractéristiques du professionnel et/ou de l’établissement participant. |
| [CDA - authenticator](StructureDefinition-fr-cda-authenticator.md) | L’élément de l’en-tête du CDA authenticator permet de représenter le professionnel (personne physique) attestant la validité du contenu du document. |
| [CDA - author](StructureDefinition-fr-cda-author.md) | L’élément de l’en-tête du CDA author permet d’enregistrer un auteur du document. |
| [CDA - authoringDevice](StructureDefinition-fr-cda-authoring-device.md) | L’élément de l’en-tête du CDA authoringDevice contient les informations complémentaires si l’auteur est un système. |
| [CDA - authorization](StructureDefinition-fr-cda-authorization.md) | L’élément de l’en-tête du CDA authorization permet de documenter qu’un consentement éclairé a été obtenu et d’indiquer quel type de consentement a été fourni. |
| [CDA - clinicalDocument](StructureDefinition-fr-cda-clinical-document.md) | L’élément de l’en-tête CDA ‘ClinicalDocument’ est l’élément racine d’un document médical. |
| [CDA - componentOf](StructureDefinition-fr-cda-component-of.md) | L’élément de l’en-tête du CDA componentOf permet d’associer le document à une prise en charge du patient/usager. |
| [CDA - custodian](StructureDefinition-fr-cda-custodian.md) | L’élément de l’en-tête du CDA custodian permet de représenter la structure chargée de la conservation du document. |
| [CDA - dataEnterer](StructureDefinition-fr-cda-data-enterer.md) | L’élément de l’en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document. |
| [CDA - documentationOf](StructureDefinition-fr-cda-documentation-of.md) | L’élément de l’en-tête du CDA documentationOf permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l’évènement principal avec obligatoirement une date de début et un exécutant. |
| [CDA - encompassingEncounter](StructureDefinition-fr-cda-encompassing-encounter.md) | L’élément de l’en-tête du CDA encompassingEncounter permet de décrire la prise en charge du patient/usager par un professionnel ou par une structure. |
| [CDA - encounterParticipant](StructureDefinition-fr-cda-encounter-participant.md) | L’élément de l’en-tête du CDA encounterParticipant permet de représenter la personne impliquée dans la prise en charge du patient/usager, comme par exemple, le professionnel co-responsable, le professionnel ayant fait l’admission ou encore le professionnel ayant donné son avis quant à la prise en charge. |
| [CDA - healthCareFacility](StructureDefinition-fr-cda-health-care-facility.md) | L’élément de l’en-tête du CDA healthCareFacility permet de représenter la structure de prise en charge (cabinet du médecin, hôpital ou clinique, etc.). |
| [CDA - informant](StructureDefinition-fr-cda-informant.md) | L’élément de l’en-tête du CDA informant permet d’identifier un informateur, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée. |
| [CDA - informationRecipient](StructureDefinition-fr-cda-information-recipient.md) | L’élément de l’en-tête du CDA informationRecipient permet d’enregistrer une personne déclarée comme destinataire prévu du document. |
| [CDA - inFulfillmentOf](StructureDefinition-fr-cda-inFulfillment-of.md) | L’élément de l’en-tête du CDA inFulfillmentOf permet d’associer un document à une prescription. |
| [CDA - intendedRecipient](StructureDefinition-fr-cda-intended-recipient.md) | L’élément de l’en-tête du CDA intendedRecipient permet d’enregistrer le destinataire prévu du document. |
| [CDA - legalAuthenticator](StructureDefinition-fr-cda-legal-authenticator.md) | L’élément de l’en-tête du CDA legalAuthenticator permet de représenter les caractéristiques du professionnel et/ou de l’établissement participant. |
| [CDA - Name](StructureDefinition-fr-cda-name.md) | L’élément de l’en-tête du CDA correspond au nom d’une personne physique. |
| [CDA - order](StructureDefinition-fr-cda-order.md) | L’élément de l’en-tête du CDA order permet de représenter la prescription à l’origine de l’acte dont résulte le document. |
| [CDA - parentDocument](StructureDefinition-fr-cda-parent-document.md) | L’élément de l’en-tête du CDA parentDocument permet de représenter le document de référence. |
| [CDA - participant](StructureDefinition-fr-cda-participant.md) | L’élément de l’en-tête du CDA participant permet de représenter toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs. |
| [CDA - patient](StructureDefinition-fr-cda-patient.md) | L’élément de l’en-tête du CDA patient permet de représenter une personne physique. |
| [CDA - patientRole](StructureDefinition-fr-cda-patient-role.md) | L’élément de l’en-tête du CDA patientRole permet de décrire le patient/usager. |
| [CDA - performer](StructureDefinition-fr-cda-performer.md) | L’élément de l’en-tête du CDA performer permet de représenter l’exécutant de l’évènement documenté. Il est obligatoire et son attribut nullFlavor interdit pour l’évènement documenté principal. |
| [CDA - recordTarget](StructureDefinition-fr-cda-record-target.md) | L’élément de l’en-tête du CDA recordTarget permet de représenter le patient/usager concerné par le document. |
| [CDA - relatedDocument](StructureDefinition-fr-cda-related-document.md) | L’élément de l’en-tête du CDA relatedDocument permet de référencer un document existant (à remplacer ou transformé). |
| [CDA - relatedEntity](StructureDefinition-fr-cda-related-entity.md) | L’élément de l’en-tête du CDA relatedEntity permet de décrire : un informateur non professionnel, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée. |
| [CDA - representedCustodianOrganization](StructureDefinition-fr-cda-represented-custodian-organization.md) | L’élément de l’en-tête du CDA representedCustodianOrganization contient les éléments caractérisant la structure conservant le document, à savoir l’identifiant, le nom, les adresses géopostales et de télécommunication. |
| [CDA - representedOrganization](StructureDefinition-fr-cda-represented-organization.md) | L’élément de l’en-tête du CDA representedOrganization permet de représenter la structure pour le compte de laquelle intervient le professionnel. |
| [CDA - serviceEvent](StructureDefinition-fr-cda-service-event.md) | L’élément de l’en-tête du CDA serviceEvent permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. L’occurrence de documentationOf/serviceEvent contenant les données de l’évènement documenté principal doit inclure un élément effectiveTime et un élément performer renseignés, sans recours à l’attribut nullFlavor. |

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
| [Mapping Métier/CDA/FHIR : "Auteur"](ConceptMap-mappingAuteurCDAFHIR.md) | Ce ConceptMap présente deux groupes de mapping :* Mapping 1 : entre le modèle métier "Auteur" et l’élément CDA "author"
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
| [Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"](ConceptMap-mappingPersonneStructureRelatedEntityFHIR.md) | Ce ConceptMap de l’élément PersonneStructure présente trois groupes de mapping:* Mapping 1 : entre le modèle métier "FRLMPersonneStructure" et l’élément CDA "relatedEntity"
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

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR ValueSet Participation Type](ValueSet-fr-doc-vs-participation-type.md) | Type de participation : destinataire |
| [Fr ValueSet RolePriseCharge](ValueSet-fr-doc-vs-role-prise-charge.md) | Pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [BIO-CR-BIO_2024.01_Glycemie_mole](Binary-BIO-CR-BIO-2024.01-glycemie-mole.md) | Compte-rendu d’examens de biologie médicale autoprésentable (BIO-CR-BIO_Glycémie mole_1_2021.01) |
| [BIO-CR-BIO_2024.01_Microbiologie_V1](Binary-BIO-CR-BIO-2024.01-Microbiologie-V1.md) | Compte-rendu d’examens de biologie médicale - exemple Microbiologie (BIO-CR-BIO-2024.01) |
| [IPS-FR](Binary-IPS-FR-2024.01.md) | Volet International Patient Summary - France (IPS-FR_2024.01) |
| [LDL-SES_2022.01](Binary-LDL-SES-2022.01.md) | Document Lettre de liaison à la sortie d’un établissement de soins (LDL-SES_2022.01) |
| [eDISP-MED-2024.01](Binary-eDISP-MED-2024.01.md) | eDispensation de médicaments (eDISP-MED-2024.01) |
| [eP-MED-DM_2024.01_PosoNonStruct](Binary-eP-MED-DM-2024.01-PosoNonStruct.md) | ePrescription de médicaments et/ou de dispositifs médicaux (eP-MED-DM_2024.01) |
| [eP-MED-DM_2024.01_PosoStruct](Binary-eP-MED-DM-2024.01-PosoStruct.md) | ePrescription de médicaments et/ou de dispositifs médicaux (eP-MED-DM_2024.01) |

