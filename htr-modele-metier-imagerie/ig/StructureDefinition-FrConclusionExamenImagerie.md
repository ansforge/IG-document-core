# Conclusion examen d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conclusion examen d'imagerie**

## Logical Model: Conclusion examen d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrConclusionExamenImagerie | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrConclusionExamenImagerie |

 
Section Conclusion examen d’imagerie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrConclusionExamenImagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrConclusionExamenImagerie.csv), [Excel](StructureDefinition-FrConclusionExamenImagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrConclusionExamenImagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrConclusionExamenImagerie",
  "version" : "0.1.0",
  "name" : "FrConclusionExamenImagerie",
  "title" : "Conclusion examen d'imagerie",
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
  "description" : "Section Conclusion examen d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrConclusionExamenImagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrConclusionExamenImagerie",
        "path" : "FrConclusionExamenImagerie",
        "short" : "Conclusion examen d'imagerie",
        "definition" : "Section Conclusion examen d'imagerie"
      },
      {
        "id" : "FrConclusionExamenImagerie.titreSection",
        "path" : "FrConclusionExamenImagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "FrConclusionExamenImagerie.sousSection",
        "path" : "FrConclusionExamenImagerie.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrConclusionExamenImagerie.entree",
        "path" : "FrConclusionExamenImagerie.entree",
        "max" : "0"
      }
    ]
  }
}

```
