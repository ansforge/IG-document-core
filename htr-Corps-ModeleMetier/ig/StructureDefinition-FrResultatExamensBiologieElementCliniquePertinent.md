# Résultat d'examens de biologie / élement clinique pertinent - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Résultat d'examens de biologie / élement clinique pertinent**

## Logical Model: Résultat d'examens de biologie / élement clinique pertinent 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatExamensBiologieElementCliniquePertinent | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrResultatExamensBiologieElementCliniquePertinent |

 
Entrée Résultat d’examens de biologie / élement clinique pertinent 

**Usages:**

* Use this Logical Model: [Batterie d'examens de biologie médicale](StructureDefinition-FrBatterieExamensBiologieMedicale.md), [Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md) and [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrResultatExamensBiologieElementCliniquePertinent)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.csv), [Excel](StructureDefinition-FrResultatExamensBiologieElementCliniquePertinent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrResultatExamensBiologieElementCliniquePertinent",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatExamensBiologieElementCliniquePertinent",
  "version" : "0.1.0",
  "name" : "FrResultatExamensBiologieElementCliniquePertinent",
  "title" : "Résultat d'examens de biologie / élement clinique pertinent",
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
  "description" : "Entrée Résultat d'examens de biologie / élement clinique pertinent",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatExamensBiologieElementCliniquePertinent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent",
        "short" : "Résultat d'examens de biologie / élement clinique pertinent",
        "definition" : "Entrée Résultat d'examens de biologie / élement clinique pertinent"
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.identifiant",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.identifiant",
        "short" : "\tIdentifiant du résultat",
        "definition" : "\tIdentifiant du résultat",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.codeIdentification",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.codeIdentification",
        "short" : "Code d'identification de l'analyse ou de l'observation",
        "definition" : "Code d'identification de l'analyse ou de l'observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.statut",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.statut",
        "short" : "Niveau de complétude",
        "definition" : "Niveau de complétude",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.dateResultat",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.dateResultat",
        "short" : "Date et heure de ce résultat",
        "definition" : "Date et heure de ce résultat",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.valeurResultat",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.valeurResultat",
        "short" : "Valeur du résultat",
        "definition" : "Valeur du résultat",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.interpretation",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.interpretation",
        "short" : "Code d'interprétation",
        "definition" : "Code d'interprétation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.methode",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.methode",
        "short" : "Méthode ou technique employée",
        "definition" : "Méthode ou technique employée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.choice[x]",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.choice[x]",
        "short" : "Sujet non humain ou Patient avec sujet non humain",
        "definition" : "Sujet non humain ou Patient avec sujet non humain",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/SujetNonHumain"
          },
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PatientSujetNonHumain"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant",
        "short" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
        "definition" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/LaboratoireExecutant"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.auteur",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.auteur",
        "short" : "Auteur. Apparaît à ce niveau si le rendu de ce  résultat procède de cet auteur spécifique, différent de celui déclaré aux niveaux supérieurs.",
        "definition" : "Auteur. Apparaît à ce niveau si le rendu de ce  résultat procède de cet auteur spécifique, différent de celui déclaré aux niveaux supérieurs.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.valideur",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.valideur",
        "short" : "Valideur de ces résultats",
        "definition" : "Valideur de ces résultats",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.responsable",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.responsable",
        "short" : "Responsable de cet examen",
        "definition" : "Responsable de cet examen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique",
        "short" : "Dispositif automatique impliqué dans la production des résultats",
        "definition" : "Dispositif automatique impliqué dans la production des résultats",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrParticipantCorps"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.commentaire",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.commentaire",
        "short" : "Commentaire d'interprétation des résultats",
        "definition" : "Commentaire d'interprétation des résultats",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.prelevement",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.prelevement",
        "short" : "Prélèvement",
        "definition" : "Prélèvement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrPrelevement"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs",
        "short" : "Résultats antérieurs. Plusieurs résultats antérieurs peuvent être ajoutés. \n - Ils doivent être comparables avec le résultat rendu, c'est-à-dire obtenus suivant la même méthode ou une méthode comparable, et exprimés dans la même unité ou dans le même système de codage.",
        "definition" : "Résultats antérieurs. Plusieurs résultats antérieurs peuvent être ajoutés. \n - Ils doivent être comparables avec le résultat rendu, c'est-à-dire obtenus suivant la même méthode ou une méthode comparable, et exprimés dans la même unité ou dans le même système de codage.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrResultatExamensBiologieElementCliniquePertinent.intervallesReference",
        "path" : "FrResultatExamensBiologieElementCliniquePertinent.intervallesReference",
        "short" : "Intervalles de référence",
        "definition" : "Intervalles de référence",
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
