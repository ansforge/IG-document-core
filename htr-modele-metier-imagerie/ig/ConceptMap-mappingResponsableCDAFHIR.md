# Mapping Métier/CDA/FHIR : "Responsable du document" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Responsable du document"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Responsable du document" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingResponsableCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:Mapping Métier/CDA/FHIR : "Responsable du document" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "responsable" et l’élément CDA "legalAuthenticator"
* Mapping 2 : entre l’élément CDA "legalAuthenticator" et l’élément FHIR "Composition.attester"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle métier - Responsable du document](StructureDefinition-Responsable.md) to [CDA - legalAuthenticator](StructureDefinition-fr-core-legal-authenticator.md)

* **Source Code**: Responsable
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: legalAuthenticator
  * **Commentaire**: 
* **Source Code**: Responsable.dateHeureAttestationPriseResponsabilite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: legalAuthenticator.time
  * **Commentaire**: 
* **Source Code**: Responsable.responsable
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: legalAuthenticator.assignedEntity
  * **Commentaire**: L'élément responsable est de type PersonneStructure.

-------

**Group 2**Mapping from [CDA - legalAuthenticator](StructureDefinition-fr-core-legal-authenticator.md) to [Fr Composition Document](StructureDefinition-fr-composition-document.md)

* **Source Code**: legalAuthenticator
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester
  * **Commentaire**: attester.where(mode='legal')
* **Source Code**: legalAuthenticator.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.time
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole
  * **Commentaire**: attester.party.resolve().ofType(PractitionerRole)
* **Source Code**: legalAuthenticator.assignedEntity.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.Practitioner.identifier
  * **Commentaire**: attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()
* **Source Code**: legalAuthenticator.assignedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.qualification.code
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.address
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.telecom
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name.family
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name.given
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.Practitioner.name.prefix
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name.suffix
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization
  * **Commentaire**: attester.party.resolve().ofType(PractitionerRole).organization.resolve()
* **Source Code**: legalAuthenticator.assignedEntity.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.identifier
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.name
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.representedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.telecom
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.address
  * **Commentaire**: 
* **Source Code**: legalAuthenticator.assignedEntity.representedOrganization.standardIndustryClassCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.type
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingResponsableCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingResponsableCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Responsable du document\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Responsable du document\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"responsable\\\" et l'élément CDA \\\"legalAuthenticator\\\"\n - Mapping 2 : entre l'élément CDA \\\"legalAuthenticator\\\" et l'élément FHIR \\\"Composition.attester\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Responsable",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-legal-authenticator",
      "element" : [
        {
          "code" : "Responsable",
          "target" : [
            {
              "code" : "legalAuthenticator",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Responsable.dateHeureAttestationPriseResponsabilite",
          "target" : [
            {
              "code" : "legalAuthenticator.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Responsable.responsable",
          "target" : [
            {
              "code" : "legalAuthenticator.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément responsable est de type PersonneStructure."
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-legal-authenticator",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
      "element" : [
        {
          "code" : "legalAuthenticator",
          "target" : [
            {
              "code" : "Composition.attester",
              "equivalence" : "equivalent",
              "comment" : "attester.where(mode='legal')"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.time",
          "target" : [
            {
              "code" : "Composition.attester.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole",
              "equivalence" : "equivalent",
              "comment" : "attester.party.resolve().ofType(PractitionerRole)"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.id",
          "target" : [
            {
              "code" : "Composition.attester.party.Practitioner.identifier",
              "equivalence" : "equivalent",
              "comment" : "attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.code",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.qualification.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.addr",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.telecom",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.name",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.name.family",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.name.given",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.name.prefix",
          "target" : [
            {
              "code" : "Composition.attester.party.Practitioner.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.name.suffix",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.representedOrganization",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization",
              "equivalence" : "equivalent",
              "comment" : "attester.party.resolve().ofType(PractitionerRole).organization.resolve()"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.representedOrganization.id",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.representedOrganization.name",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.representedOrganization.telecom",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.representedOrganization.addr",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "legalAuthenticator.assignedEntity.representedOrganization.standardIndustryClassCode",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.type",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
