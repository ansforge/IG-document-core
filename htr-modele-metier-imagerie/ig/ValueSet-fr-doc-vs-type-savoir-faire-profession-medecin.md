# Fr ValueSet Type Savoir-faire Profession Medecin - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fr ValueSet Type Savoir-faire Profession Medecin**

## ValueSet: Fr ValueSet Type Savoir-faire Profession Medecin 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-type-savoir-faire-profession-medecin | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRValueSetTypeSavoirFaireProfessionMedecin |

 
Type Savoir-faire pour la profession 10 (Médecin) 

 **References** 

* [Fr Practitioner Document](StructureDefinition-fr-practitioner-document.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire`](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R04-TypeSavoirFaire.html)version 📦20250625120000

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-doc-vs-type-savoir-faire-profession-medecin",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-type-savoir-faire-profession-medecin",
  "version" : "0.1.0",
  "name" : "FRValueSetTypeSavoirFaireProfessionMedecin",
  "title" : "Fr ValueSet Type Savoir-faire Profession Medecin",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-21T10:48:05+00:00",
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
  "description" : "Type Savoir-faire pour la profession 10 (Médecin)",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "concept" : [
          {
            "code" : "OP",
            "display" : "Orientation particulière"
          },
          {
            "code" : "C",
            "display" : "Compétence"
          },
          {
            "code" : "CAPA",
            "display" : "Capacité"
          },
          {
            "code" : "CEX",
            "display" : "Compétence exclusive"
          },
          {
            "code" : "DEC",
            "display" : "Droit d'exercice complémentaire"
          },
          {
            "code" : "DNQ",
            "display" : "DESC non qualifiant"
          },
          {
            "code" : "PAC",
            "display" : "Qualification Praticien adjoint contractuel (PAC)"
          },
          {
            "code" : "S",
            "display" : "Spécialité ordinale (SM)"
          },
          {
            "code" : "SST",
            "display" : "Surspécialité de Formation Spécialisée Transversale (FST)"
          },
          {
            "code" : "SH",
            "display" : "Spécialité de concours hospitalier (SCH)"
          }
        ]
      }
    ]
  }
}

```
