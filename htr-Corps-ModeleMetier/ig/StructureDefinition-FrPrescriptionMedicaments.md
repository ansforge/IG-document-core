# Prescription de médicaments - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prescription de médicaments**

## Logical Model: Prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionMedicaments | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrPrescriptionMedicaments |

 
Section Prescription de médicaments 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrPrescriptionMedicaments)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPrescriptionMedicaments.csv), [Excel](StructureDefinition-FrPrescriptionMedicaments.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPrescriptionMedicaments",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionMedicaments",
  "version" : "0.1.0",
  "name" : "FrPrescriptionMedicaments",
  "title" : "Prescription de médicaments",
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
  "description" : "Section Prescription de médicaments",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionMedicaments",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrPrescriptionMedicaments",
        "path" : "FrPrescriptionMedicaments",
        "short" : "Prescription de médicaments",
        "definition" : "Section Prescription de médicaments"
      },
      {
        "id" : "FrPrescriptionMedicaments.sousSection",
        "path" : "FrPrescriptionMedicaments.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrPrescriptionMedicaments.entree",
        "path" : "FrPrescriptionMedicaments.entree",
        "min" : 1
      },
      {
        "id" : "FrPrescriptionMedicaments.entree.traitementPrescrit",
        "path" : "FrPrescriptionMedicaments.entree.traitementPrescrit",
        "short" : "Entrée Traitement prescrit",
        "definition" : "Entrée Traitement prescrit",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescrit"
          }
        ]
      },
      {
        "id" : "FrPrescriptionMedicaments.auteur",
        "path" : "FrPrescriptionMedicaments.auteur",
        "short" : "Auteur de la prescription",
        "definition" : "Auteur de la prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      }
    ]
  }
}

```
