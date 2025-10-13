# Dispositif médical - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dispositif médical**

## Logical Model: Dispositif médical 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DispositifMedical | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:DispositifMedical |

 
Modèle logique métier Dispositif médical 

**Usages:**

* Use this Logical Model: [Dispositif médical](StructureDefinition-FrDispositifMedicalEntry.md), [Dispositifs medicaux](StructureDefinition-FrDispositifsMedicaux.md) and [Prélèvement](StructureDefinition-FrPrelevement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/DispositifMedical)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DispositifMedical.csv), [Excel](StructureDefinition-DispositifMedical.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DispositifMedical",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DispositifMedical",
  "version" : "0.1.0",
  "name" : "DispositifMedical",
  "title" : "Dispositif médical",
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
  "description" : "Modèle logique métier Dispositif médical",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DispositifMedical",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DispositifMedical",
        "path" : "DispositifMedical",
        "short" : "Dispositif médical",
        "definition" : "Modèle logique métier Dispositif médical"
      },
      {
        "id" : "DispositifMedical.identifiant",
        "path" : "DispositifMedical.identifiant",
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
        "id" : "DispositifMedical.type",
        "path" : "DispositifMedical.type",
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
        "id" : "DispositifMedical.type.code",
        "path" : "DispositifMedical.type.code",
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
        "id" : "DispositifMedical.type.code.autreCode",
        "path" : "DispositifMedical.type.code.autreCode",
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
