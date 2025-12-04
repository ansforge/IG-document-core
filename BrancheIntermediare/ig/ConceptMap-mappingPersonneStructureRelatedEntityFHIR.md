# Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureRelatedEntityFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-04 | *Computable Name*:Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" |

 
Ce ConceptMap de l’élément PersonneStructure présente trois groupes de mapping: 
* Mapping 1 : entre le modèle métier "FRLMPersonneStructure" et l’élément CDA "relatedEntity"
* Mapping 2 : entre l’élément CDA "relatedEntity" et le profil FHIR "FrRelatedPersonDocument"
* Mapping 3 : entre l’élément CDA "relatedEntity" et l’élément FHIR "Patient.contact"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Personne et/ou Structure](StructureDefinition-fr-lm-personne-structure.md) to [CDA - relatedEntity](StructureDefinition-fr-cda-related-entity.md)

* **Code source**: FRLMPersonneStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity
* **Code source**: FRLMPersonneStructure.personne.professionRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity@classCode
* **Code source**: FRLMPersonneStructure.personne.lien
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.code
* **Code source**: FRLMPersonneStructure.personne.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.addr
* **Code source**: FRLMPersonneStructure.personne.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.telecom
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.relatedPerson
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.nomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.relatedPerson.name.family
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.prenomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.relatedPerson.name.given
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.civilite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.relatedPerson.name.prefix
* **Code source**: FRLMPersonneStructure.personne.IdentitePersonne.titre
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedEntity.relatedPerson.name.suffix

-------

**Groupe 2**Mapping de [CDA - relatedEntity](StructureDefinition-fr-cda-related-entity.md) to [FR RelatedPerson Document](StructureDefinition-fr-related-person-document.md)

* **Code source**: relatedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson
* **Code source**: relatedEntity@classCode
  * **relation**: (not mapped)
* **Code source**: relatedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.relationship.coding
* **Code source**: relatedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.address
* **Code source**: relatedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.telecom
* **Code source**: relatedEntity.relatedPerson
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.name
* **Code source**: relatedEntity.relatedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.name.family
* **Code source**: relatedEntity.relatedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.name.given
* **Code source**: relatedEntity.relatedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.name.prefix
* **Code source**: relatedEntity.relatedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: RelatedPerson.name.suffix

-------

**Groupe 3**Mapping de [CDA - relatedEntity](StructureDefinition-fr-cda-related-entity.md) to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document`

* **Code source**: relatedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact
* **Code source**: relatedEntity@classCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.relationship:Role
* **Code source**: relatedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.relationship:RelationType.coding
* **Code source**: relatedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.address
* **Code source**: relatedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.telecom
* **Code source**: relatedEntity.relatedPerson.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.name
* **Code source**: relatedEntity.relatedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.name.family
* **Code source**: relatedEntity.relatedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.name.given
* **Code source**: relatedEntity.relatedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.name.prefix
* **Code source**: relatedEntity.relatedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Patient.contact.name.suffix



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
  "date" : "2025-12-04T14:08:40+00:00",
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
  "description" : "Ce ConceptMap de l'élément PersonneStructure présente trois groupes de mapping: \n - Mapping 1 : entre le modèle métier \\\"FRLMPersonneStructure\\\" et l'élément CDA \\\"relatedEntity\\\"\n - Mapping 2 : entre l'élément CDA \\\"relatedEntity\\\" et le profil FHIR \\\"FrRelatedPersonDocument\\\"\n - Mapping 3 : entre l'élément CDA \\\"relatedEntity\\\" et l'élément FHIR \\\"Patient.contact\\\" ",
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
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-entity",
      "element" : [
        {
          "code" : "FRLMPersonneStructure",
          "target" : [
            {
              "code" : "relatedEntity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.professionRole",
          "target" : [
            {
              "code" : "relatedEntity@classCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.lien",
          "target" : [
            {
              "code" : "relatedEntity.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.adresse",
          "target" : [
            {
              "code" : "relatedEntity.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.coordonneesTelecom",
          "target" : [
            {
              "code" : "relatedEntity.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.nomPersonne",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.prenomPersonne",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.civilite",
          "target" : [
            {
              "code" : "relatedEntity.relatedPerson.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructure.personne.IdentitePersonne.titre",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-entity",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-entity",
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
