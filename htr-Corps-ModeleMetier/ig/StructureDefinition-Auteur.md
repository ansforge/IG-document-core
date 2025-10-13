# Modèle métier - Auteur du document (humain ou système) - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Auteur du document (humain ou système)**

## Logical Model: Modèle métier - Auteur du document (humain ou système) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:Auteur |

 
Auteur du document : ce peut être un professionnel, un patient/usager ou un système. 
* Pour un professionnel ou un système, la structure de rattachement doit être précisée.
 

**Voici les cas d’usage des documents et leurs auteurs** :

| | | |
| :--- | :--- | :--- |
| Création d’un document par un professionnel sur son logiciel professionnel | Professionnel | Structure |
| Création d’un document patient par un professionnel sur son logiciel professionnel pour le compte du patient | Professionnel | Structure |
| Création d’un document patient par le patient | Patient | non utilisé |
| Création d’un document par un système (dispositif, automate, …) de structure (ES, …) | Système de structure | Structure |
| Création d’un document par un Service numérique référencé (SNR) | SNR | Editeur |
| Création d’un document par le DP | CNOP/DP | CNOP |

**Usages:**

* Derived from this Logical Model: [Auteur APSR](StructureDefinition-AuteurAPSR.md)
* Use this Logical Model: [Modèle logique métier de l'en-tête](StructureDefinition-EnteteDocument.md), [Accident transfusionnel](StructureDefinition-FrAccidentsTransfusionnels.md), [Acte](StructureDefinition-FrActe.md), [Addendum](StructureDefinition-FrAddendum.md)...Show 38 more,[Administration de dérivés du sang](StructureDefinition-FrAdministrationDeDerivesDuSang.md),[Antécédent familial observé](StructureDefinition-FrAntecedentFamilialObserve.md),[Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md),[Commentaire](StructureDefinition-FrCommentaireER.md),[Demande d'examen ou de suivi / Objectif à atteindre](StructureDefinition-FrDemandeExamenOuSuivi.md),[Dispensation médicaments](StructureDefinition-FrDispensationMedicaments.md),[Dispositif médical](StructureDefinition-FrDispositifMedicalEntry.md),[En rapport avec une Affection Longue Durée (ALD)](StructureDefinition-FrEnRapportAvecALD.md),[En rapport avec un accident travail](StructureDefinition-FrEnRapportAvecAccidentTravail.md),[En rapport avec la prevention](StructureDefinition-FrEnRapportAvecLaPrevention.md),[Evaluation](StructureDefinition-FrEvaluation.md),[Evènements indésirables pendant l'hospitalisation](StructureDefinition-FrEvenementIndesirablePendantHospitalisation.md),[Evènements indésirables suite à l'administration de dérivés du sang](StructureDefinition-FrEvenementsIndesirablesSuiteAdministrationDerivesSang.md),[Hors Autorisation de Mise sur le Marché (AMM)](StructureDefinition-FrHorsAMM.md),[Identification de micro-organismes multirésistants](StructureDefinition-FrIdentificationDeMicroOrganismesMultiresistants.md),[Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md),[Modalité d'entrée](StructureDefinition-FrModaliteEntree.md),[Modalité de sortie](StructureDefinition-FrModaliteSortie.md),[Non remboursable](StructureDefinition-FrNonRemboursable.md),[Entrée Observation](StructureDefinition-FrObservation.md),[Prescription de dispositifs médicaux](StructureDefinition-FrPrescriptionDispositifsMedicaux.md),[Prescription](StructureDefinition-FrPrescriptionEntry.md),[Prescription de médicaments](StructureDefinition-FrPrescriptionMedicaments.md),[Recherche de micro organismes](StructureDefinition-FrRechercheDeMicroOrganismes.md),[Référence item plan traitement](StructureDefinition-FrReferenceItemPlanTraitement.md),[Référence item prescription](StructureDefinition-FrReferenceItemPrescription.md),[Rencontre](StructureDefinition-FrRencontre.md),[Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.md),[Resultats](StructureDefinition-FrResultatsEntry.md),[Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md),[Signe vital](StructureDefinition-FrSigneVital.md),[Signe vital observé](StructureDefinition-FrSigneVitalObserve.md),[Statut](StructureDefinition-FrStatut.md),[Statut du document](StructureDefinition-FrStatutDocumentEntry.md),[Statut fonctionnel](StructureDefinition-FrStatutFonctionnel.md),[Synthese medicale sejour](StructureDefinition-FrSyntheseMedicaleSejour.md),[Traitement Prescrit](StructureDefinition-FrTraitementPrescrit.md)and[Transfusion de produits sanguins](StructureDefinition-FrTransfusionDeProduitsSanguins.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/Auteur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Auteur.csv), [Excel](StructureDefinition-Auteur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Auteur",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur",
  "version" : "0.1.0",
  "name" : "Auteur",
  "title" : "Modèle métier - Auteur du document (humain ou système)",
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
  "description" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. \n- Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Auteur",
        "path" : "Auteur",
        "short" : "Modèle métier - Auteur du document (humain ou système)",
        "definition" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. \n- Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
        "min" : 1
      },
      {
        "id" : "Auteur.roleFonctionnel",
        "path" : "Auteur.roleFonctionnel",
        "short" : "Rôle fonctionnel de l’auteur. A utiliser uniquement si l'auteur est un professionnel.",
        "definition" : "Rôle fonctionnel de l’auteur. A utiliser uniquement si l'auteur est un professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Auteur.horodatageParticipation",
        "path" : "Auteur.horodatageParticipation",
        "short" : "Horodatage de la participation de l’auteur.",
        "definition" : "Horodatage de la participation de l’auteur.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "Auteur.auteur[x]",
        "path" : "Auteur.auteur[x]",
        "short" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
        "definition" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructureAuteur"
          },
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SystemeStructureAuteur"
          }
        ]
      }
    ]
  }
}

```
