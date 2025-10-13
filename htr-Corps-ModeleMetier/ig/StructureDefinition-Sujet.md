# Sujet - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sujet**

## Logical Model: Sujet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Sujet | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:Sujet |

 
Modèle logique métier de l’élément Sujet 

**Usages:**

* Use this Logical Model: [Antécédents familiaux](StructureDefinition-FrAntecedentsFamiliauxEntry.md) and [Naissance](StructureDefinition-FrNaissance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/Sujet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Sujet.csv), [Excel](StructureDefinition-Sujet.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Sujet",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Sujet",
  "version" : "0.1.0",
  "name" : "Sujet",
  "title" : "Sujet",
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
  "description" : "Modèle logique métier de l'élément Sujet",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Sujet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Sujet",
        "path" : "Sujet",
        "short" : "Sujet",
        "definition" : "Modèle logique métier de l'élément Sujet"
      },
      {
        "id" : "Sujet.lienPatient",
        "path" : "Sujet.lienPatient",
        "short" : "Lien avec le patient",
        "definition" : "Lien avec le patient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Sujet.adresse",
        "path" : "Sujet.adresse",
        "short" : "Adresse",
        "definition" : "Adresse",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "Sujet.telecom",
        "path" : "Sujet.telecom",
        "short" : "Télécom",
        "definition" : "Télécom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "Sujet.sujet",
        "path" : "Sujet.sujet",
        "short" : "Sujet",
        "definition" : "Sujet",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.identifiants",
        "path" : "Sujet.sujet.identifiants",
        "short" : "Identifiants du sujet",
        "definition" : "Identifiants du sujet",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.nomPrenom",
        "path" : "Sujet.sujet.nomPrenom",
        "short" : "Nom et prénom",
        "definition" : "Nom et prénom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.nomPrenom.nom",
        "path" : "Sujet.sujet.nomPrenom.nom",
        "short" : "Nom",
        "definition" : "Nom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.nomPrenom.prenom",
        "path" : "Sujet.sujet.nomPrenom.prenom",
        "short" : "Prénom",
        "definition" : "Prénom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.nomPrenom.civilite",
        "path" : "Sujet.sujet.nomPrenom.civilite",
        "short" : "Civilité",
        "definition" : "Civilité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.nomPrenom.titre",
        "path" : "Sujet.sujet.nomPrenom.titre",
        "short" : "Titre",
        "definition" : "Titre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.sexeSujet",
        "path" : "Sujet.sujet.sexeSujet",
        "short" : "Sexe du sujet",
        "definition" : "Sexe du sujet",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.dateNaissanceSujet",
        "path" : "Sujet.sujet.dateNaissanceSujet",
        "short" : "Date de naissance du sujet",
        "definition" : "Date de naissance du sujet",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.sujetDecede",
        "path" : "Sujet.sujet.sujetDecede",
        "short" : "Sujet décédé",
        "definition" : "Sujet décédé",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.dateHeureDeces",
        "path" : "Sujet.sujet.dateHeureDeces",
        "short" : "Date et heure du décès",
        "definition" : "Date et heure du décès",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.naissanceMultiple",
        "path" : "Sujet.sujet.naissanceMultiple",
        "short" : "Sujet né d’une naissance multiple",
        "definition" : "Sujet né d’une naissance multiple",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Sujet.sujet.rangNaissance",
        "path" : "Sujet.sujet.rangNaissance",
        "short" : "Rang de naissance (en cas de naissances multiples)",
        "definition" : "Rang de naissance (en cas de naissances multiples)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
