# Modèle logique métier - FR LM Section - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Section**

## Logical Model: Modèle logique métier - FR LM Section 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMSection |

 
Section 

**Usages:**

* Derived from this Logical Model: [Modèle logique métier - FR LM Acte d'imagerie](StructureDefinition-fr-lm-acte-imagerie.md), [Modèle logique métier - FR LM Addendum](StructureDefinition-fr-lm-addendum.md), [Modèle logique métier - FR LM Comparaison d'examens d'imagerie](StructureDefinition-fr-lm-comparaison-examens-imagerie.md), [Modèle logique métier - FR LM Complications Acte](StructureDefinition-fr-lm-complications-acte.md)...Show 10 more,[Modèle logique métier - FR LM Conclusion examen d'imagerie](StructureDefinition-fr-lm-conclusion-examen-imagerie.md),[Modèle logique métier - FR LM Demande d'examen d'imagerie](StructureDefinition-fr-lm-demande-examen-imagerie.md),[Modèle logique métier - FR LM Dispositifs medicaux](StructureDefinition-fr-lm-dispositifs-medicaux.md),[Modèle logique métier - FR LM Documents ajoutés](StructureDefinition-fr-lm-documents-ajoutes.md),[Modèle logique métier - FR LM Education du patient](StructureDefinition-fr-lm-education-patient.md),[Modèle logique métier - FR LM Exposition aux radiations](StructureDefinition-fr-lm-exposition-radiations.md),[Modèle logique métier - FR LM Informations Cliniques](StructureDefinition-fr-lm-informations-cliniques.md),[Modèle logique métier - FR LM Object Catalog](StructureDefinition-fr-lm-object-catalog.md),[Modèle logique métier - FR LM Résultats d'examen d'imagerie](StructureDefinition-fr-lm-resultats-examen-imagerie.md)and[Modèle logique métier - FR LM Résultats d'examens (non codée)](StructureDefinition-fr-lm-resultats-examens-non-code.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-section)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-section.csv), [Excel](StructureDefinition-fr-lm-section.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-section",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "version" : "0.1.0",
  "name" : "FRLMSection",
  "title" : "Modèle logique métier - FR LM Section",
  "status" : "draft",
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
  "description" : "Section",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-section",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-section",
        "path" : "fr-lm-section",
        "short" : "Modèle logique métier - FR LM Section",
        "definition" : "Section"
      },
      {
        "id" : "fr-lm-section.codeSection",
        "path" : "fr-lm-section.codeSection",
        "short" : "Code de la section",
        "definition" : "Code de la section",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-section.titreSection",
        "path" : "fr-lm-section.titreSection",
        "short" : "Titre de la section",
        "definition" : "Titre de la section",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "fr-lm-section.blocNarratif",
        "path" : "fr-lm-section.blocNarratif",
        "short" : "Bloc narratif",
        "definition" : "Bloc narratif",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "fr-lm-section.sousSection",
        "path" : "fr-lm-section.sousSection",
        "short" : "Sous-sections",
        "definition" : "Sous-sections",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-lm-section.entree",
        "path" : "fr-lm-section.entree",
        "short" : "Entrées",
        "definition" : "Entrées",
        "min" : 0,
        "max" : "*",
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
