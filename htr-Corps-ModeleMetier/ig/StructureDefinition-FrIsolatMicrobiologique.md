# Isolat microbiologique - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Isolat microbiologique**

## Logical Model: Isolat microbiologique 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrIsolatMicrobiologique | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrIsolatMicrobiologique |

 
Entrée Isolat microbiologique 

**Usages:**

* Use this Logical Model: [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrIsolatMicrobiologique)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrIsolatMicrobiologique.csv), [Excel](StructureDefinition-FrIsolatMicrobiologique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrIsolatMicrobiologique",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrIsolatMicrobiologique",
  "version" : "0.1.0",
  "name" : "FrIsolatMicrobiologique",
  "title" : "Isolat microbiologique",
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
  "description" : "Entrée Isolat microbiologique",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrIsolatMicrobiologique",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrIsolatMicrobiologique",
        "path" : "FrIsolatMicrobiologique",
        "short" : "Isolat microbiologique",
        "definition" : "Entrée Isolat microbiologique"
      },
      {
        "id" : "FrIsolatMicrobiologique.identifiant",
        "path" : "FrIsolatMicrobiologique.identifiant",
        "short" : "Identifiant de l'examen",
        "definition" : "Identifiant de l'examen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.codeIsolat",
        "path" : "FrIsolatMicrobiologique.codeIsolat",
        "short" : "Code isolat",
        "definition" : "Code isolat",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.statut",
        "path" : "FrIsolatMicrobiologique.statut",
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
        "id" : "FrIsolatMicrobiologique.dateateResultat",
        "path" : "FrIsolatMicrobiologique.dateateResultat",
        "short" : "Date et heure des résultats",
        "definition" : "Date et heure des résultats",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.choice[x]",
        "path" : "FrIsolatMicrobiologique.choice[x]",
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
        "id" : "FrIsolatMicrobiologique.isolatMicrobiologique",
        "path" : "FrIsolatMicrobiologique.isolatMicrobiologique",
        "short" : "Isolat microbiologique",
        "definition" : "Isolat microbiologique",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat",
        "path" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat",
        "short" : "Isolat microbiologique",
        "definition" : "Isolat microbiologique",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat.identifiant",
        "path" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat.identifiant",
        "short" : "Identifiant de l'isolat",
        "definition" : "Identifiant de l'isolat",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat.agent",
        "path" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat.agent",
        "short" : "L'agent infectieux cultivé (bactérie, levure, virus, parasite)",
        "definition" : "L'agent infectieux cultivé (bactérie, levure, virus, parasite)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat.agent.code",
        "path" : "FrIsolatMicrobiologique.isolatMicrobiologique.isolat.agent.code",
        "short" : "Code isolat",
        "definition" : "Code isolat",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.laboratoireExecutant",
        "path" : "FrIsolatMicrobiologique.laboratoireExecutant",
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
        "id" : "FrIsolatMicrobiologique.auteur",
        "path" : "FrIsolatMicrobiologique.auteur",
        "short" : "Participation d'un auteur au document. Apparaît à ce niveau si le compte-rendu de cette analyse procède de cet auteur spécifique.",
        "definition" : "Participation d'un auteur au document. Apparaît à ce niveau si le compte-rendu de cette analyse procède de cet auteur spécifique.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Auteur"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.valideur",
        "path" : "FrIsolatMicrobiologique.valideur",
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
        "id" : "FrIsolatMicrobiologique.responsable",
        "path" : "FrIsolatMicrobiologique.responsable",
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
        "id" : "FrIsolatMicrobiologique.dispositifAutomatique",
        "path" : "FrIsolatMicrobiologique.dispositifAutomatique",
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
        "id" : "FrIsolatMicrobiologique.batterieExamensDeBiologieMedicale",
        "path" : "FrIsolatMicrobiologique.batterieExamensDeBiologieMedicale",
        "short" : "Batterie d'examens de biologie médicale",
        "definition" : "Batterie d'examens de biologie médicale",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrBatterieExamensBiologieMedicale"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.resultatElementCliniquePertinent",
        "path" : "FrIsolatMicrobiologique.resultatElementCliniquePertinent",
        "short" : "Résultat d'examen de biologie / élément clinique pertinent",
        "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatExamensBiologieElementCliniquePertinent"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.imageIllustrative",
        "path" : "FrIsolatMicrobiologique.imageIllustrative",
        "short" : "Image ou graphe",
        "definition" : "Image ou graphe",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImageIllustrative"
          }
        ]
      },
      {
        "id" : "FrIsolatMicrobiologique.commentaire",
        "path" : "FrIsolatMicrobiologique.commentaire",
        "short" : "Commentaire de section interprétant l'ensemble des résultats",
        "definition" : "Commentaire de section interprétant l'ensemble des résultats",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCommentaireER"
          }
        ]
      }
    ]
  }
}

```
