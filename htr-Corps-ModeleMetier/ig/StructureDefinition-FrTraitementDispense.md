# Traitement dispensé - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Traitement dispensé**

## Logical Model: Traitement dispensé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementDispense | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTraitementDispense |

 
Entrée Traitement dispense 

**Usages:**

* Use this Logical Model: [Dispensation médicaments](StructureDefinition-FrDispensationMedicaments.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTraitementDispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTraitementDispense.csv), [Excel](StructureDefinition-FrTraitementDispense.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTraitementDispense",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementDispense",
  "version" : "0.1.0",
  "name" : "FrTraitementDispense",
  "title" : "Traitement dispensé",
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
  "description" : "Entrée Traitement dispense",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTraitementDispense",
        "path" : "FrTraitementDispense",
        "short" : "Traitement dispensé",
        "definition" : "Entrée Traitement dispense"
      },
      {
        "id" : "FrTraitementDispense.identifiant",
        "path" : "FrTraitementDispense.identifiant",
        "short" : "Identifiant de l’entrée",
        "definition" : "Identifiant de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier"
            ]
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.code",
        "path" : "FrTraitementDispense.code",
        "short" : "Complétude de la dispensation",
        "definition" : "Complétude de la dispensation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.description",
        "path" : "FrTraitementDispense.description",
        "short" : "Texte de l'entrée",
        "definition" : "Texte de l'entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.quantite",
        "path" : "FrTraitementDispense.quantite",
        "short" : "Quantité : Unité issue de EDQM Packaging",
        "definition" : "Quantité : Unité issue de EDQM Packaging",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.medicamentDelivre",
        "path" : "FrTraitementDispense.medicamentDelivre",
        "short" : "Médicament délivré",
        "definition" : "Médicament délivré",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.referencePrescription",
        "path" : "FrTraitementDispense.referencePrescription",
        "short" : "Référence de la prescription",
        "definition" : "Référence de la prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPrescription"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.traitement",
        "path" : "FrTraitementDispense.traitement",
        "short" : "Posologie",
        "definition" : "Posologie",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.instructionsPatient",
        "path" : "FrTraitementDispense.instructionsPatient",
        "short" : "Instructions au patient",
        "definition" : "Instructions au patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsPatient"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.notesDispensateur",
        "path" : "FrTraitementDispense.notesDispensateur",
        "short" : "Notes du dispensateur",
        "definition" : "Notes du dispensateur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrNotesDispensateur"
          }
        ]
      },
      {
        "id" : "FrTraitementDispense.substitution",
        "path" : "FrTraitementDispense.substitution",
        "short" : "Substitution",
        "definition" : "Substitution",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActeSubstitution"
          }
        ]
      }
    ]
  }
}

```
