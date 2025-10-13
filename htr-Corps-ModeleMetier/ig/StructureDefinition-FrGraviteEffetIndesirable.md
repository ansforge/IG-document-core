# Gravite effet indesirable - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gravite effet indesirable**

## Logical Model: Gravite effet indesirable 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGraviteEffetIndesirable | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrGraviteEffetIndesirable |

 
Entrée Gravite effet indesirable 

**Usages:**

* Use this Logical Model: [Effet indesirable](StructureDefinition-FrEffetIndesirable.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrGraviteEffetIndesirable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrGraviteEffetIndesirable.csv), [Excel](StructureDefinition-FrGraviteEffetIndesirable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrGraviteEffetIndesirable",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGraviteEffetIndesirable",
  "version" : "0.1.0",
  "name" : "FrGraviteEffetIndesirable",
  "title" : "Gravite effet indesirable",
  "status" : "draft",
  "date" : "2025-10-13T08:32:48+00:00",
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
  "description" : "Entrée Gravite effet indesirable",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrGraviteEffetIndesirable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrGraviteEffetIndesirable",
        "path" : "FrGraviteEffetIndesirable",
        "short" : "Gravite effet indesirable",
        "definition" : "Entrée Gravite effet indesirable"
      },
      {
        "id" : "FrGraviteEffetIndesirable.code",
        "path" : "FrGraviteEffetIndesirable.code",
        "short" : "Code de l'entrée",
        "definition" : "Code de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrGraviteEffetIndesirable.description",
        "path" : "FrGraviteEffetIndesirable.description",
        "short" : "Partie narrative de l'entrée",
        "definition" : "Partie narrative de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrGraviteEffetIndesirable.statut",
        "path" : "FrGraviteEffetIndesirable.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrGraviteEffetIndesirable.niveauGravite",
        "path" : "FrGraviteEffetIndesirable.niveauGravite",
        "short" : "Niveau de gravité",
        "definition" : "Niveau de gravité",
        "min" : 1,
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
