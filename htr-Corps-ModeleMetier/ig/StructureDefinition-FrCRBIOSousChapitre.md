# Sous-chapitre du compte rendu d'examens de biologie (section de 2nd niveau) - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sous-chapitre du compte rendu d'examens de biologie (section de 2nd niveau)**

## Logical Model: Sous-chapitre du compte rendu d'examens de biologie (section de 2nd niveau) 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOSousChapitre | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrCRBIOSousChapitre |

 
Modèle logique métier de la section Sous-chapitre du compte rendu d’examens de biologie (section de 2nd niveau) 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md) and [Compte rendu de biologie de 1er niveau](StructureDefinition-FrCRBIOChapitre.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrCRBIOSousChapitre)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrCRBIOSousChapitre.csv), [Excel](StructureDefinition-FrCRBIOSousChapitre.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrCRBIOSousChapitre",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOSousChapitre",
  "version" : "0.1.0",
  "name" : "FrCRBIOSousChapitre",
  "title" : "Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)",
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
  "description" : "Modèle logique métier de la section Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrCRBIOSousChapitre",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrCRBIOSousChapitre",
        "path" : "FrCRBIOSousChapitre",
        "short" : "Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)",
        "definition" : "Modèle logique métier de la section Sous-chapitre du compte rendu d'examens de biologie  (section de 2nd niveau)"
      },
      {
        "id" : "FrCRBIOSousChapitre.sousSection",
        "path" : "FrCRBIOSousChapitre.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrCRBIOSousChapitre.entree",
        "path" : "FrCRBIOSousChapitre.entree",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "FrCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale",
        "path" : "FrCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale",
        "short" : "Entrée Résultats d'examens de biologie médicale",
        "definition" : "Entrée Résultats d'examens de biologie médicale",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsExamensBiologieMedicale"
          }
        ]
      }
    ]
  }
}

```
