# Traitement Prescrit - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Traitement Prescrit**

## Logical Model: Traitement Prescrit 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescrit | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrTraitementPrescrit |

 
Entrée Traitement prescrit 

**Usages:**

* Use this Logical Model: [Prescription de médicaments](StructureDefinition-FrPrescriptionMedicaments.md) and [Référence item prescription](StructureDefinition-FrReferenceItemPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrTraitementPrescrit)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrTraitementPrescrit.csv), [Excel](StructureDefinition-FrTraitementPrescrit.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrTraitementPrescrit",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescrit",
  "version" : "0.1.0",
  "name" : "FrTraitementPrescrit",
  "title" : "Traitement Prescrit",
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
  "description" : "Entrée Traitement prescrit",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescrit",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrTraitementPrescrit",
        "path" : "FrTraitementPrescrit",
        "short" : "Traitement Prescrit",
        "definition" : "Entrée Traitement prescrit"
      },
      {
        "id" : "FrTraitementPrescrit.identifiant",
        "path" : "FrTraitementPrescrit.identifiant",
        "short" : "Identifiant de l'entrée",
        "definition" : "Identifiant de l'entrée",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.code",
        "path" : "FrTraitementPrescrit.code",
        "short" : "Acte ou situation",
        "definition" : "Acte ou situation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.description",
        "path" : "FrTraitementPrescrit.description",
        "short" : "Partie narrative de l’entrée",
        "definition" : "Partie narrative de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.status",
        "path" : "FrTraitementPrescrit.status",
        "short" : "Statut de l’entrée",
        "definition" : "Statut de l’entrée",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.dureeTraitement",
        "path" : "FrTraitementPrescrit.dureeTraitement",
        "short" : "Durée du traitement",
        "definition" : "Durée du traitement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.frequenceAdministration",
        "path" : "FrTraitementPrescrit.frequenceAdministration",
        "short" : "Fréquence d'administration",
        "definition" : "Fréquence d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.nombreRenouvellement",
        "path" : "FrTraitementPrescrit.nombreRenouvellement",
        "short" : "Nombre de renouvellement(s) possible(s)",
        "definition" : "Nombre de renouvellement(s) possible(s)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.voieAdministration",
        "path" : "FrTraitementPrescrit.voieAdministration",
        "short" : "Voie d'administration",
        "definition" : "Voie d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.regionAnatomique",
        "path" : "FrTraitementPrescrit.regionAnatomique",
        "short" : "région anatomique d'administration",
        "definition" : "région anatomique d'administration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.dose",
        "path" : "FrTraitementPrescrit.dose",
        "short" : "Dose à administrer",
        "definition" : "Dose à administrer",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.rythmeAdministration[x]",
        "path" : "FrTraitementPrescrit.rythmeAdministration[x]",
        "short" : "Rythme d'administration",
        "definition" : "Rythme d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          },
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.doseMaximale[x]",
        "path" : "FrTraitementPrescrit.doseMaximale[x]",
        "short" : "Dose maximale",
        "definition" : "Dose maximale",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Ratio"
          },
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.produitSante",
        "path" : "FrTraitementPrescrit.produitSante",
        "short" : "Produit de santé",
        "definition" : "Produit de santé",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProduitSante"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.prescripteur",
        "path" : "FrTraitementPrescrit.prescripteur",
        "short" : "Prescripteur",
        "definition" : "Prescripteur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.auteur",
        "path" : "FrTraitementPrescrit.auteur",
        "short" : "Auteur du document Prescription",
        "definition" : "Auteur du document Prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.motifTraitement",
        "path" : "FrTraitementPrescrit.motifTraitement",
        "short" : "Motif du traitement (Référence interne)",
        "definition" : "Motif du traitement (Référence interne)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceInterne"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.traitementPrescritSubordonnee",
        "path" : "FrTraitementPrescrit.traitementPrescritSubordonnee",
        "short" : "Traitement prescrit subordonnée",
        "definition" : "Traitement prescrit subordonnée",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementPrescritSubordonne"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.referenceItemPlanTraitement",
        "path" : "FrTraitementPrescrit.referenceItemPlanTraitement",
        "short" : "Référence à un item du plan de traitement",
        "definition" : "Référence à un item du plan de traitement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrReferenceItemPlanTraitement"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.instructionsPatient",
        "path" : "FrTraitementPrescrit.instructionsPatient",
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
        "id" : "FrTraitementPrescrit.instructionsDispensateur",
        "path" : "FrTraitementPrescrit.instructionsDispensateur",
        "short" : "Instructions au dispensateur",
        "definition" : "Instructions au dispensateur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInstructionsAuDispensateur"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.quantiteProduit",
        "path" : "FrTraitementPrescrit.quantiteProduit",
        "short" : "Quantite de produit",
        "definition" : "Quantite de produit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrQuantiteProduit"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.autorisationSubstitution",
        "path" : "FrTraitementPrescrit.autorisationSubstitution",
        "short" : "Autorisation de substitution",
        "definition" : "Autorisation de substitution",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAutorisationSubstitution"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.periodeRenouvellement",
        "path" : "FrTraitementPrescrit.periodeRenouvellement",
        "short" : "Periode de renouvellement",
        "definition" : "Periode de renouvellement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPeriodeDeRenouvellement"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.enRapportAvecALD",
        "path" : "FrTraitementPrescrit.enRapportAvecALD",
        "short" : "En rapport avec ALD",
        "definition" : "En rapport avec ALD",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEnRapportAvecALD"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.enRapportAvecAccidentTravail",
        "path" : "FrTraitementPrescrit.enRapportAvecAccidentTravail",
        "short" : "En rapport avec accident travail",
        "definition" : "En rapport avec accident travail",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEnRapportAvecAccidentTravail"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.enRapportAvecPrevention",
        "path" : "FrTraitementPrescrit.enRapportAvecPrevention",
        "short" : "En rapport avec la prevention",
        "definition" : "En rapport avec la prevention",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEnRapportAvecLaPrevention"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.nonRemboursable",
        "path" : "FrTraitementPrescrit.nonRemboursable",
        "short" : "Non remboursable",
        "definition" : "Non remboursable",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrNonRemboursable"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.horsAMM",
        "path" : "FrTraitementPrescrit.horsAMM",
        "short" : "Hors AMM",
        "definition" : "Hors AMM",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHorsAMM"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.referencePrescription",
        "path" : "FrTraitementPrescrit.referencePrescription",
        "short" : "Référence de la prescription",
        "definition" : "Référence de la prescription",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrTraitementPrescrit.precondition",
        "path" : "FrTraitementPrescrit.precondition",
        "short" : "Précondition à l'utilisation du médicament",
        "definition" : "Précondition à l'utilisation du médicament",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      }
    ]
  }
}

```
