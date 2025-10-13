# Imputabilite effet indesirable - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Imputabilite effet indesirable**

## Logical Model: Imputabilite effet indesirable 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImputabiliteEffetIndesirable | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrImputabiliteEffetIndesirable |

 
Entrée Imputabilite effet indesirable 

**Usages:**

* Use this Logical Model: [Effet indesirable](StructureDefinition-FrEffetIndesirable.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrImputabiliteEffetIndesirable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrImputabiliteEffetIndesirable.csv), [Excel](StructureDefinition-FrImputabiliteEffetIndesirable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrImputabiliteEffetIndesirable",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImputabiliteEffetIndesirable",
  "version" : "0.1.0",
  "name" : "FrImputabiliteEffetIndesirable",
  "title" : "Imputabilite effet indesirable",
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
  "description" : "Entrée Imputabilite effet indesirable",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImputabiliteEffetIndesirable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrImputabiliteEffetIndesirable",
        "path" : "FrImputabiliteEffetIndesirable",
        "short" : "Imputabilite effet indesirable",
        "definition" : "Entrée Imputabilite effet indesirable"
      },
      {
        "id" : "FrImputabiliteEffetIndesirable.code",
        "path" : "FrImputabiliteEffetIndesirable.code",
        "short" : "Code de l'entrée.",
        "definition" : "Code de l'entrée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrImputabiliteEffetIndesirable.description",
        "path" : "FrImputabiliteEffetIndesirable.description",
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
        "id" : "FrImputabiliteEffetIndesirable.statut",
        "path" : "FrImputabiliteEffetIndesirable.statut",
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
        "id" : "FrImputabiliteEffetIndesirable.niveauImputabilite",
        "path" : "FrImputabiliteEffetIndesirable.niveauImputabilite",
        "short" : "Niveau d'imputabilité",
        "definition" : "Niveau d'imputabilité",
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
