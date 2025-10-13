# Laboratoire exécutant - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratoire exécutant**

## Logical Model: Laboratoire exécutant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/LaboratoireExecutant | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:LaboratoireExecutant |

 
Modèle logique métier de l’élément Laboratoire exécutant 

**Usages:**

* Use this Logical Model: [Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md), [Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md), [Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.md), [Resultats](StructureDefinition-FrResultatsEntry.md) and [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/LaboratoireExecutant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LaboratoireExecutant.csv), [Excel](StructureDefinition-LaboratoireExecutant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LaboratoireExecutant",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/LaboratoireExecutant",
  "version" : "0.1.0",
  "name" : "LaboratoireExecutant",
  "title" : "Laboratoire exécutant",
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
  "description" : "Modèle logique métier de l'élément Laboratoire exécutant",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/LaboratoireExecutant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "LaboratoireExecutant",
        "path" : "LaboratoireExecutant",
        "short" : "Laboratoire exécutant",
        "definition" : "Modèle logique métier de l'élément Laboratoire exécutant"
      },
      {
        "id" : "LaboratoireExecutant.dateExecution",
        "path" : "LaboratoireExecutant.dateExecution",
        "short" : "Date de l’exécution",
        "definition" : "Date de l’exécution",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "LaboratoireExecutant.executant",
        "path" : "LaboratoireExecutant.executant",
        "short" : "Directeur du laboratoire",
        "definition" : "Directeur du laboratoire",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure"
          }
        ]
      }
    ]
  }
}

```
