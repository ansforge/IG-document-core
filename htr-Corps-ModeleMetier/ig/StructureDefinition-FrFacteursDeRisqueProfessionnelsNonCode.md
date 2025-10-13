# Facteurs de risque professionnels non code - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Facteurs de risque professionnels non code**

## Logical Model: Facteurs de risque professionnels non code 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFacteursDeRisqueProfessionnelsNonCode | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrFacteursDeRisqueProfessionnelsNonCode |

 
Section Facteurs de risque professionnels non code 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrFacteursDeRisqueProfessionnelsNonCode)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrFacteursDeRisqueProfessionnelsNonCode.csv), [Excel](StructureDefinition-FrFacteursDeRisqueProfessionnelsNonCode.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrFacteursDeRisqueProfessionnelsNonCode",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFacteursDeRisqueProfessionnelsNonCode",
  "version" : "0.1.0",
  "name" : "FrFacteursDeRisqueProfessionnelsNonCode",
  "title" : "Facteurs de risque professionnels non code",
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
  "description" : "Section Facteurs de risque professionnels non code",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFacteursDeRisqueProfessionnelsNonCode",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrFacteursDeRisqueProfessionnelsNonCode",
        "path" : "FrFacteursDeRisqueProfessionnelsNonCode",
        "short" : "Facteurs de risque professionnels non code",
        "definition" : "Section Facteurs de risque professionnels non code"
      },
      {
        "id" : "FrFacteursDeRisqueProfessionnelsNonCode.sousSection",
        "path" : "FrFacteursDeRisqueProfessionnelsNonCode.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrFacteursDeRisqueProfessionnelsNonCode.entree",
        "path" : "FrFacteursDeRisqueProfessionnelsNonCode.entree",
        "max" : "0"
      }
    ]
  }
}

```
