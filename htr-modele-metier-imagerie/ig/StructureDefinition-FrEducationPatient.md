# Education du patient - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Education du patient**

## Logical Model: Education du patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEducationPatient | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrEducationPatient |

 
Section Education du patient 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrEducationPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrEducationPatient.csv), [Excel](StructureDefinition-FrEducationPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrEducationPatient",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEducationPatient",
  "version" : "0.1.0",
  "name" : "FrEducationPatient",
  "title" : "Education du patient",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Section Education du patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEducationPatient",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrEducationPatient",
        "path" : "FrEducationPatient",
        "short" : "Education du patient",
        "definition" : "Section Education du patient"
      },
      {
        "id" : "FrEducationPatient.sousSection",
        "path" : "FrEducationPatient.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrEducationPatient.entree.acte",
        "path" : "FrEducationPatient.entree.acte",
        "short" : "Entrée Acte",
        "definition" : "Entrée Acte",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActe"
          }
        ]
      },
      {
        "id" : "FrEducationPatient.entree.observation",
        "path" : "FrEducationPatient.entree.observation",
        "short" : "Entrée Simple observation",
        "definition" : "Entrée Simple observation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrEducationPatient.entree.reference",
        "path" : "FrEducationPatient.entree.reference",
        "short" : "Entrée References externes",
        "definition" : "Entrée References externes",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferencesExternes"
          }
        ]
      }
    ]
  }
}

```
