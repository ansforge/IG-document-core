# Auteur APSR - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Auteur APSR**

## Logical Model: Auteur APSR 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/AuteurAPSR | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:AuteurAPSR |

 
Modèle logique métier de l’élément Auteur APSR 
* La structure de cet élément est identique à celle de l’élément Auteur
 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/AuteurAPSR)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AuteurAPSR.csv), [Excel](StructureDefinition-AuteurAPSR.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AuteurAPSR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/AuteurAPSR",
  "version" : "0.1.0",
  "name" : "AuteurAPSR",
  "title" : "Auteur APSR",
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
  "description" : "Modèle logique métier de l'élément Auteur APSR\n  - La structure de cet élément est identique à celle de l’élément Auteur",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/AuteurAPSR",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "AuteurAPSR",
        "path" : "AuteurAPSR",
        "short" : "Auteur APSR",
        "definition" : "Modèle logique métier de l'élément Auteur APSR\n  - La structure de cet élément est identique à celle de l’élément Auteur"
      }
    ]
  }
}

```
