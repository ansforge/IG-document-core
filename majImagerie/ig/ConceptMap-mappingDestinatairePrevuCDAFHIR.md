# Mapping Métier/CDA/FHIR : "Destinataire prévu" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Destinataire prévu"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Destinataire prévu" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingDestinatairePrevuCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:Mapping Métier/CDA/FHIR : "Destinataire prévu" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "destinataire" et l’élément CDA "informationRecipient"
* Mapping 2 : entre l’élément CDA "informationRecipient" et l’extension FHIR "InformationRecipientExtension"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Destinataire prévu](StructureDefinition-fr-lm-destinataire-prevu.md) to [CDA - informationRecipient](StructureDefinition-fr-cda-information-recipient.md)

* **Code source**: FRLMDestinatairePrevu
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: informationRecipient
  * **Commentaire**: 
* **Code source**: FRLMDestinatairePrevu.destinataire
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: informationRecipient.intendedRecipient
  * **Commentaire**: L'élément destinataire est de type PersonneStructure.

-------

**Groupe 2**Mapping de [CDA - informationRecipient](StructureDefinition-fr-cda-information-recipient.md) to [Information Recipient Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-information-recipient-extension.html)

* **Code source**: informationRecipient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:InformationRecipientExtension
* **Code source**: informationRecipient.intendedRecipient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:InformationRecipientExtension.extension:party.PractitionerRole
* **Code source**: informationRecipient.intendedRecipient.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.identifier
* **Code source**: informationRecipient.intendedRecipient.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.address
* **Code source**: informationRecipient.intendedRecipient.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.telecom
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.name
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.name.family
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.name.given
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.name.prefix
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Practitioner.name.suffix
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Organization
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Organization.identifier
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Organization.name
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Organization.telecom
* **Code source**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:party.PractitionerRole.Organization.address



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingDestinatairePrevuCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingDestinatairePrevuCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Destinataire prévu\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Destinataire prévu\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T10:47:15+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"destinataire\\\" et l'élément CDA \\\"informationRecipient\\\"\n - Mapping 2 : entre l'élément CDA \\\"informationRecipient\\\" et l'extension FHIR \\\"InformationRecipientExtension\\\" ",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "group" : [
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-destinataire-prevu",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-information-recipient",
      "element" : [
        {
          "code" : "FRLMDestinatairePrevu",
          "target" : [
            {
              "code" : "informationRecipient",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMDestinatairePrevu.destinataire",
          "target" : [
            {
              "code" : "informationRecipient.intendedRecipient",
              "equivalence" : "equivalent",
              "comment" : "L'élément destinataire est de type PersonneStructure."
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-information-recipient",
      "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension",
      "element" : [
        {
          "code" : "informationRecipient",
          "target" : [
            {
              "code" : "extension:InformationRecipientExtension",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient",
          "target" : [
            {
              "code" : "extension:InformationRecipientExtension.extension:party.PractitionerRole",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.id",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.addr",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.telecom",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.name",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.name.family",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.name.given",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.name.prefix",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.name.suffix",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Practitioner.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Organization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.id",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.name",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.telecom",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.addr",
          "target" : [
            {
              "code" : "extension:party.PractitionerRole.Organization.address",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
