# Modèle logique métier - FR LM Autorisation substitution - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Autorisation substitution**

## Logical Model: Modèle logique métier - FR LM Autorisation substitution 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-substitution | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMAutorisationSubstitution |

 
Entrée Autorisation substitution 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Traitement Prescrit](StructureDefinition-fr-lm-traitement-prescrit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-autorisation-substitution)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-autorisation-substitution.csv), [Excel](StructureDefinition-fr-lm-autorisation-substitution.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-autorisation-substitution",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-substitution",
  "version" : "0.1.0",
  "name" : "FRLMAutorisationSubstitution",
  "title" : "Modèle logique métier - FR LM Autorisation substitution",
  "status" : "draft",
  "date" : "2025-10-21T12:36:21+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-substitution",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-autorisation-substitution",
        "path" : "fr-lm-autorisation-substitution",
        "short" : "Modèle logique métier - FR LM Autorisation substitution",
        "definition" : "Entrée Autorisation substitution"
      },
      {
        "id" : "fr-lm-autorisation-substitution.typeSubstitution",
        "path" : "fr-lm-autorisation-substitution.typeSubstitution",
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
        "id" : "fr-lm-autorisation-substitution.statut",
        "path" : "fr-lm-autorisation-substitution.statut",
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
