# Compte rendu de biologie de 1er niveau - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Compte rendu de biologie de 1er niveau**

## Logical Model: Compte rendu de biologie de 1er niveau 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOChapitre | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrCRBIOChapitre |

 
Section Compte rendu de biologie de 1er niveau 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrCRBIOChapitre)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrCRBIOChapitre.csv), [Excel](StructureDefinition-FrCRBIOChapitre.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrCRBIOChapitre",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOChapitre",
  "version" : "0.1.0",
  "name" : "FrCRBIOChapitre",
  "title" : "Compte rendu de biologie de 1er niveau",
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
  "description" : "Section Compte rendu de biologie de 1er niveau",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOChapitre",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrCRBIOChapitre",
        "path" : "FrCRBIOChapitre",
        "short" : "Compte rendu de biologie de 1er niveau",
        "definition" : "Section Compte rendu de biologie de 1er niveau",
        "constraint" : [
          {
            "key" : "crbio-choice",
            "severity" : "error",
            "human" : "La section doit contenir soit une ou plusieurs sous-sections CRBIOSousChapitre, soit une ou plusieurs entrées ResultatsExamensBiologieMedicale, mais pas les deux.",
            "expression" : "(choice.where(resolve() is CRBIOSousChapitre).exists() and not choice.where(resolve() is ResultatsExamensBiologieMedicale).exists()) or (not choice.where(resolve() is CRBIOSousChapitre).exists() and choice.where(resolve() is ResultatsExamensBiologieMedicale).exists())",
            "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOChapitre"
          }
        ]
      },
      {
        "id" : "FrCRBIOChapitre.sousSection",
        "path" : "FrCRBIOChapitre.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrCRBIOChapitre.entree",
        "path" : "FrCRBIOChapitre.entree",
        "max" : "0"
      },
      {
        "id" : "FrCRBIOChapitre.choice[x]",
        "path" : "FrCRBIOChapitre.choice[x]",
        "short" : "Section de 1er niveau (Chapitre) qui contient : \n  • soit une seule entrée FR-Resultats-examens-de-biologie-medicale,  \n  • soit une ou plusieurs sous-sections FR-CR-BIO-Sous-Chapitre",
        "definition" : "Section de 1er niveau (Chapitre) qui contient : \n  • soit une seule entrée FR-Resultats-examens-de-biologie-medicale,  \n  • soit une ou plusieurs sous-sections FR-CR-BIO-Sous-Chapitre",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOSousChapitre"
          },
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensBiologieMedicale"
          }
        ]
      }
    ]
  }
}

```
