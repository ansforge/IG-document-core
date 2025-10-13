# Prélèvement - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prélèvement**

## Logical Model: Prélèvement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrelevement | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrPrelevement |

 
Entrée Prélèvement 

**Usages:**

* Use this Logical Model: [Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md), [Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.md) and [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrPrelevement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPrelevement.csv), [Excel](StructureDefinition-FrPrelevement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPrelevement",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrelevement",
  "version" : "0.1.0",
  "name" : "FrPrelevement",
  "title" : "Prélèvement",
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
  "description" : "Entrée Prélèvement",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrelevement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrPrelevement",
        "path" : "FrPrelevement",
        "short" : "Prélèvement",
        "definition" : "Entrée Prélèvement"
      },
      {
        "id" : "FrPrelevement.actePrelevement",
        "path" : "FrPrelevement.actePrelevement",
        "short" : "Acte de prélèvement",
        "definition" : "Acte de prélèvement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrPrelevement.datePrelevement",
        "path" : "FrPrelevement.datePrelevement",
        "short" : "Date du prélèvement",
        "definition" : "Date du prélèvement",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrPrelevement.localisationPrelevement",
        "path" : "FrPrelevement.localisationPrelevement",
        "short" : "Localisation du prélèvement",
        "definition" : "Localisation du prélèvement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
        }
      },
      {
        "id" : "FrPrelevement.perfomer",
        "path" : "FrPrelevement.perfomer",
        "short" : "Organisation prélevante",
        "definition" : "Organisation prélevante",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      },
      {
        "id" : "FrPrelevement.echantillonPreleve",
        "path" : "FrPrelevement.echantillonPreleve",
        "short" : "Échantillon prélevé",
        "definition" : "Échantillon prélevé",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/EchantillonPreleve"
          }
        ]
      },
      {
        "id" : "FrPrelevement.dispositifUtilise",
        "path" : "FrPrelevement.dispositifUtilise",
        "short" : "Dispositif utilisé",
        "definition" : "Dispositif utilisé",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DispositifMedical"
          }
        ]
      },
      {
        "id" : "FrPrelevement.produitUtilise",
        "path" : "FrPrelevement.produitUtilise",
        "short" : "Produit utilisé",
        "definition" : "Produit utilisé",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DispositifMedical"
          }
        ]
      },
      {
        "id" : "FrPrelevement.dateReceptionEchantillon",
        "path" : "FrPrelevement.dateReceptionEchantillon",
        "short" : "Date de réception de l'échantillon",
        "definition" : "Date de réception de l'échantillon",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      }
    ]
  }
}

```
