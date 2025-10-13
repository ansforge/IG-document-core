# Référence interne - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Référence interne**

## Logical Model: Référence interne 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceInterne | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrReferenceInterne |

 
Entrée Référence interne 

**Usages:**

* Use this Logical Model: [Acte](StructureDefinition-FrActe.md), [Evaluation](StructureDefinition-FrEvaluation.md), [Traitement](StructureDefinition-FrTraitement.md) and [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrReferenceInterne)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrReferenceInterne.csv), [Excel](StructureDefinition-FrReferenceInterne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrReferenceInterne",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceInterne",
  "version" : "0.1.0",
  "name" : "FrReferenceInterne",
  "title" : "Référence interne",
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
  "description" : "Entrée Référence interne",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceInterne",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrReferenceInterne",
        "path" : "FrReferenceInterne",
        "short" : "Référence interne",
        "definition" : "Entrée Référence interne"
      },
      {
        "id" : "FrReferenceInterne.identifiant",
        "path" : "FrReferenceInterne.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrReferenceInterne.code",
        "path" : "FrReferenceInterne.code",
        "short" : "Code de l'élément référencé.  \n - Le 'code' est obligatoire et doit être identique au code de l'élément référencé.  \n - Si l'élément référencé n'a pas codé, alors le 'code' doit être nullFlavor='NA'.",
        "definition" : "Code de l'élément référencé.  \n - Le 'code' est obligatoire et doit être identique au code de l'élément référencé.  \n - Si l'élément référencé n'a pas codé, alors le 'code' doit être nullFlavor='NA'.",
        "min" : 1,
        "max" : "1",
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
