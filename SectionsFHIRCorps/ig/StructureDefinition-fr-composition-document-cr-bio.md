# FR Composition Document CR BIO - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Composition Document CR BIO**

## Resource Profile: FR Composition Document CR BIO 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document-cr-bio | *Version*:0.1.0 |
| Draft as of 2026-01-16 | *Computable Name*:FRCompositionDocumentCRBIO |

 
Ce profil est utilisé pour représenter un compte rendu de BIO. 

**Utilisations:**

* Ce Profil nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-composition-document-cr-bio)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-composition-document-cr-bio.csv), [Excel](StructureDefinition-fr-composition-document-cr-bio.xlsx), [Schematron](StructureDefinition-fr-composition-document-cr-bio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-composition-document-cr-bio",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document-cr-bio",
  "version" : "0.1.0",
  "name" : "FRCompositionDocumentCRBIO",
  "title" : "FR Composition Document CR BIO",
  "status" : "draft",
  "date" : "2026-01-16T14:35:31+00:00",
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
  "description" : "Ce profil est utilisé pour représenter un compte rendu de BIO.",
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
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "exists",
              "path" : "$this.section"
            },
            {
              "type" : "exists",
              "path" : "$this.entry"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "definition" : "Le compte-rendu de BIO comportant deux niveaux de sections : \n- les sections de niveau supérieur DOIT contenir :\n        - soit un bloc de texte contenant tous les résultats textuels produits ainsi que des entrées, \n        - soit un ensemble de sous-sections : une batterie d'examen, une étude d’échantillon (en particulier en microbiologie), ou un test individuel.\n         De plus, toute sous-section DOIT contenir une entrée de données de laboratoire contenant les observations de cette section dans un format lisible par machine."
      },
      {
        "id" : "Composition.section:sans-sous-sections",
        "path" : "Composition.section",
        "sliceName" : "sans-sous-sections",
        "short" : "Chapitre de BIO avec des entrées et aucune sous-section",
        "definition" : "Toutes les entrées de BIO sont fournies dans les sections de niveau supérieur et aucune sous-section n’est autorisée.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:sans-sous-sections.extension:change-made",
        "path" : "Composition.section.extension",
        "sliceName" : "change-made"
      },
      {
        "id" : "Composition.section:sans-sous-sections.title",
        "path" : "Composition.section.title",
        "patternString" : "Titre du chapitre"
      },
      {
        "id" : "Composition.section:sans-sous-sections.code",
        "path" : "Composition.section.code",
        "short" : "Le code du chapitre doit être un code issu du jeu de valeurs Circuit de la biologie (disponible sur bioloinc.fr), onglet ‘2.Chapitres LOINC’ et contenant les codes et libellés traduits en français pour la biologie."
      },
      {
        "id" : "Composition.section:sans-sous-sections.text",
        "path" : "Composition.section.text",
        "short" : "Partie narrative de la section"
      },
      {
        "id" : "Composition.section:sans-sous-sections.entry",
        "path" : "Composition.section.entry",
        "short" : "Entrée Résultats d'examens de biologie médicale",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sans-sous-sections.section",
        "path" : "Composition.section.section",
        "max" : "0"
      },
      {
        "id" : "Composition.section:avec-sous-sections",
        "path" : "Composition.section",
        "sliceName" : "avec-sous-sections",
        "short" : "Chapitre de BIO avec des sous-sections",
        "definition" : "Cette section de niveau supérieur n’inclut NI un texte de niveau supérieur NI des entrées. \n  Chaque élément du CR est contenu dans une sous-section.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:avec-sous-sections.extension:change-made",
        "path" : "Composition.section.extension",
        "sliceName" : "change-made"
      },
      {
        "id" : "Composition.section:avec-sous-sections.title",
        "path" : "Composition.section.title",
        "short" : "Titre du chapitre"
      },
      {
        "id" : "Composition.section:avec-sous-sections.entry",
        "path" : "Composition.section.entry",
        "max" : "0"
      },
      {
        "id" : "Composition.section:avec-sous-sections.section",
        "path" : "Composition.section.section",
        "short" : "Sous-chapitre du compte rendu (section de 2nd niveau)",
        "min" : 1,
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "Composition.section:avec-sous-sections.section.title",
        "path" : "Composition.section.section.title",
        "short" : "Titre du sous-chapitre"
      },
      {
        "id" : "Composition.section:avec-sous-sections.section.code",
        "path" : "Composition.section.section.code",
        "short" : "Le code du chapitre doit être un code issu du jeu de valeurs Circuit de la biologie (disponible sur bioloinc.fr), onglet ‘2.Chapitres LOINC’ et contenant les codes et libellés traduits en français pour la biologie.",
        "min" : 1
      },
      {
        "id" : "Composition.section:avec-sous-sections.section.text",
        "path" : "Composition.section.section.text",
        "short" : "Partie narrative de la section."
      },
      {
        "id" : "Composition.section:avec-sous-sections.section.entry",
        "path" : "Composition.section.section.entry",
        "short" : "Entrée Résultats d'examens de biologie médicale",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:avec-sous-sections.section.section",
        "path" : "Composition.section.section.section",
        "max" : "0"
      },
      {
        "id" : "Composition.section:commentaires",
        "path" : "Composition.section",
        "sliceName" : "commentaires",
        "short" : "Section Commentaires",
        "definition" : "Commentaire sous forme textuelle.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:commentaires.extension:change-made",
        "path" : "Composition.section.extension",
        "sliceName" : "change-made"
      },
      {
        "id" : "Composition.section:commentaires.title",
        "path" : "Composition.section.title",
        "short" : "Titre de la section"
      },
      {
        "id" : "Composition.section:commentaires.code",
        "path" : "Composition.section.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "55112-7",
              "display" : "Commentaire"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:commentaires.text",
        "path" : "Composition.section.text",
        "short" : "Partie narrative de la section."
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation",
        "path" : "Composition.section",
        "sliceName" : "raisonDeLaRecommandation",
        "short" : "Section Raison de la recommandation",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation.extension:change-made",
        "path" : "Composition.section.extension",
        "sliceName" : "change-made"
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation.title",
        "path" : "Composition.section.title",
        "short" : "Titre de la section"
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation.code",
        "path" : "Composition.section.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "42349-1",
              "display" : "Raison de la recommandation"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation.text",
        "path" : "Composition.section.text",
        "short" : "Partie narrative de la section."
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation.entry:observation",
        "path" : "Composition.section.entry",
        "sliceName" : "observation",
        "short" : "Observation liée à la raison de la recommandation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
          }
        ]
      },
      {
        "id" : "Composition.section:raisonDeLaRecommandation.entry:probleme",
        "path" : "Composition.section.entry",
        "sliceName" : "probleme",
        "short" : "Problème ou condition justifiant la recommandation",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:vaccinations",
        "path" : "Composition.section",
        "sliceName" : "vaccinations",
        "short" : "Section Vaccinations",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:vaccinations.extension:change-made",
        "path" : "Composition.section.extension",
        "sliceName" : "change-made"
      },
      {
        "id" : "Composition.section:vaccinations.title",
        "path" : "Composition.section.title",
        "short" : "Titre de la section"
      },
      {
        "id" : "Composition.section:vaccinations.code",
        "path" : "Composition.section.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "11369-6",
              "display" : "Historique des vaccinations"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:vaccinations.text",
        "path" : "Composition.section.text",
        "short" : "Partie narrative de la section."
      },
      {
        "id" : "Composition.section:vaccinations.entry",
        "path" : "Composition.section.entry",
        "short" : "Entrée Vaccination",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-immunization-document"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention",
        "path" : "Composition.section",
        "sliceName" : "resultatsSecondeIntention",
        "short" : "Section Résultats de laboratoire de biologie de seconde intention",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention.extension:change-made",
        "path" : "Composition.section.extension",
        "sliceName" : "change-made"
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention.title",
        "path" : "Composition.section.title",
        "short" : "Titre de la section"
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention.code",
        "path" : "Composition.section.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "101792-0",
              "display" : "Résultats de laboratoire scannés"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention.text",
        "path" : "Composition.section.text",
        "short" : "Partie narrative de la section."
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention.entry:observation",
        "path" : "Composition.section.entry",
        "sliceName" : "observation",
        "short" : "Observation du résultat",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
          }
        ]
      },
      {
        "id" : "Composition.section:resultatsSecondeIntention.entry:documentAttache",
        "path" : "Composition.section.entry",
        "sliceName" : "documentAttache",
        "short" : "Document attaché",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-document-reference-document"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:documentPDFCopie",
        "path" : "Composition.section",
        "sliceName" : "documentPDFCopie",
        "short" : "Section Document-PDF-copie",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:documentPDFCopie.extension:change-made",
        "path" : "Composition.section.extension",
        "sliceName" : "change-made"
      },
      {
        "id" : "Composition.section:documentPDFCopie.title",
        "path" : "Composition.section.title",
        "short" : "Titre de la section"
      },
      {
        "id" : "Composition.section:documentPDFCopie.code",
        "path" : "Composition.section.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "55108-5",
              "display" : "Copie du document"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:documentPDFCopie.text",
        "path" : "Composition.section.text",
        "short" : "Partie narrative de la section."
      },
      {
        "id" : "Composition.section:documentPDFCopie.entry",
        "path" : "Composition.section.entry",
        "short" : "Document attaché",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-document-reference-document"
            ]
          }
        ]
      }
    ]
  }
}

```
