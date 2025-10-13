# Échantillon prélevé - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Échantillon prélevé**

## Logical Model: Échantillon prélevé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EchantillonPreleve | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:EchantillonPreleve |

 
Modèle logique métier Échantillon prélevé 

**Usages:**

* Use this Logical Model: [Prélèvement](StructureDefinition-FrPrelevement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/EchantillonPreleve)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EchantillonPreleve.csv), [Excel](StructureDefinition-EchantillonPreleve.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EchantillonPreleve",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EchantillonPreleve",
  "version" : "0.1.0",
  "name" : "EchantillonPreleve",
  "title" : "Échantillon prélevé",
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
  "description" : "Modèle logique métier Échantillon prélevé",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EchantillonPreleve",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EchantillonPreleve",
        "path" : "EchantillonPreleve",
        "short" : "Échantillon prélevé",
        "definition" : "Modèle logique métier Échantillon prélevé"
      },
      {
        "id" : "EchantillonPreleve.identifiant",
        "path" : "EchantillonPreleve.identifiant",
        "short" : "Identifiant de l'échantillon",
        "definition" : "Identifiant de l'échantillon",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EchantillonPreleve.echantillon",
        "path" : "EchantillonPreleve.echantillon",
        "short" : "Type de DM",
        "definition" : "Type de DM",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EchantillonPreleve.echantillon.code",
        "path" : "EchantillonPreleve.echantillon.code",
        "short" : "Nature de l'échantillon",
        "definition" : "Nature de l'échantillon",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EchantillonPreleve.echantillon.quantite",
        "path" : "EchantillonPreleve.echantillon.quantite",
        "short" : "Quantité",
        "definition" : "Quantité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
