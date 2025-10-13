# Transfert du patient - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transfert du patient**

## Logical Model: Transfert du patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTransfertDuPatient | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTransfertDuPatient |

 
Entrée Transfert du patient 

**Usages:**

* Use this Logical Model: [Résultats d'événements](StructureDefinition-FrResultatsEvenements.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTransfertDuPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTransfertDuPatient.csv), [Excel](StructureDefinition-FrTransfertDuPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTransfertDuPatient",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTransfertDuPatient",
  "version" : "0.1.0",
  "name" : "FrTransfertDuPatient",
  "title" : "Transfert du patient",
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
  "description" : "Entrée Transfert du patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTransfertDuPatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTransfertDuPatient",
        "path" : "FrTransfertDuPatient",
        "short" : "Transfert du patient",
        "definition" : "Entrée Transfert du patient"
      },
      {
        "id" : "FrTransfertDuPatient.identifiant",
        "path" : "FrTransfertDuPatient.identifiant",
        "short" : "Identifiant de l’entrée",
        "definition" : "Identifiant de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrTransfertDuPatient.code",
        "path" : "FrTransfertDuPatient.code",
        "short" : "Code de l’entrée",
        "definition" : "Code de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTransfertDuPatient.description",
        "path" : "FrTransfertDuPatient.description",
        "short" : "Texte décrivant le transfert",
        "definition" : "Texte décrivant le transfert",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrTransfertDuPatient.statut",
        "path" : "FrTransfertDuPatient.statut",
        "short" : "Statut du transfert",
        "definition" : "Statut du transfert",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrTransfertDuPatient.dateTransfert",
        "path" : "FrTransfertDuPatient.dateTransfert",
        "short" : "Date du transfert",
        "definition" : "Date du transfert",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrTransfertDuPatient.destination",
        "path" : "FrTransfertDuPatient.destination",
        "short" : "Destination",
        "definition" : "Destination",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      }
    ]
  }
}

```
