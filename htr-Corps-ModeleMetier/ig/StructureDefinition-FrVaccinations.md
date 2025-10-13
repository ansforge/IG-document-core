# Vaccinations - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vaccinations**

## Logical Model: Vaccinations 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinations | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrVaccinations |

 
Section Vaccinations 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrVaccinations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrVaccinations.csv), [Excel](StructureDefinition-FrVaccinations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrVaccinations",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinations",
  "version" : "0.1.0",
  "name" : "FrVaccinations",
  "title" : "Vaccinations",
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
  "description" : "Section Vaccinations",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinations",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrVaccinations",
        "path" : "FrVaccinations",
        "short" : "Vaccinations",
        "definition" : "Section Vaccinations"
      },
      {
        "id" : "FrVaccinations.titreSection",
        "path" : "FrVaccinations.titreSection",
        "min" : 1
      },
      {
        "id" : "FrVaccinations.sousSection",
        "path" : "FrVaccinations.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrVaccinations.entree",
        "path" : "FrVaccinations.entree",
        "min" : 1
      },
      {
        "id" : "FrVaccinations.entree.vaccinations",
        "path" : "FrVaccinations.entree.vaccinations",
        "short" : "Entrée Vaccination",
        "definition" : "Entrée Vaccination",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccination"
          }
        ]
      }
    ]
  }
}

```
