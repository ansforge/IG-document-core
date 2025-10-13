# Antécédent familial observé - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antécédent familial observé**

## Logical Model: Antécédent familial observé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentFamilialObserve | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAntecedentFamilialObserve |

 
Entrée Antécédent familial 

**Usages:**

* Use this Logical Model: [Antécédents familiaux](StructureDefinition-FrAntecedentsFamiliauxEntry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAntecedentFamilialObserve)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAntecedentFamilialObserve.csv), [Excel](StructureDefinition-FrAntecedentFamilialObserve.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAntecedentFamilialObserve",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentFamilialObserve",
  "version" : "0.1.0",
  "name" : "FrAntecedentFamilialObserve",
  "title" : "Antécédent familial observé",
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
  "description" : "Entrée Antécédent familial",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentFamilialObserve",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAntecedentFamilialObserve",
        "path" : "FrAntecedentFamilialObserve",
        "short" : "Antécédent familial observé",
        "definition" : "Entrée Antécédent familial"
      },
      {
        "id" : "FrAntecedentFamilialObserve.identifiant",
        "path" : "FrAntecedentFamilialObserve.identifiant",
        "short" : "Identifiant de l'observation",
        "definition" : "Identifiant de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.code",
        "path" : "FrAntecedentFamilialObserve.code",
        "short" : "Code de l'observation",
        "definition" : "Code de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.descriptionNarrative",
        "path" : "FrAntecedentFamilialObserve.descriptionNarrative",
        "short" : "Description narrative de l'observation",
        "definition" : "Description narrative de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.statut",
        "path" : "FrAntecedentFamilialObserve.statut",
        "short" : "Statut de l'observation",
        "definition" : "Statut de l'observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.horodatage",
        "path" : "FrAntecedentFamilialObserve.horodatage",
        "short" : "Horodatage de l'entrée",
        "definition" : "Horodatage de l'entrée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.resultat",
        "path" : "FrAntecedentFamilialObserve.resultat",
        "short" : "Résultat de l'observation effectuée",
        "definition" : "Résultat de l'observation effectuée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.interpretation",
        "path" : "FrAntecedentFamilialObserve.interpretation",
        "short" : "Interprétation",
        "definition" : "Interprétation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.methode",
        "path" : "FrAntecedentFamilialObserve.methode",
        "short" : "\tMéthode utilisée",
        "definition" : "\tMéthode utilisée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.site",
        "path" : "FrAntecedentFamilialObserve.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrAntecedentFamilialObserve.auteur",
        "path" : "FrAntecedentFamilialObserve.auteur",
        "short" : "Auteur de l'observation",
        "definition" : "Auteur de l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      }
    ]
  }
}

```
