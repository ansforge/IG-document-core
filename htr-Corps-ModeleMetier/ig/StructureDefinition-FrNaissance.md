# Naissance - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Naissance**

## Logical Model: Naissance 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrNaissance | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrNaissance |

 
Entrée Naissance 

**Usages:**

* Use this Logical Model: [Historique de la grossesse](StructureDefinition-FrHistoriqueGrossesse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrNaissance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrNaissance.csv), [Excel](StructureDefinition-FrNaissance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrNaissance",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrNaissance",
  "version" : "0.1.0",
  "name" : "FrNaissance",
  "title" : "Naissance",
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
  "description" : "Entrée Naissance",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrNaissance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrNaissance",
        "path" : "FrNaissance",
        "short" : "Naissance",
        "definition" : "Entrée Naissance"
      },
      {
        "id" : "FrNaissance.identifiant",
        "path" : "FrNaissance.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrNaissance.code",
        "path" : "FrNaissance.code",
        "short" : "Code de l'entrée",
        "definition" : "Code de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrNaissance.statut",
        "path" : "FrNaissance.statut",
        "short" : "Statut de l'entrée",
        "definition" : "Statut de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrNaissance.periode",
        "path" : "FrNaissance.periode",
        "short" : "Période des observations",
        "definition" : "Période des observations",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrNaissance.resultat",
        "path" : "FrNaissance.resultat",
        "short" : "Résultat de l’observation effectuée",
        "definition" : "Résultat de l’observation effectuée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrNaissance.identificationNouveauNe",
        "path" : "FrNaissance.identificationNouveauNe",
        "short" : "Identification du nouveau né",
        "definition" : "Identification du nouveau né",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Sujet"
          }
        ]
      },
      {
        "id" : "FrNaissance.observationNaissance",
        "path" : "FrNaissance.observationNaissance",
        "short" : "Observation sur la naissance",
        "definition" : "Observation sur la naissance",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservationGrossesse"
          }
        ]
      }
    ]
  }
}

```
