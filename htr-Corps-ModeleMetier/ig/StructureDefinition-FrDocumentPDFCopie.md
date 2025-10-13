# Document PDF copie - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document PDF copie**

## Logical Model: Document PDF copie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentPDFCopie | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDocumentPDFCopie |

 
Section Document PDF-copie 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDocumentPDFCopie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDocumentPDFCopie.csv), [Excel](StructureDefinition-FrDocumentPDFCopie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDocumentPDFCopie",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentPDFCopie",
  "version" : "0.1.0",
  "name" : "FrDocumentPDFCopie",
  "title" : "Document PDF copie",
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
  "description" : "Section Document PDF-copie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentPDFCopie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDocumentPDFCopie",
        "path" : "FrDocumentPDFCopie",
        "short" : "Document PDF copie",
        "definition" : "Section Document PDF-copie"
      },
      {
        "id" : "FrDocumentPDFCopie.titreSection",
        "path" : "FrDocumentPDFCopie.titreSection",
        "min" : 1
      },
      {
        "id" : "FrDocumentPDFCopie.sousSection",
        "path" : "FrDocumentPDFCopie.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrDocumentPDFCopie.entree",
        "path" : "FrDocumentPDFCopie.entree",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "FrDocumentPDFCopie.entree.documentAttache",
        "path" : "FrDocumentPDFCopie.entree.documentAttache",
        "short" : "Entrée Document attaché",
        "definition" : "Entrée Document attaché",
        "min" : 1,
        "max" : "1",
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
