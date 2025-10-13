# * Modèle logique métier du corps - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* *** Modèle logique métier du corps**

## Logical Model: * Modèle logique métier du corps 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/CorpsDocument | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:CorpsDocument |

 
Eléments métier du corps d’un document 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/CorpsDocument)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CorpsDocument.csv), [Excel](StructureDefinition-CorpsDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CorpsDocument",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/CorpsDocument",
  "version" : "0.1.0",
  "name" : "CorpsDocument",
  "title" : "* Modèle logique métier du corps",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/CorpsDocument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CorpsDocument",
        "path" : "CorpsDocument",
        "short" : "* Modèle logique métier du corps",
        "definition" : "Eléments métier du corps d'un document"
      },
      {
        "id" : "CorpsDocument.allergiesEtHypersensibilites",
        "path" : "CorpsDocument.allergiesEtHypersensibilites",
        "short" : "Section Allergies et hypersensibilités",
        "definition" : "Section Allergies et hypersensibilités",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAllergiesEtHypersensibilites"
          }
        ]
      },
      {
        "id" : "CorpsDocument.antecedentsFamiliaux",
        "path" : "CorpsDocument.antecedentsFamiliaux",
        "short" : "Section Antécédents familiaux",
        "definition" : "Section Antécédents familiaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsFamiliaux"
          }
        ]
      },
      {
        "id" : "CorpsDocument.antecedentsMedicaux",
        "path" : "CorpsDocument.antecedentsMedicaux",
        "short" : "Section Antécédents médicaux",
        "definition" : "Section Antécédents médicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAntecedentsMedicaux"
          }
        ]
      },
      {
        "id" : "CorpsDocument.codesAbarres",
        "path" : "CorpsDocument.codesAbarres",
        "short" : "Section Codes à barres",
        "definition" : "Section Codes à barres",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCodesAbarres"
          }
        ]
      },
      {
        "id" : "CorpsDocument.commentaireNonCode",
        "path" : "CorpsDocument.commentaireNonCode",
        "short" : "Section Commentaire (Non-Codé)",
        "definition" : "Section Commentaire (Non-Codé)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireNonCode"
          }
        ]
      },
      {
        "id" : "CorpsDocument.cRBIOChapitre",
        "path" : "CorpsDocument.cRBIOChapitre",
        "short" : "section Compte rendu de biologie de 1er niveau",
        "definition" : "section Compte rendu de biologie de 1er niveau",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOChapitre"
          }
        ]
      },
      {
        "id" : "CorpsDocument.cRBIOSousChapitre",
        "path" : "CorpsDocument.cRBIOSousChapitre",
        "short" : "Section Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)",
        "definition" : "Section Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOSousChapitre"
          }
        ]
      },
      {
        "id" : "CorpsDocument.acteImagerie",
        "path" : "CorpsDocument.acteImagerie",
        "short" : "Section Acte d'imagerie",
        "definition" : "Section Acte d'imagerie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrActeImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.addendum",
        "path" : "CorpsDocument.addendum",
        "short" : "Section Addendum",
        "definition" : "Section Addendum",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrAddendum"
          }
        ]
      },
      {
        "id" : "CorpsDocument.conclusions",
        "path" : "CorpsDocument.conclusions",
        "short" : "Section Conclusions",
        "definition" : "Section Conclusions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrConclusionExamenImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.demandeExamenImagerie",
        "path" : "CorpsDocument.demandeExamenImagerie",
        "short" : "Section Demande d'examen",
        "definition" : "Section Demande d'examen",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDemandeExamenImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.comparaisonExamensImagerie",
        "path" : "CorpsDocument.comparaisonExamensImagerie",
        "short" : "Section Examen comparatif",
        "definition" : "Section Examen comparatif",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrComparaisonExamensImagerie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.expositionRadiations",
        "path" : "CorpsDocument.expositionRadiations",
        "short" : "Section Exposition aux radiations",
        "definition" : "Section Exposition aux radiations",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrExpositionRadiations"
          }
        ]
      },
      {
        "id" : "CorpsDocument.informationsCliniques",
        "path" : "CorpsDocument.informationsCliniques",
        "short" : "Section Informations cliniques",
        "definition" : "Section Informations cliniques",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrInformationsCliniques"
          }
        ]
      },
      {
        "id" : "CorpsDocument.objectCatalog",
        "path" : "CorpsDocument.objectCatalog",
        "short" : "Section  Object catalog",
        "definition" : "Section  Object catalog",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObjectCatalog"
          }
        ]
      },
      {
        "id" : "CorpsDocument.directivesAnticipees",
        "path" : "CorpsDocument.directivesAnticipees",
        "short" : "Section Directives anticipées",
        "definition" : "Section Directives anticipées",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDirectivesAnticipees"
          }
        ]
      },
      {
        "id" : "CorpsDocument.dispensationMedicaments",
        "path" : "CorpsDocument.dispensationMedicaments",
        "short" : "Section Dispensation médicaments",
        "definition" : "Section Dispensation médicaments",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispensationMedicaments"
          }
        ]
      },
      {
        "id" : "CorpsDocument.dispositifsMedicaux",
        "path" : "CorpsDocument.dispositifsMedicaux",
        "short" : "Section Dispositifs medicaux",
        "definition" : "Section Dispositifs medicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDispositifsMedicaux"
          }
        ]
      },
      {
        "id" : "CorpsDocument.documentPDFCopie",
        "path" : "CorpsDocument.documentPDFCopie",
        "short" : "Section Document PDF Copie",
        "definition" : "Section Document PDF Copie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentPDFCopie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.documentsAjoutes",
        "path" : "CorpsDocument.documentsAjoutes",
        "short" : "Section Documents ajoutés",
        "definition" : "Section Documents ajoutés",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentsAjoutes"
          }
        ]
      },
      {
        "id" : "CorpsDocument.educationPatient",
        "path" : "CorpsDocument.educationPatient",
        "short" : "Section Education du patient",
        "definition" : "Section Education du patient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEducationPatient"
          }
        ]
      },
      {
        "id" : "CorpsDocument.effetsIndesirables",
        "path" : "CorpsDocument.effetsIndesirables",
        "short" : "Section Effets indesirables",
        "definition" : "Section Effets indesirables",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrEffetsIndesirables"
          }
        ]
      },
      {
        "id" : "CorpsDocument.facteursDeRisqueProfessionnelsNonCode",
        "path" : "CorpsDocument.facteursDeRisqueProfessionnelsNonCode",
        "short" : "Section Facteurs de risque professionnels non Codé",
        "definition" : "Section Facteurs de risque professionnels non Codé",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFacteursDeRisqueProfessionnelsNonCode"
          }
        ]
      },
      {
        "id" : "CorpsDocument.fonctionsPhysiques",
        "path" : "CorpsDocument.fonctionsPhysiques",
        "short" : "Section Fonctions physiques",
        "definition" : "Section Fonctions physiques",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrFonctionsPhysiques"
          }
        ]
      },
      {
        "id" : "CorpsDocument.habitusModeDeVie",
        "path" : "CorpsDocument.habitusModeDeVie",
        "short" : "Section Habitus et modes de vie",
        "definition" : "Section Habitus et modes de vie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHabitusModeDeVie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.historiqueDesActes",
        "path" : "CorpsDocument.historiqueDesActes",
        "short" : "Section Historique des actes",
        "definition" : "Section Historique des actes",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueDesActes"
          }
        ]
      },
      {
        "id" : "CorpsDocument.historiqueDesGrossesses",
        "path" : "CorpsDocument.historiqueDesGrossesses",
        "short" : "Section Historique des grossesses",
        "definition" : "Section Historique des grossesses",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrHistoriqueDesGrossesses"
          }
        ]
      },
      {
        "id" : "CorpsDocument.planSoins",
        "path" : "CorpsDocument.planSoins",
        "short" : "Section Plan de Soins",
        "definition" : "Section Plan de Soins",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPlanSoins"
          }
        ]
      },
      {
        "id" : "CorpsDocument.pointsDeVigilancesNonCode",
        "path" : "CorpsDocument.pointsDeVigilancesNonCode",
        "short" : "Section Points de Vigilances non code",
        "definition" : "Section Points de Vigilances non code",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPointsDeVigilancesNonCode"
          }
        ]
      },
      {
        "id" : "CorpsDocument.prescriptionDispositifsMedicaux",
        "path" : "CorpsDocument.prescriptionDispositifsMedicaux",
        "short" : "Section Prescription de dispositifs médicaux",
        "definition" : "Section Prescription de dispositifs médicaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionDispositifsMedicaux"
          }
        ]
      },
      {
        "id" : "CorpsDocument.prescriptionMedicaments",
        "path" : "CorpsDocument.prescriptionMedicaments",
        "short" : "Section Prescription médicaments",
        "definition" : "Section Prescription médicaments",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrescriptionMedicaments"
          }
        ]
      },
      {
        "id" : "CorpsDocument.problemesActifs",
        "path" : "CorpsDocument.problemesActifs",
        "short" : "Section Problemès Actifs",
        "definition" : "Section Problemès Actifs",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrProblemesActifs"
          }
        ]
      },
      {
        "id" : "CorpsDocument.raisonRecommandationNonCode",
        "path" : "CorpsDocument.raisonRecommandationNonCode",
        "short" : "Section Raison de la recommandation (non Codé)",
        "definition" : "Section Raison de la recommandation (non Codé)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRaisonRecommandationNonCode"
          }
        ]
      },
      {
        "id" : "CorpsDocument.raisonRecommandation",
        "path" : "CorpsDocument.raisonRecommandation",
        "short" : "Section Raison de la recommandation",
        "definition" : "Section Raison de la recommandation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrRaisonRecommandation"
          }
        ]
      },
      {
        "id" : "CorpsDocument.resultatsLaboratoireBiologieSecondeIntention",
        "path" : "CorpsDocument.resultatsLaboratoireBiologieSecondeIntention",
        "short" : "Section Résultats de laboratoire de biologie de seconde intention",
        "definition" : "Section Résultats de laboratoire de biologie de seconde intention",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsLaboratoireBiologieSecondeIntention"
          }
        ]
      },
      {
        "id" : "CorpsDocument.resultatsEvenements",
        "path" : "CorpsDocument.resultatsEvenements",
        "short" : "Section Resultats d'évenements",
        "definition" : "Section Resultats d'évenements",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsEvenements"
          }
        ]
      },
      {
        "id" : "CorpsDocument.resultatsExamensNonCode",
        "path" : "CorpsDocument.resultatsExamensNonCode",
        "short" : "Section Resultats d'xamens (non Codée)",
        "definition" : "Section Resultats d'xamens (non Codée)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensNonCode"
          }
        ]
      },
      {
        "id" : "CorpsDocument.resultatsExamens",
        "path" : "CorpsDocument.resultatsExamens",
        "short" : "Section Résultats d'examens",
        "definition" : "Section Résultats d'examens",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamens"
          }
        ]
      },
      {
        "id" : "CorpsDocument.resultats",
        "path" : "CorpsDocument.resultats",
        "short" : "Section Resultats",
        "definition" : "Section Resultats",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultats"
          }
        ]
      },
      {
        "id" : "CorpsDocument.signesVitaux",
        "path" : "CorpsDocument.signesVitaux",
        "short" : "Section Signes vitaux",
        "definition" : "Section Signes vitaux",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrSignesVitaux"
          }
        ]
      },
      {
        "id" : "CorpsDocument.statutDocument",
        "path" : "CorpsDocument.statutDocument",
        "short" : "Section Statut du document",
        "definition" : "Section Statut du document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutDocument"
          }
        ]
      },
      {
        "id" : "CorpsDocument.statutFonctionnel",
        "path" : "CorpsDocument.statutFonctionnel",
        "short" : "Section Statut fonctionnel",
        "definition" : "Section Statut fonctionnel",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrStatutFonctionnel"
          }
        ]
      },
      {
        "id" : "CorpsDocument.traitements",
        "path" : "CorpsDocument.traitements",
        "short" : "Section Traitement",
        "definition" : "Section Traitement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitement"
          }
        ]
      },
      {
        "id" : "CorpsDocument.traitementSortie",
        "path" : "CorpsDocument.traitementSortie",
        "short" : "Section Traitement à la sortie",
        "definition" : "Section Traitement à la sortie",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementSortie"
          }
        ]
      },
      {
        "id" : "CorpsDocument.traitementsAdministres",
        "path" : "CorpsDocument.traitementsAdministres",
        "short" : "Section Traitements administrés",
        "definition" : "Section Traitements administrés",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrTraitementsAdministres"
          }
        ]
      },
      {
        "id" : "CorpsDocument.vaccinations",
        "path" : "CorpsDocument.vaccinations",
        "short" : "Section Vaccinations",
        "definition" : "Section Vaccinations",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrVaccinations"
          }
        ]
      }
    ]
  }
}

```
