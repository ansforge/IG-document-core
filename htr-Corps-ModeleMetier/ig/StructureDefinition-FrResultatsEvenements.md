# Résultats d'événements - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Résultats d'événements**

## Logical Model: Résultats d'événements 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsEvenements | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrResultatsEvenements |

 
Section Résultats d’événements 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrResultatsEvenements)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrResultatsEvenements.csv), [Excel](StructureDefinition-FrResultatsEvenements.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrResultatsEvenements",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsEvenements",
  "version" : "0.1.0",
  "name" : "FrResultatsEvenements",
  "title" : "Résultats d'événements",
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
  "description" : "Section Résultats d'événements",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsEvenements",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrResultatsEvenements",
        "path" : "FrResultatsEvenements",
        "short" : "Résultats d'événements",
        "definition" : "Section Résultats d'événements"
      },
      {
        "id" : "FrResultatsEvenements.sousSection",
        "path" : "FrResultatsEvenements.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrResultatsEvenements.entree.observation",
        "path" : "FrResultatsEvenements.entree.observation",
        "short" : "Entrée Simple observation",
        "definition" : "Entrée Simple observation",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrResultatsEvenements.entree.transfertPatient",
        "path" : "FrResultatsEvenements.entree.transfertPatient",
        "short" : "Entrée Transfert du patient",
        "definition" : "Entrée Transfert du patient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTransfertDuPatient"
          }
        ]
      },
      {
        "id" : "FrResultatsEvenements.entree.probleme",
        "path" : "FrResultatsEvenements.entree.probleme",
        "short" : "Entrée Problème",
        "definition" : "Entrée Problème",
        "min" : 0,
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
