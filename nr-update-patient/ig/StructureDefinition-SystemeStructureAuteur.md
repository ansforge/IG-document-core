# Modèle métier - Système / Structure - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Système / Structure**

## Logical Model: Modèle métier - Système / Structure 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SystemeStructureAuteur | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:SystemeStructureAuteur |

 
Système auteur du document 

**Usages:**

* Use this Logical Model: [Modèle métier - Auteur du document (humain ou système)](StructureDefinition-Auteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/SystemeStructureAuteur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SystemeStructureAuteur.csv), [Excel](StructureDefinition-SystemeStructureAuteur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SystemeStructureAuteur",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SystemeStructureAuteur",
  "version" : "0.1.0",
  "name" : "SystemeStructureAuteur",
  "title" : "Modèle métier - Système / Structure",
  "status" : "draft",
  "date" : "2025-10-21T13:57:20+00:00",
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
  "description" : "Système auteur du document",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SystemeStructureAuteur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SystemeStructureAuteur",
        "path" : "SystemeStructureAuteur",
        "short" : "Modèle métier - Système / Structure",
        "definition" : "Système auteur du document"
      },
      {
        "id" : "SystemeStructureAuteur.systeme",
        "path" : "SystemeStructureAuteur.systeme",
        "short" : "Identification du système.",
        "definition" : "Identification du système.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.systeme.identifiantSysteme",
        "path" : "SystemeStructureAuteur.systeme.identifiantSysteme",
        "short" : "Identifiant du systeme.",
        "definition" : "Identifiant du systeme.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.systeme.typeSysteme",
        "path" : "SystemeStructureAuteur.systeme.typeSysteme",
        "short" : "type du systeme.",
        "definition" : "type du systeme.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.systeme.nomModeleSysteme",
        "path" : "SystemeStructureAuteur.systeme.nomModeleSysteme",
        "short" : "Nom du modèle du système.",
        "definition" : "Nom du modèle du système.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.systeme.nomSysteme",
        "path" : "SystemeStructureAuteur.systeme.nomSysteme",
        "short" : "Nom du système.",
        "definition" : "Nom du système.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.structure",
        "path" : "SystemeStructureAuteur.structure",
        "short" : "Structure.",
        "definition" : "Structure.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.structure.identifiantStructure",
        "path" : "SystemeStructureAuteur.structure.identifiantStructure",
        "short" : "Identifiant de la structure.",
        "definition" : "Identifiant de la structure.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.structure.nomStructure",
        "path" : "SystemeStructureAuteur.structure.nomStructure",
        "short" : "Nom de la structure.",
        "definition" : "Nom de la structure.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.structure.adresse",
        "path" : "SystemeStructureAuteur.structure.adresse",
        "short" : "Adresse géopostale.",
        "definition" : "Adresse géopostale.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.structure.coordonneesTelecom",
        "path" : "SystemeStructureAuteur.structure.coordonneesTelecom",
        "short" : "Coordonnées télécom.",
        "definition" : "Coordonnées télécom.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "SystemeStructureAuteur.structure.secteurActivite",
        "path" : "SystemeStructureAuteur.structure.secteurActivite",
        "short" : "Secteur d'activité.",
        "definition" : "Secteur d'activité.",
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
