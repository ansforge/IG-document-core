# Mapping Métier/CDA/FHIR : "Destinataire prévu" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Destinataire prévu"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Destinataire prévu" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingDestinatairePrevuCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Destinataire prévu" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "destinataire" et l’élément CDA "informationRecipient"
* Mapping 2 : entre l’élément CDA "informationRecipient" et l’extension FHIR "InformationRecipientExtension"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DestinatairePrevu` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-information-recipient`

* **Source Code**: DestinatairePrevu
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: informationRecipient
  * **Commentaire**: 
* **Source Code**: DestinatairePrevu.destinataire
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: informationRecipient.intendedRecipient
  * **Commentaire**: L'élément destinataire est de type PersonneStructure.

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-information-recipient` to [Information Recipient Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-information-recipient-extension.html)

* **Source Code**: informationRecipient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:InformationRecipientExtension
* **Source Code**: informationRecipient.intendedRecipient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:InformationRecipientExtension.extension:party.PractitionerRole
* **Source Code**: informationRecipient.intendedRecipient.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.identifier
* **Source Code**: informationRecipient.intendedRecipient.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.address
* **Source Code**: informationRecipient.intendedRecipient.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.telecom
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.name
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.name.family
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.name.given
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.name.prefix
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Practitioner.name.suffix
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Organization
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Organization.identifier
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Organization.name
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Organization.telecom
* **Source Code**: informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:party.PractitionerRole.Organization.address



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
  "date" : "2025-10-21T08:14:34+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DestinatairePrevu",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-information-recipient",
      "element" : [
        {
          "code" : "DestinatairePrevu",
          "target" : [
            {
              "code" : "informationRecipient",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DestinatairePrevu.destinataire",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-information-recipient",
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
