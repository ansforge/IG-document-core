# Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureRelatedEntityFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" |

 
Ce ConceptMap de l’élément PersonneStructure présente trois groupes de mapping: 
* Mapping 1 : entre le modèle métier "PersonneStructure" et l’élément CDA "relatedEntity"
* Mapping 2 : entre l’élément CDA "relatedEntity" et le profil FHIR "FrRelatedPersonDocument"
* Mapping 3 : entre l’élément CDA "relatedEntity" et l’élément FHIR "Patient.contact"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity`

* **Source Code**: PersonneStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity
* **Source Code**: PersonneStructure.personne.professionRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity@classCode
* **Source Code**: PersonneStructure.personne.lien
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.code
* **Source Code**: PersonneStructure.personne.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.addr
* **Source Code**: PersonneStructure.personne.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.telecom
* **Source Code**: PersonneStructure.personne.IdentitePersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.relatedPerson
* **Source Code**: PersonneStructure.personne.IdentitePersonne.nomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.relatedPerson.name.family
* **Source Code**: PersonneStructure.personne.IdentitePersonne.prenomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.relatedPerson.name.given
* **Source Code**: PersonneStructure.personne.IdentitePersonne.civilite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.relatedPerson.name.prefix
* **Source Code**: PersonneStructure.personne.IdentitePersonne.titre
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedEntity.relatedPerson.name.suffix

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity` to [Fr RelatedPerson Document](StructureDefinition-fr-related-person-document.md)

* **Source Code**: relatedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson
* **Source Code**: relatedEntity@classCode
  * **relation**: (not mapped)
* **Source Code**: relatedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.relationship.coding
* **Source Code**: relatedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.address
* **Source Code**: relatedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.telecom
* **Source Code**: relatedEntity.relatedPerson
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.name
* **Source Code**: relatedEntity.relatedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.name.family
* **Source Code**: relatedEntity.relatedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.name.given
* **Source Code**: relatedEntity.relatedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.name.prefix
* **Source Code**: relatedEntity.relatedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RelatedPerson.name.suffix

-------

**Group 3**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document`

* **Source Code**: relatedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact
* **Source Code**: relatedEntity@classCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.relationship:Role
* **Source Code**: relatedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.relationship:RelationType.coding
* **Source Code**: relatedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.address
* **Source Code**: relatedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.telecom
* **Source Code**: relatedEntity.relatedPerson.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name
* **Source Code**: relatedEntity.relatedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name.family
* **Source Code**: relatedEntity.relatedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name.given
* **Source Code**: relatedEntity.relatedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name.prefix
* **Source Code**: relatedEntity.relatedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name.suffix



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPersonneStructureRelatedEntityFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureRelatedEntityFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (RelatedEntity)\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (RelatedEntity)\"",
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
  "description" : "Ce ConceptMap de l'élément PersonneStructure présente trois groupes de mapping: \n - Mapping 1 : entre le modèle métier \\\"PersonneStructure\\\" et l'élément CDA \\\"relatedEntity\\\"\n - Mapping 2 : entre l'élément CDA \\\"relatedEntity\\\" et le profil FHIR \\\"FrRelatedPersonDocument\\\"\n - Mapping 3 : entre l'élément CDA \\\"relatedEntity\\\" et l'élément FHIR \\\"Patient.contact\\\" ",
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
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity",
      "element" : [
        {
          "code" : "PersonneStructure",
          "target" : [
            {
              "code" : "relatedEntity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.professionRole",
          "target" : [
            {
              "code" : "relatedEntity@classCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.lien",
          "target" : [
            {
              "code" : "relatedEntity.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.adresse",
          "target" : [
            {
              "code" : "relatedEntity.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.coordonneesTelecom",
          "target" : [
            {
              "code" : "relatedEntity.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.nomPersonne",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.prenomPersonne",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.civilite",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PersonneStructure.personne.IdentitePersonne.titre",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-related-person-document",
      "element" : [
        {
          "code" : "relatedEntity",
          "target" : [
            {
              "code" : "RelatedPerson",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity@classCode",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "relatedEntity.code",
          "target" : [
            {
              "code" : "RelatedPerson.relationship.coding",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.addr",
          "target" : [
            {
              "code" : "RelatedPerson.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.telecom",
          "target" : [
            {
              "code" : "RelatedPerson.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson",
          "target" : [
            {
              "code" : "RelatedPerson.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.family",
          "target" : [
            {
              "code" : "RelatedPerson.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.given",
          "target" : [
            {
              "code" : "RelatedPerson.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.prefix",
          "target" : [
            {
              "code" : "RelatedPerson.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.suffix",
          "target" : [
            {
              "code" : "RelatedPerson.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-entity",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document",
      "element" : [
        {
          "code" : "relatedEntity",
          "target" : [
            {
              "code" : "Patient.contact",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity@classCode",
          "target" : [
            {
              "code" : "Patient.contact.relationship:Role",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.code",
          "target" : [
            {
              "code" : "Patient.contact.relationship:RelationType.coding",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.addr",
          "target" : [
            {
              "code" : "Patient.contact.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.telecom",
          "target" : [
            {
              "code" : "Patient.contact.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name",
          "target" : [
            {
              "code" : "Patient.contact.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.family",
          "target" : [
            {
              "code" : "Patient.contact.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.given",
          "target" : [
            {
              "code" : "Patient.contact.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.prefix",
          "target" : [
            {
              "code" : "Patient.contact.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedEntity.relatedPerson.name.suffix",
          "target" : [
            {
              "code" : "Patient.contact.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
