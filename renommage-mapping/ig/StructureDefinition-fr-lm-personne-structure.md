# Modèle logique métier - FR LM Personne et/ou Structure - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle logique métier - FR LM Personne et/ou Structure**

## Logical Model: Modèle logique métier - FR LM Personne et/ou Structure 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRLMPersonneStructure |

 
Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Destinataire prévu](StructureDefinition-fr-lm-destinataire-prevu-document.md), [Modèle logique métier - FR LM Évènement](StructureDefinition-fr-lm-evenement.md), [Modèle logique métier - FR LM Informateur](StructureDefinition-fr-lm-informateur.md), [Modèle logique métier - FR LM Opérateur de saisie](StructureDefinition-fr-lm-operateur-saisie.md)...Show 4 more,[Modèle logique métier - FR LM Participant](StructureDefinition-fr-lm-participant.md),[Modèle logique métier - FR LM Prise en charge](StructureDefinition-fr-lm-prise-en-charge.md),[Modèle logique métier - FR LM Responsable](StructureDefinition-fr-lm-responsable.md)and[Modèle logique métier - FR LM Validateur](StructureDefinition-fr-lm-validateur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-lm-personne-structure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-lm-personne-structure.csv), [Excel](StructureDefinition-fr-lm-personne-structure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-personne-structure",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure",
  "version" : "0.1.0",
  "name" : "FRLMPersonneStructure",
  "title" : "Modèle logique métier - FR LM Personne et/ou Structure",
  "status" : "draft",
  "date" : "2025-10-21T13:27:14+00:00",
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
  "description" : "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels).",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-lm-personne-structure",
        "path" : "fr-lm-personne-structure",
        "short" : "Modèle logique métier - FR LM Personne et/ou Structure",
        "definition" : "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels)."
      },
      {
        "id" : "fr-lm-personne-structure.personne",
        "path" : "fr-lm-personne-structure.personne",
        "short" : "Personne",
        "definition" : "Personne",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.identifiantPersonne",
        "path" : "fr-lm-personne-structure.personne.identifiantPersonne",
        "short" : "Identifiant de la personne.\n- obligatoire pour les professionnels et les patients.",
        "definition" : "Identifiant de la personne.\n- obligatoire pour les professionnels et les patients.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.professionRole",
        "path" : "fr-lm-personne-structure.personne.professionRole",
        "short" : "\n- Profession pour les professionnels.\n- Rôle pour les non professionnels.",
        "definition" : "\n- Profession pour les professionnels.\n- Rôle pour les non professionnels.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.lien",
        "path" : "fr-lm-personne-structure.personne.lien",
        "short" : "Lien de la personne avec le patient/usager",
        "definition" : "Lien de la personne avec le patient/usager",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.adresse",
        "path" : "fr-lm-personne-structure.personne.adresse",
        "short" : "Adresse géopostale",
        "definition" : "Adresse géopostale",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.coordonneesTelecom",
        "path" : "fr-lm-personne-structure.personne.coordonneesTelecom",
        "short" : "Coordonnées télécom",
        "definition" : "Coordonnées télécom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.IdentitePersonne",
        "path" : "fr-lm-personne-structure.personne.IdentitePersonne",
        "short" : "Identité de la personne",
        "definition" : "Identité de la personne",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.IdentitePersonne.nomPersonne",
        "path" : "fr-lm-personne-structure.personne.IdentitePersonne.nomPersonne",
        "short" : "Nom de la personne",
        "definition" : "Nom de la personne",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.IdentitePersonne.prenomPersonne",
        "path" : "fr-lm-personne-structure.personne.IdentitePersonne.prenomPersonne",
        "short" : "Prénom de la personne",
        "definition" : "Prénom de la personne",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.IdentitePersonne.civilite",
        "path" : "fr-lm-personne-structure.personne.IdentitePersonne.civilite",
        "short" : "Civilité",
        "definition" : "Civilité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.personne.IdentitePersonne.titre",
        "path" : "fr-lm-personne-structure.personne.IdentitePersonne.titre",
        "short" : "Titre",
        "definition" : "Titre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.structure",
        "path" : "fr-lm-personne-structure.structure",
        "short" : "Structure",
        "definition" : "Structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.structure.identifiantStructure",
        "path" : "fr-lm-personne-structure.structure.identifiantStructure",
        "short" : "Identifiant de la structure",
        "definition" : "Identifiant de la structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.structure.nomStructure",
        "path" : "fr-lm-personne-structure.structure.nomStructure",
        "short" : "Nom de la structure",
        "definition" : "Nom de la structure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.structure.adresse",
        "path" : "fr-lm-personne-structure.structure.adresse",
        "short" : "Adresse géopostale",
        "definition" : "Adresse géopostale",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.structure.coordonneesTelecom",
        "path" : "fr-lm-personne-structure.structure.coordonneesTelecom",
        "short" : "Coordonnées télécom",
        "definition" : "Coordonnées télécom",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "fr-lm-personne-structure.structure.cadreExercice",
        "path" : "fr-lm-personne-structure.structure.cadreExercice",
        "short" : "Cadre d'exercice",
        "definition" : "Cadre d'exercice",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
