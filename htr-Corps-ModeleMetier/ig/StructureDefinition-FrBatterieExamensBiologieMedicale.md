# Batterie d'examens de biologie médicale - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Batterie d'examens de biologie médicale**

## Logical Model: Batterie d'examens de biologie médicale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrBatterieExamensBiologieMedicale | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrBatterieExamensBiologieMedicale |

 
Entrée Batterie d’examens de biologie médicale 

**Usages:**

* Use this Logical Model: [Isolat microbiologique](StructureDefinition-FrIsolatMicrobiologique.md) and [Resultats d'examens de biologie medicale](StructureDefinition-FrResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrBatterieExamensBiologieMedicale)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrBatterieExamensBiologieMedicale.csv), [Excel](StructureDefinition-FrBatterieExamensBiologieMedicale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrBatterieExamensBiologieMedicale",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrBatterieExamensBiologieMedicale",
  "version" : "0.1.0",
  "name" : "FrBatterieExamensBiologieMedicale",
  "title" : "Batterie d'examens de biologie médicale",
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
  "description" : "Entrée Batterie d'examens de biologie médicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrBatterieExamensBiologieMedicale",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrBatterieExamensBiologieMedicale",
        "path" : "FrBatterieExamensBiologieMedicale",
        "short" : "Batterie d'examens de biologie médicale",
        "definition" : "Entrée Batterie d'examens de biologie médicale"
      },
      {
        "id" : "FrBatterieExamensBiologieMedicale.identifiant",
        "path" : "FrBatterieExamensBiologieMedicale.identifiant",
        "short" : "Identifiant de la batterie d'examen",
        "definition" : "Identifiant de la batterie d'examen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "FrBatterieExamensBiologieMedicale.codeBatterieExamen",
        "path" : "FrBatterieExamensBiologieMedicale.codeBatterieExamen",
        "short" : "Code de la batterie d'examen",
        "definition" : "Code de la batterie d'examen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "FrBatterieExamensBiologieMedicale.statut",
        "path" : "FrBatterieExamensBiologieMedicale.statut",
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
        "id" : "FrBatterieExamensBiologieMedicale.dateExamen",
        "path" : "FrBatterieExamensBiologieMedicale.dateExamen",
        "short" : "Date de l'examen",
        "definition" : "Date de l'examen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "FrBatterieExamensBiologieMedicale.choice[x]",
        "path" : "FrBatterieExamensBiologieMedicale.choice[x]",
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
        "id" : "FrBatterieExamensBiologieMedicale.laboratoireExecutant",
        "path" : "FrBatterieExamensBiologieMedicale.laboratoireExecutant",
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
        "id" : "FrBatterieExamensBiologieMedicale.auteur",
        "path" : "FrBatterieExamensBiologieMedicale.auteur",
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
        "id" : "FrBatterieExamensBiologieMedicale.participant",
        "path" : "FrBatterieExamensBiologieMedicale.participant",
        "short" : "Participant",
        "definition" : "Participant",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Participant"
          }
        ]
      },
      {
        "id" : "FrBatterieExamensBiologieMedicale.prelevement",
        "path" : "FrBatterieExamensBiologieMedicale.prelevement",
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
        "id" : "FrBatterieExamensBiologieMedicale.resultatElementCliniquePertinent",
        "path" : "FrBatterieExamensBiologieMedicale.resultatElementCliniquePertinent",
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
        "id" : "FrBatterieExamensBiologieMedicale.imageIllustrative",
        "path" : "FrBatterieExamensBiologieMedicale.imageIllustrative",
        "short" : "Image illustrative",
        "definition" : "Image illustrative",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrImageIllustrative"
          }
        ]
      },
      {
        "id" : "FrBatterieExamensBiologieMedicale.commentaire",
        "path" : "FrBatterieExamensBiologieMedicale.commentaire",
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
