# Modèle métier - Personne et/ou Structure (Auteur) - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Personne et/ou Structure (Auteur)**

## Logical Model: Modèle métier - Personne et/ou Structure (Auteur) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:PersonneStructureAuteur |

 
Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). 

**Usages:**

* Use this Logical Model: [Modèle métier - Auteur du document (humain ou système)](StructureDefinition-Auteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/PersonneStructureAuteur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonneStructureAuteur.csv), [Excel](StructureDefinition-PersonneStructureAuteur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonneStructureAuteur",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur",
  "version" : "0.1.0",
  "name" : "PersonneStructureAuteur",
  "title" : "Modèle métier - Personne et/ou Structure (Auteur)",
  "status" : "draft",
  "date" : "2025-10-13T15:21:05+00:00",
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
  "description" : "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels).",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PersonneStructureAuteur",
        "path" : "PersonneStructureAuteur",
        "short" : "Modèle métier - Personne et/ou Structure (Auteur)",
        "definition" : "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels)."
      },
      {
        "id" : "PersonneStructureAuteur.personne",
        "path" : "PersonneStructureAuteur.personne",
        "short" : "Personne",
        "definition" : "Personne",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.identifiantPersonne",
        "path" : "PersonneStructureAuteur.personne.identifiantPersonne",
        "short" : "Identifiant de la personne.",
        "definition" : "Identifiant de la personne.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.professionRole",
        "path" : "PersonneStructureAuteur.personne.professionRole",
        "short" : "\n- Profession pour les professionnels.\n- Rôle pour les non professionnels.\n- Obligatoire pour un professionnel.",
        "definition" : "\n- Profession pour les professionnels.\n- Rôle pour les non professionnels.\n- Obligatoire pour un professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.adresse",
        "path" : "PersonneStructureAuteur.personne.adresse",
        "short" : "Adresse géopostale.\n  - Obligatoire pour un professionnel.",
        "definition" : "Adresse géopostale.\n  - Obligatoire pour un professionnel.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.coordonneesTelecom",
        "path" : "PersonneStructureAuteur.personne.coordonneesTelecom",
        "short" : "Coordonnées télécom.\n  - Obligatoire pour un professionnel.",
        "definition" : "Coordonnées télécom.\n  - Obligatoire pour un professionnel.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.IdentitePersonne",
        "path" : "PersonneStructureAuteur.personne.IdentitePersonne",
        "short" : "Identité de la personne",
        "definition" : "Identité de la personne",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.IdentitePersonne.nomPersonne",
        "path" : "PersonneStructureAuteur.personne.IdentitePersonne.nomPersonne",
        "short" : "Nom de la personne",
        "definition" : "Nom de la personne",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne",
        "path" : "PersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne",
        "short" : "Prénom de la personne",
        "definition" : "Prénom de la personne",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.IdentitePersonne.civilite",
        "path" : "PersonneStructureAuteur.personne.IdentitePersonne.civilite",
        "short" : "Civilité",
        "definition" : "Civilité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.personne.IdentitePersonne.titre",
        "path" : "PersonneStructureAuteur.personne.IdentitePersonne.titre",
        "short" : "Titre",
        "definition" : "Titre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.structure",
        "path" : "PersonneStructureAuteur.structure",
        "short" : "Structure",
        "definition" : "Structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.structure.identifiantStructure",
        "path" : "PersonneStructureAuteur.structure.identifiantStructure",
        "short" : "Identifiant de la structure.\n  - Obligatoire pour un professionnel.",
        "definition" : "Identifiant de la structure.\n  - Obligatoire pour un professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.structure.nomStructure",
        "path" : "PersonneStructureAuteur.structure.nomStructure",
        "short" : "Nom de la structure.\n  - Obligatoire pour un professionnel.",
        "definition" : "Nom de la structure.\n  - Obligatoire pour un professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.structure.adresse",
        "path" : "PersonneStructureAuteur.structure.adresse",
        "short" : "Adresse géopostale",
        "definition" : "Adresse géopostale",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.structure.coordonneesTelecom",
        "path" : "PersonneStructureAuteur.structure.coordonneesTelecom",
        "short" : "Coordonnées télécom",
        "definition" : "Coordonnées télécom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "PersonneStructureAuteur.structure.secteurActivite",
        "path" : "PersonneStructureAuteur.structure.secteurActivite",
        "short" : "Secteur d'activité",
        "definition" : "Secteur d'activité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
