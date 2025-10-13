# * Section - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* *** Section**

## Logical Model: * Section 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:Section |

 
Modèle logique métier : Section 

**Usages:**

* Derived from this Logical Model: [Acte d'imagerie](StructureDefinition-FrActeImagerie.md), [Addendum](StructureDefinition-FrAddendum.md), [Allergies et hypersensibilités](StructureDefinition-FrAllergiesEtHypersensibilites.md), [Antécédents familiaux](StructureDefinition-FrAntecedentsFamiliaux.md)...Show 44 more,[Antécédents médicaux](StructureDefinition-FrAntecedentsMedicaux.md),[Compte rendu de biologie de 1er niveau](StructureDefinition-FrCRBIOChapitre.md),[Sous-chapitre du compte rendu d'examens de biologie (section de 2nd niveau)](StructureDefinition-FrCRBIOSousChapitre.md),[Codes à barres](StructureDefinition-FrCodesAbarres.md),[Commentaire (non-codé)](StructureDefinition-FrCommentaireNonCode.md),[Comparaison d'examens d'imagerie](StructureDefinition-FrComparaisonExamensImagerie.md),[Complications Acte](StructureDefinition-FrComplicationsActe.md),[Conclusion examen d'imagerie](StructureDefinition-FrConclusionExamenImagerie.md),[Demande d'examen d'imagerie](StructureDefinition-FrDemandeExamenImagerie.md),[Directives-anticipées](StructureDefinition-FrDirectivesAnticipees.md),[Dispensation médicaments](StructureDefinition-FrDispensationMedicaments.md),[Dispositifs medicaux](StructureDefinition-FrDispositifsMedicaux.md),[Document PDF copie](StructureDefinition-FrDocumentPDFCopie.md),[Documents ajoutés](StructureDefinition-FrDocumentsAjoutes.md),[Education du patient](StructureDefinition-FrEducationPatient.md),[Effets indesirables](StructureDefinition-FrEffetsIndesirables.md),[Exposition aux radiations](StructureDefinition-FrExpositionRadiations.md),[Facteurs de risque professionnels non code](StructureDefinition-FrFacteursDeRisqueProfessionnelsNonCode.md),[Fonctions physiques](StructureDefinition-FrFonctionsPhysiques.md),[Habitus et modes de vie](StructureDefinition-FrHabitusModeDeVie.md),[Historique des actes](StructureDefinition-FrHistoriqueDesActes.md),[Antécédents obstétricaux](StructureDefinition-FrHistoriqueDesGrossesses.md),[Informations Cliniques](StructureDefinition-FrInformationsCliniques.md),[Object Catalog](StructureDefinition-FrObjectCatalog.md),[Plan de soins](StructureDefinition-FrPlanSoins.md),[Section Points de vigilance (non-codés)](StructureDefinition-FrPointsDeVigilancesNonCode.md),[Prescription de dispositifs médicaux](StructureDefinition-FrPrescriptionDispositifsMedicaux.md),[Prescription de médicaments](StructureDefinition-FrPrescriptionMedicaments.md),[Problèmes actifs](StructureDefinition-FrProblemesActifs.md),[Raison de la recommandation](StructureDefinition-FrRaisonRecommandation.md),[Raison de la recommandation (non codée)](StructureDefinition-FrRaisonRecommandationNonCode.md),[Résultats](StructureDefinition-FrResultats.md),[Résultats d'événements](StructureDefinition-FrResultatsEvenements.md),[Résultats d'examen d'imagerie](StructureDefinition-FrResultatsExamenImagerie.md),[Résultats d'examens](StructureDefinition-FrResultatsExamens.md),[Résultats d'examens (non codée)](StructureDefinition-FrResultatsExamensNonCode.md),[Résultats de laboratoire de biologie de seconde intention](StructureDefinition-FrResultatsLaboratoireBiologieSecondeIntention.md),[Signes vitaux](StructureDefinition-FrSignesVitaux.md),[Statut du document](StructureDefinition-FrStatutDocument.md),[Statut fonctionnel](StructureDefinition-FrStatutFonctionnel.md),[Traitements à la sortie](StructureDefinition-FrTraitementSortie.md),[Traitements](StructureDefinition-FrTraitements.md),[Traitements administrés](StructureDefinition-FrTraitementsAdministres.md)and[Vaccinations](StructureDefinition-FrVaccinations.md)

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
