# Autorisation substitution - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Autorisation substitution**

## Logical Model: Autorisation substitution 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAutorisationSubstitution | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAutorisationSubstitution |

 
Entrée Autorisation substitution 

**Usages:**

* Use this Logical Model: [Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAutorisationSubstitution)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAutorisationSubstitution.csv), [Excel](StructureDefinition-FrAutorisationSubstitution.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAutorisationSubstitution",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAutorisationSubstitution",
  "version" : "0.1.0",
  "name" : "FrAutorisationSubstitution",
  "title" : "Autorisation substitution",
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
  "description" : "Entrée Autorisation substitution",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAutorisationSubstitution",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAutorisationSubstitution",
        "path" : "FrAutorisationSubstitution",
        "short" : "Autorisation substitution",
        "definition" : "Entrée Autorisation substitution"
      },
      {
        "id" : "FrAutorisationSubstitution.typeSubstitution",
        "path" : "FrAutorisationSubstitution.typeSubstitution",
        "short" : "Type de substitution autorisé entre le traitement prescrit et le traitement dispensé.",
        "definition" : "Type de substitution autorisé entre le traitement prescrit et le traitement dispensé.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrAutorisationSubstitution.statut",
        "path" : "FrAutorisationSubstitution.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "completed"
      }
    ]
  }
}

```
