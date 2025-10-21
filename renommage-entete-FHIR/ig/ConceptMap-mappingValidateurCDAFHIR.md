# Mapping Métier/CDA/FHIR : "Validateur" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Validateur"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Validateur" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingValidateurCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Validateur" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "validateur" et l’élément CDA "authenticator"
* Mapping 2 : entre l’élément CDA "authenticator" et l’élément FHIR "Composition.attester"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle logique métier - FR LM Validateur](StructureDefinition-fr-lm-validateur.md) to [CDA - authenticator](StructureDefinition-fr-cda-authenticator.md)

* **Source Code**: FRLMValidateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: authenticator
  * **Commentaire**: 
* **Source Code**: FRLMValidateur.dateHeureAttestationValidite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: authenticator.time
  * **Commentaire**: 
* **Source Code**: FRLMValidateur.validateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: authenticator.assignedEntity
  * **Commentaire**: L'élément validateur est de type : PersonneStructure

-------

**Group 2**Mapping from [CDA - authenticator](StructureDefinition-fr-cda-authenticator.md) to [FR Composition Document](StructureDefinition-fr-composition-document.md)

* **Source Code**: authenticator
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester
  * **Commentaire**: attester.where(mode='professional')
* **Source Code**: authenticator.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.time
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole
  * **Commentaire**: attester.party.resolve().ofType(PractitionerRole)
* **Source Code**: authenticator.assignedEntity.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.identifier
  * **Commentaire**: attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()
* **Source Code**: authenticator.assignedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.qualification.code
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.address
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.telecom
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name.family
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name.given
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name.prefix
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Practitioner.name.suffix
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization
  * **Commentaire**: attester.party.resolve().ofType(PractitionerRole).organization.resolve()
* **Source Code**: authenticator.assignedEntity.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.identifier
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.name
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.representedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.telecom
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.address
  * **Commentaire**: 
* **Source Code**: authenticator.assignedEntity.representedOrganization.standardIndustryClassCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.attester.party.PractitionerRole.Organization.type
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingValidateurCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingValidateurCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Validateur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Validateur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-21T22:51:41+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"validateur\\\" et l'élément CDA \\\"authenticator\\\"\n - Mapping 2 : entre l'élément CDA \\\"authenticator\\\" et l'élément FHIR \\\"Composition.attester\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-validateur",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authenticator",
      "element" : [
        {
          "code" : "FRLMValidateur",
          "target" : [
            {
              "code" : "authenticator",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMValidateur.dateHeureAttestationValidite",
          "target" : [
            {
              "code" : "authenticator.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMValidateur.validateur",
          "target" : [
            {
              "code" : "authenticator.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément validateur est de type : PersonneStructure"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authenticator",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
      "element" : [
        {
          "code" : "authenticator",
          "target" : [
            {
              "code" : "Composition.attester",
              "equivalence" : "equivalent",
              "comment" : "attester.where(mode='professional')"
            }
          ]
        },
        {
          "code" : "authenticator.time",
          "target" : [
            {
              "code" : "Composition.attester.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole",
              "equivalence" : "equivalent",
              "comment" : "attester.party.resolve().ofType(PractitionerRole)"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.id",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.identifier",
              "equivalence" : "equivalent",
              "comment" : "attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.code",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.qualification.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.addr",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.telecom",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.name",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.name.family",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.name.given",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.name.prefix",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.name.suffix",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.representedOrganization",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization",
              "equivalence" : "equivalent",
              "comment" : "attester.party.resolve().ofType(PractitionerRole).organization.resolve()"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.representedOrganization.id",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.representedOrganization.name",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.representedOrganization.telecom",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.representedOrganization.addr",
          "target" : [
            {
              "code" : "Composition.attester.party.PractitionerRole.Organization.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authenticator.assignedEntity.representedOrganization.standardIndustryClassCode",
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
