# Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureAssignedEntityFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:Mapping Métier/CDA/FHIR : "Personne / Structure (AssignedEntity)" |

 
Ce ConceptMap de l’élément PersonneStructure présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "PersonneStructure" et l’élément CDA "assignedEntity"
* Mapping 2 : entre l’élément CDA "assignedEntity" et le profil FHIR "FrPractitionerRoleDocument"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Personne et/ou Structure](StructureDefinition-fr-lm-personne-structure.md) to [CDA - assignedEntity](StructureDefinition-fr-cda-assigned-entity.md)

* **Code source**: FRLMPersonneStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity
* **Code source**: FRLMPersonneStructure.personne.identifiantPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.id
* **Code source**: FRLMPersonneStructure.personne.professionRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.code
* **Code source**: FRLMPersonneStructure.personne.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.addr
* **Code source**: FRLMPersonneStructure.personne.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.telecom
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.assignedPerson
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.nomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.assignedPerson.name.family
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.prenomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.assignedPerson.name.given
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.civilite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.assignedPerson.name.prefix
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.titre
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.assignedPerson.name.suffix
* **Code source**: FRLMPersonneStructure.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.representedOrganization
* **Code source**: FRLMPersonneStructure.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.representedOrganization.id
* **Code source**: FRLMPersonneStructure.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.representedOrganization.name
* **Code source**: FRLMPersonneStructure.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.representedOrganization.addr
* **Code source**: FRLMPersonneStructure.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.representedOrganization.telecom
* **Code source**: FRLMPersonneStructure.structure.secteurActivite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedEntity.representedOrganization.standardIndustryClassCode

-------

**Groupe 2**Mapping de [CDA - assignedEntity](StructureDefinition-fr-cda-assigned-entity.md) to [FR PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md)

* **Code source**: assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole
  * **Commentaire**: 
* **Code source**: assignedEntity.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.practitioner.identifier
  * **Commentaire**: PractitionerRole.practitioner.resolve().ofType(Practitioner)
* **Code source**: assignedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.qualification.code
  * **Commentaire**: 
* **Code source**: assignedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.address
  * **Commentaire**: 
* **Code source**: assignedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.telecom
  * **Commentaire**: 
* **Code source**: assignedEntity.assignedPerson.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name
  * **Commentaire**: 
* **Code source**: assignedEntity.assignedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.family
  * **Commentaire**: 
* **Code source**: assignedEntity.assignedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.given
  * **Commentaire**: 
* **Code source**: assignedEntity.assignedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.prefix
  * **Commentaire**: 
* **Code source**: assignedEntity.assignedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.suffix
  * **Commentaire**: 
* **Code source**: assignedEntity.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization
  * **Commentaire**: PractitionerRole.organization.resolve().ofType(Organization)
* **Code source**: assignedEntity.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.identifier
  * **Commentaire**: 
* **Code source**: assignedEntity.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.name
  * **Commentaire**: 
* **Code source**: assignedEntity.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.address
  * **Commentaire**: 
* **Code source**: assignedEntity.representedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.telecom
  * **Commentaire**: 
* **Code source**: assignedEntity.representedOrganization.standardIndustryClassCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.type
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
  "date" : "2025-12-05T10:50:54+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-entity",
      "element" : [
        {
          "code" : "FRLMPersonneStructure",
          "target" : [
            {
              "code" : "assignedEntity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.identifiantPersonne",
          "target" : [
            {
              "code" : "assignedEntity.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.professionRole",
          "target" : [
            {
              "code" : "assignedEntity.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.adresse",
          "target" : [
            {
              "code" : "assignedEntity.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedEntity.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.nomPersonne",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.prenomPersonne",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.civilite",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.titre",
          "target" : [
            {
              "code" : "assignedEntity.assignedPerson.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.structure",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.structure.identifiantStructure",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.structure.nomStructure",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.structure.adresse",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.structure.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedEntity.representedOrganization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.structure.secteurActivite",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-entity",
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
