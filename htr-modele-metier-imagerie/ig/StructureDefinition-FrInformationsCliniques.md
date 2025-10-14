# Informations Cliniques - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informations Cliniques**

## Logical Model: Informations Cliniques 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInformationsCliniques | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:FrInformationsCliniques |

 
Section Informations Cliniques 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrInformationsCliniques)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrInformationsCliniques.csv), [Excel](StructureDefinition-FrInformationsCliniques.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrInformationsCliniques",
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
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInformationsCliniques",
  "version" : "0.1.0",
  "name" : "FrInformationsCliniques",
  "title" : "Informations Cliniques",
  "status" : "draft",
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Section Informations Cliniques",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInformationsCliniques",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrInformationsCliniques",
        "path" : "FrInformationsCliniques",
        "short" : "Informations Cliniques",
        "definition" : "Section Informations Cliniques"
      },
      {
        "id" : "FrInformationsCliniques.titreSection",
        "path" : "FrInformationsCliniques.titreSection",
        "min" : 1
      },
      {
        "id" : "FrInformationsCliniques.sousSection",
        "path" : "FrInformationsCliniques.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrInformationsCliniques.entree",
        "path" : "FrInformationsCliniques.entree",
        "min" : 1
      },
      {
        "id" : "FrInformationsCliniques.entree.antecedentsMedicaux",
        "path" : "FrInformationsCliniques.entree.antecedentsMedicaux",
        "short" : "Observation",
        "definition" : "Observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrInformationsCliniques.entree.antecedentsChirurgicaux",
        "path" : "FrInformationsCliniques.entree.antecedentsChirurgicaux",
        "short" : "Observation",
        "definition" : "Observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrInformationsCliniques.entree.contreIndications",
        "path" : "FrInformationsCliniques.entree.contreIndications",
        "short" : "Observation",
        "definition" : "Observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrInformationsCliniques.entree.probleme",
        "path" : "FrInformationsCliniques.entree.probleme",
        "short" : "Problème",
        "definition" : "Problème",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProbleme"
          }
        ]
      },
      {
        "id" : "FrInformationsCliniques.entree.dispositifMedical",
        "path" : "FrInformationsCliniques.entree.dispositifMedical",
        "short" : "Dispositif médical",
        "definition" : "Dispositif médical",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifMedicalEntry"
          }
        ]
      },
      {
        "id" : "FrInformationsCliniques.entree.statutGrossesse",
        "path" : "FrInformationsCliniques.entree.statutGrossesse",
        "short" : "Statut grossesse",
        "definition" : "Statut grossesse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservationGrossesse"
          }
        ]
      },
      {
        "id" : "FrInformationsCliniques.entree.administrationProduitDeSante",
        "path" : "FrInformationsCliniques.entree.administrationProduitDeSante",
        "short" : "Produits de santé administré avant l'examen d'imagerie",
        "definition" : "Produits de santé administré avant l'examen d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAdministrationProduitDeSante"
          }
        ]
      },
      {
        "id" : "FrInformationsCliniques.entree.sexeClinique",
        "path" : "FrInformationsCliniques.entree.sexeClinique",
        "short" : "Sexe Clinique",
        "definition" : "Sexe Clinique",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
