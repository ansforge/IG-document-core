# Antécédents familiaux - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antécédents familiaux**

## Logical Model: Antécédents familiaux 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsFamiliauxEntry | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAntecedentsFamiliauxEntry |

 
Entrée Antécédents familiaux 

**Usages:**

* Use this Logical Model: [Antécédents familiaux](StructureDefinition-FrAntecedentsFamiliaux.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAntecedentsFamiliauxEntry)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAntecedentsFamiliauxEntry.csv), [Excel](StructureDefinition-FrAntecedentsFamiliauxEntry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAntecedentsFamiliauxEntry",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsFamiliauxEntry",
  "version" : "0.1.0",
  "name" : "FrAntecedentsFamiliauxEntry",
  "title" : "Antécédents familiaux",
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
  "description" : "Entrée Antécédents familiaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsFamiliauxEntry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAntecedentsFamiliauxEntry",
        "path" : "FrAntecedentsFamiliauxEntry",
        "short" : "Antécédents familiaux",
        "definition" : "Entrée Antécédents familiaux"
      },
      {
        "id" : "FrAntecedentsFamiliauxEntry.statut",
        "path" : "FrAntecedentsFamiliauxEntry.statut",
        "short" : "Statut de l’entrée",
        "definition" : "Statut de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      },
      {
        "id" : "FrAntecedentsFamiliauxEntry.identificationParent",
        "path" : "FrAntecedentsFamiliauxEntry.identificationParent",
        "short" : "Identification du parent",
        "definition" : "Identification du parent",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Sujet"
          }
        ]
      },
      {
        "id" : "FrAntecedentsFamiliauxEntry.participant",
        "path" : "FrAntecedentsFamiliauxEntry.participant",
        "short" : "Lien avec un autre sujet",
        "definition" : "Lien avec un autre sujet",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrAntecedentsFamiliauxEntry.antecedentFamilialObserve",
        "path" : "FrAntecedentsFamiliauxEntry.antecedentFamilialObserve",
        "short" : "Antécédent familial observé",
        "definition" : "Antécédent familial observé",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentFamilialObserve"
          }
        ]
      }
    ]
  }
}

```
