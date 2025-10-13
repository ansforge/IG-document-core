# Patient avec sujet non humain - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient avec sujet non humain**

## Logical Model: Patient avec sujet non humain 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PatientSujetNonHumain | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:PatientSujetNonHumain |

 
Modèle logique métier de l’élément Patient avec sujet non humain 

**Usages:**

* Use this Logical Model: [Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md), [Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md), [Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.md) and [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/PatientSujetNonHumain)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PatientSujetNonHumain.csv), [Excel](StructureDefinition-PatientSujetNonHumain.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PatientSujetNonHumain",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PatientSujetNonHumain",
  "version" : "0.1.0",
  "name" : "PatientSujetNonHumain",
  "title" : "Patient avec sujet non humain",
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
  "description" : "Modèle logique métier de l'élément Patient avec sujet non humain",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PatientSujetNonHumain",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PatientSujetNonHumain",
        "path" : "PatientSujetNonHumain",
        "short" : "Patient avec sujet non humain",
        "definition" : "Modèle logique métier de l'élément Patient avec sujet non humain"
      },
      {
        "id" : "PatientSujetNonHumain.sujet",
        "path" : "PatientSujetNonHumain.sujet",
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
        "id" : "PatientSujetNonHumain.adresse",
        "path" : "PatientSujetNonHumain.adresse",
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
