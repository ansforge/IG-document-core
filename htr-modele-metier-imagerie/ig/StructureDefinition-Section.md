# * Section - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* *** Section**

## Logical Model: * Section 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:Section |

 
Modèle logique métier : Section 

**Usages:**

* Derived from this Logical Model: [Acte d'imagerie](StructureDefinition-FrActeImagerie.md), [Addendum](StructureDefinition-FrAddendum.md), [Comparaison d'examens d'imagerie](StructureDefinition-FrComparaisonExamensImagerie.md), [Complications Acte](StructureDefinition-FrComplicationsActe.md)...Show 10 more,[Conclusion examen d'imagerie](StructureDefinition-FrConclusionExamenImagerie.md),[Demande d'examen d'imagerie](StructureDefinition-FrDemandeExamenImagerie.md),[Dispositifs medicaux](StructureDefinition-FrDispositifsMedicaux.md),[Documents ajoutés](StructureDefinition-FrDocumentsAjoutes.md),[Education du patient](StructureDefinition-FrEducationPatient.md),[Exposition aux radiations](StructureDefinition-FrExpositionRadiations.md),[Informations Cliniques](StructureDefinition-FrInformationsCliniques.md),[Object Catalog](StructureDefinition-FrObjectCatalog.md),[Résultats d'examen d'imagerie](StructureDefinition-FrResultatsExamenImagerie.md)and[Résultats d'examens (non codée)](StructureDefinition-FrResultatsExamensNonCode.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/Section)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Section.csv), [Excel](StructureDefinition-Section.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Section",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "version" : "0.1.0",
  "name" : "Section",
  "title" : "* Section",
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
  "description" : "Modèle logique métier : Section",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Section",
        "path" : "Section",
        "short" : "* Section",
        "definition" : "Modèle logique métier : Section"
      },
      {
        "id" : "Section.codeSection",
        "path" : "Section.codeSection",
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
        "id" : "Section.titreSection",
        "path" : "Section.titreSection",
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
        "id" : "Section.blocNarratif",
        "path" : "Section.blocNarratif",
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
        "id" : "Section.sousSection",
        "path" : "Section.sousSection",
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
        "id" : "Section.entree",
        "path" : "Section.entree",
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
