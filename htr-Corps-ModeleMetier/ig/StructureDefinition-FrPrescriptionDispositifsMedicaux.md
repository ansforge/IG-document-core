# Prescription de dispositifs médicaux - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prescription de dispositifs médicaux**

## Logical Model: Prescription de dispositifs médicaux 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionDispositifsMedicaux | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrPrescriptionDispositifsMedicaux |

 
Section Prescription de dispositifs médicaux 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrPrescriptionDispositifsMedicaux)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrPrescriptionDispositifsMedicaux.csv), [Excel](StructureDefinition-FrPrescriptionDispositifsMedicaux.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrPrescriptionDispositifsMedicaux",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionDispositifsMedicaux",
  "version" : "0.1.0",
  "name" : "FrPrescriptionDispositifsMedicaux",
  "title" : "Prescription de dispositifs médicaux",
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
  "description" : "Section Prescription de dispositifs médicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionDispositifsMedicaux",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrPrescriptionDispositifsMedicaux",
        "path" : "FrPrescriptionDispositifsMedicaux",
        "short" : "Prescription de dispositifs médicaux",
        "definition" : "Section Prescription de dispositifs médicaux"
      },
      {
        "id" : "FrPrescriptionDispositifsMedicaux.sousSection",
        "path" : "FrPrescriptionDispositifsMedicaux.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrPrescriptionDispositifsMedicaux.entree",
        "path" : "FrPrescriptionDispositifsMedicaux.entree",
        "min" : 1
      },
      {
        "id" : "FrPrescriptionDispositifsMedicaux.entree.dispositifMedical",
        "path" : "FrPrescriptionDispositifsMedicaux.entree.dispositifMedical",
        "short" : "Entrée Dispositif médical prescrit",
        "definition" : "Entrée Dispositif médical prescrit",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifMedicalEntry"
          }
        ]
      },
      {
        "id" : "FrPrescriptionDispositifsMedicaux.auteur",
        "path" : "FrPrescriptionDispositifsMedicaux.auteur",
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
