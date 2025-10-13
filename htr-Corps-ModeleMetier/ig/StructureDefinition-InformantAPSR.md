# Informant APSR - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informant APSR**

## Logical Model: Informant APSR 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/InformantAPSR | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:InformantAPSR |

 
Modèle logique métier de l’élément Informant APSR 
* La structure de cet élément est identique à celle de l’élément Iformateur
 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/InformantAPSR)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-InformantAPSR.csv), [Excel](StructureDefinition-InformantAPSR.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "InformantAPSR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/InformantAPSR",
  "version" : "0.1.0",
  "name" : "InformantAPSR",
  "title" : "Informant APSR",
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
  "description" : "Modèle logique métier de l'élément Informant APSR \n  - La structure de cet élément est identique à celle de l’élément Iformateur",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/InformantAPSR",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "InformantAPSR",
        "path" : "InformantAPSR",
        "short" : "Informant APSR",
        "definition" : "Modèle logique métier de l'élément Informant APSR \n  - La structure de cet élément est identique à celle de l’élément Iformateur"
      }
    ]
  }
}

```
