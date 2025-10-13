# Commentaire (non-codé) - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Commentaire (non-codé)**

## Logical Model: Commentaire (non-codé) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireNonCode | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrCommentaireNonCode |

 
Modèle logique métier de la section Commentaire (non-codé) 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrCommentaireNonCode)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrCommentaireNonCode.csv), [Excel](StructureDefinition-FrCommentaireNonCode.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrCommentaireNonCode",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireNonCode",
  "version" : "0.1.0",
  "name" : "FrCommentaireNonCode",
  "title" : "Commentaire (non-codé)",
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
  "description" : "Modèle logique métier de la section Commentaire (non-codé)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireNonCode",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrCommentaireNonCode",
        "path" : "FrCommentaireNonCode",
        "short" : "Commentaire (non-codé)",
        "definition" : "Modèle logique métier de la section Commentaire (non-codé)"
      },
      {
        "id" : "FrCommentaireNonCode.sousSection",
        "path" : "FrCommentaireNonCode.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrCommentaireNonCode.entree",
        "path" : "FrCommentaireNonCode.entree",
        "max" : "0"
      }
    ]
  }
}

```
