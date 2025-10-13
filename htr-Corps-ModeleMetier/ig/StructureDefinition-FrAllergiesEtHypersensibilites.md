# Allergies et hypersensibilités - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergies et hypersensibilités**

## Logical Model: Allergies et hypersensibilités 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergiesEtHypersensibilites | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrAllergiesEtHypersensibilites |

 
Section Allergies et hypersensibilités 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAllergiesEtHypersensibilites)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAllergiesEtHypersensibilites.csv), [Excel](StructureDefinition-FrAllergiesEtHypersensibilites.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAllergiesEtHypersensibilites",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergiesEtHypersensibilites",
  "version" : "0.1.0",
  "name" : "FrAllergiesEtHypersensibilites",
  "title" : "Allergies et hypersensibilités",
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
  "description" : "Section Allergies et hypersensibilités",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergiesEtHypersensibilites",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAllergiesEtHypersensibilites",
        "path" : "FrAllergiesEtHypersensibilites",
        "short" : "Allergies et hypersensibilités",
        "definition" : "Section Allergies et hypersensibilités"
      },
      {
        "id" : "FrAllergiesEtHypersensibilites.titreSection",
        "path" : "FrAllergiesEtHypersensibilites.titreSection",
        "short" : "Allergies et hypersensibilités",
        "min" : 1
      },
      {
        "id" : "FrAllergiesEtHypersensibilites.sousSection",
        "path" : "FrAllergiesEtHypersensibilites.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrAllergiesEtHypersensibilites.entree",
        "path" : "FrAllergiesEtHypersensibilites.entree",
        "min" : 1
      },
      {
        "id" : "FrAllergiesEtHypersensibilites.entree.allergieOuHypersensibilite",
        "path" : "FrAllergiesEtHypersensibilites.entree.allergieOuHypersensibilite",
        "short" : "Entrée Allergie ou Hypersensibilité",
        "definition" : "Entrée Allergie ou Hypersensibilité",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergieOuHypersensibilite"
          }
        ]
      }
    ]
  }
}

```
