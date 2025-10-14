# Résultats d'examen d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Résultats d'examen d'imagerie**

## Logical Model: Résultats d'examen d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamenImagerie | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrResultatsExamenImagerie |

 
Section Résultats d’examen d’imagerie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrResultatsExamenImagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrResultatsExamenImagerie.csv), [Excel](StructureDefinition-FrResultatsExamenImagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrResultatsExamenImagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamenImagerie",
  "version" : "0.1.0",
  "name" : "FrResultatsExamenImagerie",
  "title" : "Résultats d'examen d'imagerie",
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
  "description" : "Section Résultats d'examen d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamenImagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrResultatsExamenImagerie",
        "path" : "FrResultatsExamenImagerie",
        "short" : "Résultats d'examen d'imagerie",
        "definition" : "Section Résultats d'examen d'imagerie"
      },
      {
        "id" : "FrResultatsExamenImagerie.titreSection",
        "path" : "FrResultatsExamenImagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "FrResultatsExamenImagerie.sousSection",
        "path" : "FrResultatsExamenImagerie.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrResultatsExamenImagerie.entree",
        "path" : "FrResultatsExamenImagerie.entree",
        "max" : "0"
      }
    ]
  }
}

```
