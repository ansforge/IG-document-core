# Antécédents médicaux - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antécédents médicaux**

## Logical Model: Antécédents médicaux 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsMedicaux | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAntecedentsMedicaux |

 
Section Antécédents médicaux 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAntecedentsMedicaux)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAntecedentsMedicaux.csv), [Excel](StructureDefinition-FrAntecedentsMedicaux.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAntecedentsMedicaux",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsMedicaux",
  "version" : "0.1.0",
  "name" : "FrAntecedentsMedicaux",
  "title" : "Antécédents médicaux",
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
  "description" : "Section Antécédents médicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsMedicaux",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAntecedentsMedicaux",
        "path" : "FrAntecedentsMedicaux",
        "short" : "Antécédents médicaux",
        "definition" : "Section Antécédents médicaux"
      },
      {
        "id" : "FrAntecedentsMedicaux.titreSection",
        "path" : "FrAntecedentsMedicaux.titreSection",
        "min" : 1
      },
      {
        "id" : "FrAntecedentsMedicaux.sousSection",
        "path" : "FrAntecedentsMedicaux.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrAntecedentsMedicaux.entree",
        "path" : "FrAntecedentsMedicaux.entree",
        "min" : 1
      },
      {
        "id" : "FrAntecedentsMedicaux.entree.problemes",
        "path" : "FrAntecedentsMedicaux.entree.problemes",
        "short" : "Entrée Problème",
        "definition" : "Entrée Problème",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme"
          }
        ]
      }
    ]
  }
}

```
