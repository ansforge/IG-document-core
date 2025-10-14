# Addendum - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Addendum**

## Logical Model: Addendum 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAddendum | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrAddendum |

 
Section Addendum 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrAddendum)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrAddendum.csv), [Excel](StructureDefinition-FrAddendum.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrAddendum",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAddendum",
  "version" : "0.1.0",
  "name" : "FrAddendum",
  "title" : "Addendum",
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
  "description" : "Section Addendum",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAddendum",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrAddendum",
        "path" : "FrAddendum",
        "short" : "Addendum",
        "definition" : "Section Addendum"
      },
      {
        "id" : "FrAddendum.titreSection",
        "path" : "FrAddendum.titreSection",
        "min" : 1
      },
      {
        "id" : "FrAddendum.sousSection",
        "path" : "FrAddendum.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrAddendum.entree",
        "path" : "FrAddendum.entree",
        "max" : "0"
      },
      {
        "id" : "FrAddendum.auteur",
        "path" : "FrAddendum.auteur",
        "short" : "auteur du document",
        "definition" : "auteur du document",
        "min" : 1,
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
