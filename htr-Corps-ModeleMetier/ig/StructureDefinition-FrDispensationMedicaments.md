# Dispensation médicaments - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dispensation médicaments**

## Logical Model: Dispensation médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispensationMedicaments | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrDispensationMedicaments |

 
Section Dispensation médicaments 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrDispensationMedicaments)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrDispensationMedicaments.csv), [Excel](StructureDefinition-FrDispensationMedicaments.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrDispensationMedicaments",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispensationMedicaments",
  "version" : "0.1.0",
  "name" : "FrDispensationMedicaments",
  "title" : "Dispensation médicaments",
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
  "description" : "Section Dispensation médicaments",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispensationMedicaments",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrDispensationMedicaments",
        "path" : "FrDispensationMedicaments",
        "short" : "Dispensation médicaments",
        "definition" : "Section Dispensation médicaments"
      },
      {
        "id" : "FrDispensationMedicaments.titreSection",
        "path" : "FrDispensationMedicaments.titreSection",
        "min" : 1
      },
      {
        "id" : "FrDispensationMedicaments.sousSection",
        "path" : "FrDispensationMedicaments.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrDispensationMedicaments.entree",
        "path" : "FrDispensationMedicaments.entree",
        "min" : 1
      },
      {
        "id" : "FrDispensationMedicaments.entree.traitementDispense",
        "path" : "FrDispensationMedicaments.entree.traitementDispense",
        "short" : "Entrée Traitement dispensé",
        "definition" : "Entrée Traitement dispensé",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementDispense"
          }
        ]
      },
      {
        "id" : "FrDispensationMedicaments.auteur",
        "path" : "FrDispensationMedicaments.auteur",
        "short" : "Auteur",
        "definition" : "Auteur",
        "min" : 1,
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
