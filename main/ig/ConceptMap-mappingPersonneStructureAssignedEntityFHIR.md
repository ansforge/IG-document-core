# Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureAssignedEntityFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)" |

 
Ce ConceptMap de l’élément PersonneStructure présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "PersonneStructure" et l’élément CDA "assignedEntity"
* Mapping 2 : entre l’élément CDA "assignedEntity" et le profil FHIR "FrPractitionerRoleDocument"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle métier - Personne et/ou Structure](StructureDefinition-PersonneStructure.md) to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity`

* **Source Code**: PersonneStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity
* **Source Code**: PersonneStructure.personne.identifiantPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.id
* **Source Code**: PersonneStructure.personne.professionRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.code
* **Source Code**: PersonneStructure.personne.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.addr
* **Source Code**: PersonneStructure.personne.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.telecom
* **Source Code**: PersonneStructure.personne.IdentitePersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.assignedPerson
* **Source Code**: PersonneStructure.personne.IdentitePersonne.nomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.assignedPerson.name.family
* **Source Code**: PersonneStructure.personne.IdentitePersonne.prenomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.assignedPerson.name.given
* **Source Code**: PersonneStructure.personne.IdentitePersonne.civilite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.assignedPerson.name.prefix
* **Source Code**: PersonneStructure.personne.IdentitePersonne.titre
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.assignedPerson.name.suffix
* **Source Code**: PersonneStructure.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.representedOrganization
* **Source Code**: PersonneStructure.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.representedOrganization.id
* **Source Code**: PersonneStructure.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.representedOrganization.name
* **Source Code**: PersonneStructure.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.representedOrganization.addr
* **Source Code**: PersonneStructure.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.representedOrganization.telecom
* **Source Code**: PersonneStructure.structure.secteurActivite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedEntity.representedOrganization.standardIndustryClassCode

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity` to [Fr PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md)

* **Source Code**: assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole
  * **Commentaire**: 
* **Source Code**: assignedEntity.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.practitioner.identifier
  * **Commentaire**: PractitionerRole.practitioner.resolve().ofType(Practitioner)
* **Source Code**: assignedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.qualification.code
  * **Commentaire**: 
* **Source Code**: assignedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.address
  * **Commentaire**: 
* **Source Code**: assignedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.telecom
  * **Commentaire**: 
* **Source Code**: assignedEntity.assignedPerson.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name
  * **Commentaire**: 
* **Source Code**: assignedEntity.assignedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.family
  * **Commentaire**: 
* **Source Code**: assignedEntity.assignedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.given
  * **Commentaire**: 
* **Source Code**: assignedEntity.assignedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.prefix
  * **Commentaire**: 
* **Source Code**: assignedEntity.assignedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.suffix
  * **Commentaire**: 
* **Source Code**: assignedEntity.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization
  * **Commentaire**: PractitionerRole.organization.resolve().ofType(Organization)
* **Source Code**: assignedEntity.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.identifier
  * **Commentaire**: 
* **Source Code**: assignedEntity.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.name
  * **Commentaire**: 
* **Source Code**: assignedEntity.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.address
  * **Commentaire**: 
* **Source Code**: assignedEntity.representedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.telecom
  * **Commentaire**: 
* **Source Code**: assignedEntity.representedOrganization.standardIndustryClassCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.type
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPersonneStructureAssignedEntityFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureAssignedEntityFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (AssignedEntity)\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (AssignedEntity)\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-20T17:15:49+00:00",
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
  "description" : "Ce ConceptMap de l'élément PersonneStructure présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"PersonneStructure\\\" et l'élément CDA \\\"assignedEntity\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedEntity\\\" et le profil FHIR \\\"FrPractitionerRoleDocument\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity",
      "element" : [
        {
          "code" : "PersonneStructure",
          "target" : [
            {
              "code" : "assignedEntity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.identifiantPersonne",
          "target" : [
            {
              "code" : "assignedEntity.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.professionRole",
          "target" : [
            {
              "code" : "assignedEntity.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.adresse",
          "target" : [
            {
              "code" : "assignedEntity.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedEntity.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.nomPersonne",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.prenomPersonne",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.civilite",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.titre",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.structure",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.structure.identifiantStructure",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.structure.nomStructure",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.structure.adresse",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.structure.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.structure.secteurActivite",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.standardIndustryClassCode",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-entity",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document",
      "element" : [
        {
          "code" : "assignedEntity",
          "target" : [
            {
              "code" : "PractitionerRole",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.id",
          "target" : [
            {
              "code" : "PractitionerRole.practitioner.identifier",
              "equivalence" : "equivalent",
              "comment" : "PractitionerRole.practitioner.resolve().ofType(Practitioner)"
            }
          ]
        },
        {
          "code" : "assignedEntity.code",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.qualification.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.addr",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.telecom",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.assignedPerson.name",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.assignedPerson.name.family",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.assignedPerson.name.given",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.assignedPerson.name.prefix",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.assignedPerson.name.suffix",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.representedOrganization",
          "target" : [
            {
              "code" : "PractitionerRole.Organization",
              "equivalence" : "equivalent",
              "comment" : "PractitionerRole.organization.resolve().ofType(Organization)"
            }
          ]
        },
        {
          "code" : "assignedEntity.representedOrganization.id",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.representedOrganization.name",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.representedOrganization.addr",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.representedOrganization.telecom",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedEntity.representedOrganization.standardIndustryClassCode",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.type",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
