# Section Points de vigilance (non-codés) - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Section Points de vigilance (non-codés)**

## Logical Model: Section Points de vigilance (non-codés) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPointsDeVigilancesNonCode | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrPointsDeVigilancesNonCode |

 
Section Points de vigilance (non-codés) 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrPointsDeVigilancesNonCode)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPointsDeVigilancesNonCode.csv), [Excel](StructureDefinition-FrPointsDeVigilancesNonCode.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPointsDeVigilancesNonCode",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPointsDeVigilancesNonCode",
  "version" : "0.1.0",
  "name" : "FrPointsDeVigilancesNonCode",
  "title" : "Section Points de vigilance (non-codés)",
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
  "description" : "Section Points de vigilance (non-codés)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPointsDeVigilancesNonCode",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrPointsDeVigilancesNonCode",
        "path" : "FrPointsDeVigilancesNonCode",
        "short" : "Section Points de vigilance (non-codés)",
        "definition" : "Section Points de vigilance (non-codés)"
      },
      {
        "id" : "FrPointsDeVigilancesNonCode.titreSection",
        "path" : "FrPointsDeVigilancesNonCode.titreSection",
        "min" : 1
      },
      {
        "id" : "FrPointsDeVigilancesNonCode.sousSection",
        "path" : "FrPointsDeVigilancesNonCode.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrPointsDeVigilancesNonCode.entree",
        "path" : "FrPointsDeVigilancesNonCode.entree",
        "max" : "0"
      }
    ]
  }
}

```
