# Documents ajoutés - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Documents ajoutés**

## Logical Model: Documents ajoutés 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentsAjoutes | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDocumentsAjoutes |

 
Section Documents ajoutés 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDocumentsAjoutes)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDocumentsAjoutes.csv), [Excel](StructureDefinition-FrDocumentsAjoutes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDocumentsAjoutes",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentsAjoutes",
  "version" : "0.1.0",
  "name" : "FrDocumentsAjoutes",
  "title" : "Documents ajoutés",
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
  "description" : "Section Documents ajoutés",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentsAjoutes",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDocumentsAjoutes",
        "path" : "FrDocumentsAjoutes",
        "short" : "Documents ajoutés",
        "definition" : "Section Documents ajoutés"
      },
      {
        "id" : "FrDocumentsAjoutes.sousSection",
        "path" : "FrDocumentsAjoutes.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrDocumentsAjoutes.entree.simpleObservation",
        "path" : "FrDocumentsAjoutes.entree.simpleObservation",
        "short" : "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés",
        "definition" : "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrDocumentsAjoutes.entree.documentAttache",
        "path" : "FrDocumentsAjoutes.entree.documentAttache",
        "short" : "Entrée Document attaché",
        "definition" : "Entrée Document attaché",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentAttache"
          }
        ]
      }
    ]
  }
}

```
