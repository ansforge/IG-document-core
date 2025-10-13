# Sujet non humain - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sujet non humain**

## Logical Model: Sujet non humain 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SujetNonHumain | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:SujetNonHumain |

 
Modèle logique métier de l’élément Sujet non humain 

**Usages:**

* Use this Logical Model: [Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md), [Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md), [Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.md) and [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/SujetNonHumain)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SujetNonHumain.csv), [Excel](StructureDefinition-SujetNonHumain.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SujetNonHumain",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SujetNonHumain",
  "version" : "0.1.0",
  "name" : "SujetNonHumain",
  "title" : "Sujet non humain",
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
  "description" : "Modèle logique métier de l'élément Sujet non humain",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SujetNonHumain",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SujetNonHumain",
        "path" : "SujetNonHumain",
        "short" : "Sujet non humain",
        "definition" : "Modèle logique métier de l'élément Sujet non humain"
      },
      {
        "id" : "SujetNonHumain.sujet",
        "path" : "SujetNonHumain.sujet",
        "short" : "Sujet (ex. poulet, poisson, œuf, salade, eau, terre, air, peinture, etc.)",
        "definition" : "Sujet (ex. poulet, poisson, œuf, salade, eau, terre, air, peinture, etc.)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "SujetNonHumain.adresse",
        "path" : "SujetNonHumain.adresse",
        "short" : "Lieu de provenance du sujet non humain",
        "definition" : "Lieu de provenance du sujet non humain",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      }
    ]
  }
}

```
