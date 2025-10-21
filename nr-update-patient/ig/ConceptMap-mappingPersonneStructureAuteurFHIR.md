# Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureAuteurFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" |

 
Ce ConceptMap de l’élément PersonneStructureAuteur présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "PersonneStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrPractitionerRoleDocument"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author`

* **Source Code**: PersonneStructureAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor
* **Source Code**: PersonneStructureAuteur.personne.identifiantPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.id
* **Source Code**: PersonneStructureAuteur.personne.professionRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.code
* **Source Code**: PersonneStructureAuteur.personne.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.addr
* **Source Code**: PersonneStructureAuteur.personne.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.telecom
* **Source Code**: PersonneStructureAuteur.personne.IdentitePersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedPerson
* **Source Code**: PersonneStructureAuteur.personne.IdentitePersonne.nomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedPerson.name.family
* **Source Code**: PersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedPerson.name.given
* **Source Code**: PersonneStructureAuteur.personne.IdentitePersonne.civilite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedPerson.name.prefix
* **Source Code**: PersonneStructureAuteur.personne.IdentitePersonne.titre
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedPerson.name.suffix
* **Source Code**: PersonneStructureAuteur.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization
* **Source Code**: PersonneStructureAuteur.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.id
* **Source Code**: PersonneStructureAuteur.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.name
* **Source Code**: PersonneStructureAuteur.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.addr
* **Source Code**: PersonneStructureAuteur.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.telecom
* **Source Code**: PersonneStructureAuteur.structure.secteurActivite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.standardIndustryClassCode

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author` to [Fr PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md)

* **Source Code**: assignedAuthor
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner
  * **Commentaire**: PractitionerRole.practitioner.resolve().ofType(Practitioner)
* **Source Code**: assignedAuthor.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.identifier
  * **Commentaire**: 
* **Source Code**: assignedAuthor.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.qualification.code
  * **Commentaire**: 
* **Source Code**: assignedAuthor.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.address
  * **Commentaire**: 
* **Source Code**: assignedAuthor.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.telecom
  * **Commentaire**: 
* **Source Code**: assignedAuthor.assignedPerson.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name
  * **Commentaire**: 
* **Source Code**: assignedAuthor.assignedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.family
  * **Commentaire**: 
* **Source Code**: assignedAuthor.assignedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.given
  * **Commentaire**: 
* **Source Code**: assignedAuthor.assignedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.prefix
  * **Commentaire**: 
* **Source Code**: assignedAuthor.assignedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Practitioner.name.suffix
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization
  * **Commentaire**: PractitionerRole.organization.resolve().ofType(Organization)
* **Source Code**: assignedAuthor.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.identifier
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.name
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.address
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.telecom
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization.standardIndustryClassCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PractitionerRole.Organization.type
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPersonneStructureAuteurFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureAuteurFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-21T14:55:40+00:00",
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
  "description" : "Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"PersonneStructureAuteur\\\" et l'élément CDA \\\"assignedAuthor\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedAuthor\\\" et le profil FHIR \\\"FrPractitionerRoleDocument\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author",
      "element" : [
        {
          "code" : "PersonneStructureAuteur",
          "target" : [
            {
              "code" : "assignedAuthor",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.identifiantPersonne",
          "target" : [
            {
              "code" : "assignedAuthor.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.professionRole",
          "target" : [
            {
              "code" : "assignedAuthor.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.adresse",
          "target" : [
            {
              "code" : "assignedAuthor.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedAuthor.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.IdentitePersonne",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.IdentitePersonne.nomPersonne",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.IdentitePersonne.civilite",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.personne.IdentitePersonne.titre",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.structure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.structure.identifiantStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.structure.nomStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.structure.adresse",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.structure.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructureAuteur.structure.secteurActivite",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.standardIndustryClassCode",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document",
      "element" : [
        {
          "code" : "assignedAuthor",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner",
              "equivalence" : "equivalent",
              "comment" : "PractitionerRole.practitioner.resolve().ofType(Practitioner)"
            }
          ]
        },
        {
          "code" : "assignedAuthor.id",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.code",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.qualification.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.addr",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.telecom",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.family",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.given",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.prefix",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.suffix",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization",
          "target" : [
            {
              "code" : "PractitionerRole.Organization",
              "equivalence" : "equivalent",
              "comment" : "PractitionerRole.organization.resolve().ofType(Organization)"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.id",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.name",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.addr",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.telecom",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.standardIndustryClassCode",
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
