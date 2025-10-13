# Resultats d'examens de biologie medicale - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultats d'examens de biologie medicale**

## Logical Model: Resultats d'examens de biologie medicale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensBiologieMedicale | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrResultatsExamensBiologieMedicale |

 
Entrée Resultats d’examens de biologie medicale 

**Usages:**

* Use this Logical Model: [Compte rendu de biologie de 1er niveau](StructureDefinition-FrCRBIOChapitre.md) and [Sous-chapitre du compte rendu d'examens de biologie (section de 2nd niveau)](StructureDefinition-FrCRBIOSousChapitre.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrResultatsExamensBiologieMedicale)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrResultatsExamensBiologieMedicale.csv), [Excel](StructureDefinition-FrResultatsExamensBiologieMedicale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrResultatsExamensBiologieMedicale",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensBiologieMedicale",
  "version" : "0.1.0",
  "name" : "FrResultatsExamensBiologieMedicale",
  "title" : "Resultats d'examens de biologie medicale",
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
  "description" : "Entrée Resultats d'examens de biologie medicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensBiologieMedicale",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrResultatsExamensBiologieMedicale",
        "path" : "FrResultatsExamensBiologieMedicale",
        "short" : "Resultats d'examens de biologie medicale",
        "definition" : "Entrée Resultats d'examens de biologie medicale"
      },
      {
        "id" : "FrResultatsExamensBiologieMedicale.code",
        "path" : "FrResultatsExamensBiologieMedicale.code",
        "short" : "Code dont dérive le code de section",
        "definition" : "Code dont dérive le code de section",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrResultatsExamensBiologieMedicale.statut",
        "path" : "FrResultatsExamensBiologieMedicale.statut",
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
        "id" : "FrResultatsExamensBiologieMedicale.dateResultat",
        "path" : "FrResultatsExamensBiologieMedicale.dateResultat",
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
        "id" : "FrResultatsExamensBiologieMedicale.choice[x]",
        "path" : "FrResultatsExamensBiologieMedicale.choice[x]",
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
        "id" : "FrResultatsExamensBiologieMedicale.laboratoireExecutant",
        "path" : "FrResultatsExamensBiologieMedicale.laboratoireExecutant",
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
        "id" : "FrResultatsExamensBiologieMedicale.auteur",
        "path" : "FrResultatsExamensBiologieMedicale.auteur",
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
        "id" : "FrResultatsExamensBiologieMedicale.valideur",
        "path" : "FrResultatsExamensBiologieMedicale.valideur",
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
        "id" : "FrResultatsExamensBiologieMedicale.responsable",
        "path" : "FrResultatsExamensBiologieMedicale.responsable",
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
        "id" : "FrResultatsExamensBiologieMedicale.dispositifAutomatique",
        "path" : "FrResultatsExamensBiologieMedicale.dispositifAutomatique",
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
        "id" : "FrResultatsExamensBiologieMedicale.prelevement",
        "path" : "FrResultatsExamensBiologieMedicale.prelevement",
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
        "id" : "FrResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale",
        "path" : "FrResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale",
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
        "id" : "FrResultatsExamensBiologieMedicale.isolatMicrobiologique",
        "path" : "FrResultatsExamensBiologieMedicale.isolatMicrobiologique",
        "short" : "Isolat microbiologique",
        "definition" : "Isolat microbiologique",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrIsolatMicrobiologique"
          }
        ]
      },
      {
        "id" : "FrResultatsExamensBiologieMedicale.resultatElementCliniquePertinent",
        "path" : "FrResultatsExamensBiologieMedicale.resultatElementCliniquePertinent",
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
        "id" : "FrResultatsExamensBiologieMedicale.imageIllustrative",
        "path" : "FrResultatsExamensBiologieMedicale.imageIllustrative",
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
        "id" : "FrResultatsExamensBiologieMedicale.commentaire",
        "path" : "FrResultatsExamensBiologieMedicale.commentaire",
        "short" : "Commentaire",
        "definition" : "Commentaire",
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
