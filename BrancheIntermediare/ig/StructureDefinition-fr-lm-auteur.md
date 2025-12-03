# Modèle logique métier - FR LM Auteur - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Auteur**

## Logical Model: Modèle logique métier - FR LM Auteur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:FRLMAuteur |

 
Auteur du document : ce peut être un professionnel, un patient/usager ou un système. 
* Pour un professionnel ou un système, la structure de rattachement doit être précisée.
 

**Utilisations:**

* Utiliser ce Modèle logique: [Modèle logique métier - FR LM En-tête document](StructureDefinition-fr-lm-entete-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-auteur)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-auteur.csv), [Excel](StructureDefinition-fr-lm-auteur.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-auteur",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur",
  "version" : "0.1.0",
  "name" : "FRLMAuteur",
  "title" : "Modèle logique métier - FR LM Auteur",
  "status" : "draft",
  "date" : "2025-12-03T16:46:30+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-auteur",
        "path" : "fr-lm-auteur",
        "short" : "Modèle logique métier - FR LM Auteur",
        "definition" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. \n- Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
        "min" : 1
      },
      {
        "id" : "fr-lm-auteur.roleFonctionnel",
        "path" : "fr-lm-auteur.roleFonctionnel",
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
        "id" : "fr-lm-auteur.horodatageParticipation",
        "path" : "fr-lm-auteur.horodatageParticipation",
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
        "id" : "fr-lm-auteur.auteur[x]",
        "path" : "fr-lm-auteur.auteur[x]",
        "short" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
        "definition" : "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure-auteur"
          },
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-systeme-structure-auteur"
          }
        ]
      }
    ]
  }
}

```
