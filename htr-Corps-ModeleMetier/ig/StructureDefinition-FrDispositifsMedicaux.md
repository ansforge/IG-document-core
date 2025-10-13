# Dispositifs medicaux - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dispositifs medicaux**

## Logical Model: Dispositifs medicaux 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifsMedicaux | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDispositifsMedicaux |

 
Section Dispositifs medicaux 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDispositifsMedicaux)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDispositifsMedicaux.csv), [Excel](StructureDefinition-FrDispositifsMedicaux.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDispositifsMedicaux",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifsMedicaux",
  "version" : "0.1.0",
  "name" : "FrDispositifsMedicaux",
  "title" : "Dispositifs medicaux",
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
  "description" : "Section Dispositifs medicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifsMedicaux",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDispositifsMedicaux",
        "path" : "FrDispositifsMedicaux",
        "short" : "Dispositifs medicaux",
        "definition" : "Section Dispositifs medicaux"
      },
      {
        "id" : "FrDispositifsMedicaux.titreSection",
        "path" : "FrDispositifsMedicaux.titreSection",
        "min" : 1
      },
      {
        "id" : "FrDispositifsMedicaux.sousSection",
        "path" : "FrDispositifsMedicaux.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrDispositifsMedicaux.entree.dispositifsMedicaux",
        "path" : "FrDispositifsMedicaux.entree.dispositifsMedicaux",
        "short" : "Entrée Dispositif medical",
        "definition" : "Entrée Dispositif medical",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DispositifMedical"
          }
        ]
      }
    ]
  }
}

```
