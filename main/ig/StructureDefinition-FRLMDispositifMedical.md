# Modèle logique métier - Dispositif médical - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - Dispositif médical**

## Logical Model: Modèle logique métier - Dispositif médical 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FRLMDispositifMedical | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:FRLMDispositifMedical |

 
Dispositif médical 

**Utilisations:**

* Utiliser ce Modèle logique: [Modèle logique métier - FR LM Dispositif médical](StructureDefinition-fr-lm-dispositif-medical-entree.md), [Modèle logique métier - FR LM Dispositifs medicaux](StructureDefinition-fr-lm-dispositifs-medicaux.md) and [Modèle logique métier - FR LM Prélèvement](StructureDefinition-fr-lm-prelevement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FRLMDispositifMedical)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FRLMDispositifMedical.csv), [Excel](StructureDefinition-FRLMDispositifMedical.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMDispositifMedical",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FRLMDispositifMedical",
  "version" : "0.1.0",
  "name" : "FRLMDispositifMedical",
  "title" : "Modèle logique métier - Dispositif médical",
  "status" : "draft",
  "date" : "2025-12-05T10:54:45+00:00",
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
  "description" : "Dispositif médical",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FRLMDispositifMedical",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FRLMDispositifMedical",
        "path" : "FRLMDispositifMedical",
        "short" : "Modèle logique métier - Dispositif médical",
        "definition" : "Dispositif médical"
      },
      {
        "id" : "FRLMDispositifMedical.identifiant",
        "path" : "FRLMDispositifMedical.identifiant",
        "short" : "Identifiant unique du DM (UDI)",
        "definition" : "Identifiant unique du DM (UDI)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FRLMDispositifMedical.type",
        "path" : "FRLMDispositifMedical.type",
        "short" : "Type de DM",
        "definition" : "Type de DM",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FRLMDispositifMedical.type.code",
        "path" : "FRLMDispositifMedical.type.code",
        "short" : "Code du DM",
        "definition" : "Code du DM",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FRLMDispositifMedical.type.code.autreCode",
        "path" : "FRLMDispositifMedical.type.code.autreCode",
        "short" : "Autre code du dispositif médical",
        "definition" : "Autre code du dispositif médical",
        "min" : 0,
        "max" : "*",
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
