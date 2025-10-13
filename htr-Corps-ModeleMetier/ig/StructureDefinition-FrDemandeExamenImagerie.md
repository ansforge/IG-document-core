# Demande d'examen d'imagerie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Demande d'examen d'imagerie**

## Logical Model: Demande d'examen d'imagerie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenImagerie | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDemandeExamenImagerie |

 
Section Demande d’examen d’imagerie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDemandeExamenImagerie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDemandeExamenImagerie.csv), [Excel](StructureDefinition-FrDemandeExamenImagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDemandeExamenImagerie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenImagerie",
  "version" : "0.1.0",
  "name" : "FrDemandeExamenImagerie",
  "title" : "Demande d'examen d'imagerie",
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
  "description" : "Section Demande d'examen d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenImagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDemandeExamenImagerie",
        "path" : "FrDemandeExamenImagerie",
        "short" : "Demande d'examen d'imagerie",
        "definition" : "Section Demande d'examen d'imagerie"
      },
      {
        "id" : "FrDemandeExamenImagerie.titreSection",
        "path" : "FrDemandeExamenImagerie.titreSection",
        "min" : 1
      },
      {
        "id" : "FrDemandeExamenImagerie.sousSection",
        "path" : "FrDemandeExamenImagerie.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrDemandeExamenImagerie.entree",
        "path" : "FrDemandeExamenImagerie.entree",
        "max" : "0"
      }
    ]
  }
}

```
