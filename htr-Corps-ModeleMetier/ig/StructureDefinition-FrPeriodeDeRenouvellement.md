# Période de renouvellement de la prescription - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Période de renouvellement de la prescription**

## Logical Model: Période de renouvellement de la prescription 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPeriodeDeRenouvellement | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrPeriodeDeRenouvellement |

 
Entrée Période de renouvellement de la prescription 

**Usages:**

* Use this Logical Model: [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrPeriodeDeRenouvellement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPeriodeDeRenouvellement.csv), [Excel](StructureDefinition-FrPeriodeDeRenouvellement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPeriodeDeRenouvellement",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPeriodeDeRenouvellement",
  "version" : "0.1.0",
  "name" : "FrPeriodeDeRenouvellement",
  "title" : "Période de renouvellement de la prescription",
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
  "description" : "Entrée Période de renouvellement de la prescription",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPeriodeDeRenouvellement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrPeriodeDeRenouvellement",
        "path" : "FrPeriodeDeRenouvellement",
        "short" : "Période de renouvellement de la prescription",
        "definition" : "Entrée Période de renouvellement de la prescription"
      },
      {
        "id" : "FrPeriodeDeRenouvellement.periodeRenouvellement",
        "path" : "FrPeriodeDeRenouvellement.periodeRenouvellement",
        "short" : "Période de renouvellement",
        "definition" : "Période de renouvellement",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
