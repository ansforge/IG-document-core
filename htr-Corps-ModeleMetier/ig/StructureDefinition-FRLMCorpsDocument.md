# * Modèle logique métier du corps - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* *** Modèle logique métier du corps**

## Logical Model: * Modèle logique métier du corps 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FRLMCorpsDocument | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMCorpsDocument |

 
Eléments métier du corps d’un document 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FRLMCorpsDocument)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FRLMCorpsDocument.csv), [Excel](StructureDefinition-FRLMCorpsDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMCorpsDocument",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FRLMCorpsDocument",
  "version" : "0.1.0",
  "name" : "FRLMCorpsDocument",
  "title" : "* Modèle logique métier du corps",
  "status" : "draft",
  "date" : "2025-10-21T08:19:27+00:00",
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
  "description" : "Eléments métier du corps d'un document",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FRLMCorpsDocument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FRLMCorpsDocument",
        "path" : "FRLMCorpsDocument",
        "short" : "* Modèle logique métier du corps",
        "definition" : "Eléments métier du corps d'un document"
      },
      {
        "id" : "FRLMCorpsDocument.allergiesEtHypersensibilites",
        "path" : "FRLMCorpsDocument.allergiesEtHypersensibilites",
        "short" : "Section Allergies et hypersensibilités",
        "definition" : "Section Allergies et hypersensibilités",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergies-et-hypersensibilites"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.antecedentsFamiliaux",
        "path" : "FRLMCorpsDocument.antecedentsFamiliaux",
        "short" : "Section Antécédents familiaux",
        "definition" : "Section Antécédents familiaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-familiaux"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.antecedentsMedicaux",
        "path" : "FRLMCorpsDocument.antecedentsMedicaux",
        "short" : "Section Antécédents médicaux",
        "definition" : "Section Antécédents médicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-medicaux"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.codesAbarres",
        "path" : "FRLMCorpsDocument.codesAbarres",
        "short" : "Section Codes à barres",
        "definition" : "Section Codes à barres",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-codes-a-barres"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.commentaireNonCode",
        "path" : "FRLMCorpsDocument.commentaireNonCode",
        "short" : "Section Commentaire (Non-Codé)",
        "definition" : "Section Commentaire (Non-Codé)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-commentaire-non-code"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.cRBIOChapitre",
        "path" : "FRLMCorpsDocument.cRBIOChapitre",
        "short" : "section Compte rendu de biologie de 1er niveau",
        "definition" : "section Compte rendu de biologie de 1er niveau",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-cr-bio-chapitre"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.cRBIOSousChapitre",
        "path" : "FRLMCorpsDocument.cRBIOSousChapitre",
        "short" : "Section Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)",
        "definition" : "Section Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-cr-bio-sous-chapitre"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.acteImagerie",
        "path" : "FRLMCorpsDocument.acteImagerie",
        "short" : "Section Acte d'imagerie",
        "definition" : "Section Acte d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-imagerie"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.addendum",
        "path" : "FRLMCorpsDocument.addendum",
        "short" : "Section Addendum",
        "definition" : "Section Addendum",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.conclusions",
        "path" : "FRLMCorpsDocument.conclusions",
        "short" : "Section Conclusions",
        "definition" : "Section Conclusions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion-examen-imagerie"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.demandeExamenImagerie",
        "path" : "FRLMCorpsDocument.demandeExamenImagerie",
        "short" : "Section Demande d'examen",
        "definition" : "Section Demande d'examen",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-demande-examen-imagerie"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.comparaisonExamensImagerie",
        "path" : "FRLMCorpsDocument.comparaisonExamensImagerie",
        "short" : "Section Examen comparatif",
        "definition" : "Section Examen comparatif",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparaison-examens-imagerie"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.expositionRadiations",
        "path" : "FRLMCorpsDocument.expositionRadiations",
        "short" : "Section Exposition aux radiations",
        "definition" : "Section Exposition aux radiations",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposition-radiations"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.informationsCliniques",
        "path" : "FRLMCorpsDocument.informationsCliniques",
        "short" : "Section Informations cliniques",
        "definition" : "Section Informations cliniques",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informations-cliniques"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.objectCatalog",
        "path" : "FRLMCorpsDocument.objectCatalog",
        "short" : "Section  Object catalog",
        "definition" : "Section  Object catalog",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.directivesAnticipees",
        "path" : "FRLMCorpsDocument.directivesAnticipees",
        "short" : "Section Directives anticipées",
        "definition" : "Section Directives anticipées",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directives-anticipees"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.dispensationMedicaments",
        "path" : "FRLMCorpsDocument.dispensationMedicaments",
        "short" : "Section Dispensation médicaments",
        "definition" : "Section Dispensation médicaments",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispensation-medicaments"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.dispositifsMedicaux",
        "path" : "FRLMCorpsDocument.dispositifsMedicaux",
        "short" : "Section Dispositifs medicaux",
        "definition" : "Section Dispositifs medicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispositifs-medicaux"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.documentPDFCopie",
        "path" : "FRLMCorpsDocument.documentPDFCopie",
        "short" : "Section Document PDF Copie",
        "definition" : "Section Document PDF Copie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-pdf-copie"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.documentsAjoutes",
        "path" : "FRLMCorpsDocument.documentsAjoutes",
        "short" : "Section Documents ajoutés",
        "definition" : "Section Documents ajoutés",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-documents-ajoutes"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.educationPatient",
        "path" : "FRLMCorpsDocument.educationPatient",
        "short" : "Section Education du patient",
        "definition" : "Section Education du patient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-education-patient"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.effetsIndesirables",
        "path" : "FRLMCorpsDocument.effetsIndesirables",
        "short" : "Section Effets indesirables",
        "definition" : "Section Effets indesirables",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.facteursDeRisqueProfessionnelsNonCode",
        "path" : "FRLMCorpsDocument.facteursDeRisqueProfessionnelsNonCode",
        "short" : "Section Facteurs de risque professionnels non Codé",
        "definition" : "Section Facteurs de risque professionnels non Codé",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-facteurs-de-risque-professionnels-non-code"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.fonctionsPhysiques",
        "path" : "FRLMCorpsDocument.fonctionsPhysiques",
        "short" : "Section Fonctions physiques",
        "definition" : "Section Fonctions physiques",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-fonctions-physiques"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.habitusModeDeVie",
        "path" : "FRLMCorpsDocument.habitusModeDeVie",
        "short" : "Section Habitus et modes de vie",
        "definition" : "Section Habitus et modes de vie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.historiqueDesActes",
        "path" : "FRLMCorpsDocument.historiqueDesActes",
        "short" : "Section Historique des actes",
        "definition" : "Section Historique des actes",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-des-actes"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.historiqueDesGrossesses",
        "path" : "FRLMCorpsDocument.historiqueDesGrossesses",
        "short" : "Section Historique des grossesses",
        "definition" : "Section Historique des grossesses",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-des-grossesses"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.planSoins",
        "path" : "FRLMCorpsDocument.planSoins",
        "short" : "Section Plan de Soins",
        "definition" : "Section Plan de Soins",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-plan-soins"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.pointsDeVigilancesNonCode",
        "path" : "FRLMCorpsDocument.pointsDeVigilancesNonCode",
        "short" : "Section Points de Vigilances non code",
        "definition" : "Section Points de Vigilances non code",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-points-de-vigilances-non-code"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.prescriptionDispositifsMedicaux",
        "path" : "FRLMCorpsDocument.prescriptionDispositifsMedicaux",
        "short" : "Section Prescription de dispositifs médicaux",
        "definition" : "Section Prescription de dispositifs médicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription-dispositifs-medicaux"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.prescriptionMedicaments",
        "path" : "FRLMCorpsDocument.prescriptionMedicaments",
        "short" : "Section Prescription médicaments",
        "definition" : "Section Prescription médicaments",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription-medicaments"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.problemesActifs",
        "path" : "FRLMCorpsDocument.problemesActifs",
        "short" : "Section Problemès Actifs",
        "definition" : "Section Problemès Actifs",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-problemes-actifs"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.raisonRecommandationNonCode",
        "path" : "FRLMCorpsDocument.raisonRecommandationNonCode",
        "short" : "Section Raison de la recommandation (non Codé)",
        "definition" : "Section Raison de la recommandation (non Codé)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-raison-recommandation-non-code"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.raisonRecommandation",
        "path" : "FRLMCorpsDocument.raisonRecommandation",
        "short" : "Section Raison de la recommandation",
        "definition" : "Section Raison de la recommandation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-raison-recommandation"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.resultatsLaboratoireBiologieSecondeIntention",
        "path" : "FRLMCorpsDocument.resultatsLaboratoireBiologieSecondeIntention",
        "short" : "Section Résultats de laboratoire de biologie de seconde intention",
        "definition" : "Section Résultats de laboratoire de biologie de seconde intention",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-laboratoire-biologie-seconde-intention"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.resultatsEvenements",
        "path" : "FRLMCorpsDocument.resultatsEvenements",
        "short" : "Section Resultats d'évenements",
        "definition" : "Section Resultats d'évenements",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-evenements"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.resultatsExamensNonCode",
        "path" : "FRLMCorpsDocument.resultatsExamensNonCode",
        "short" : "Section Resultats d'xamens (non Codée)",
        "definition" : "Section Resultats d'xamens (non Codée)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens-non-code"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.resultatsExamens",
        "path" : "FRLMCorpsDocument.resultatsExamens",
        "short" : "Section Résultats d'examens",
        "definition" : "Section Résultats d'examens",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.resultats",
        "path" : "FRLMCorpsDocument.resultats",
        "short" : "Section Resultats",
        "definition" : "Section Resultats",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.signesVitaux",
        "path" : "FRLMCorpsDocument.signesVitaux",
        "short" : "Section Signes vitaux",
        "definition" : "Section Signes vitaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-signes-vitaux"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.statutDocument",
        "path" : "FRLMCorpsDocument.statutDocument",
        "short" : "Section Statut du document",
        "definition" : "Section Statut du document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-document"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.statutFonctionnel",
        "path" : "FRLMCorpsDocument.statutFonctionnel",
        "short" : "Section Statut fonctionnel",
        "definition" : "Section Statut fonctionnel",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-fonctionnel"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.traitements",
        "path" : "FRLMCorpsDocument.traitements",
        "short" : "Section Traitement",
        "definition" : "Section Traitement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.traitementSortie",
        "path" : "FRLMCorpsDocument.traitementSortie",
        "short" : "Section Traitement à la sortie",
        "definition" : "Section Traitement à la sortie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-sortie"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.traitementsAdministres",
        "path" : "FRLMCorpsDocument.traitementsAdministres",
        "short" : "Section Traitements administrés",
        "definition" : "Section Traitements administrés",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements-administres"
          }
        ]
      },
      {
        "id" : "FRLMCorpsDocument.vaccinations",
        "path" : "FRLMCorpsDocument.vaccinations",
        "short" : "Section Vaccinations",
        "definition" : "Section Vaccinations",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccinations"
          }
        ]
      }
    ]
  }
}

```
