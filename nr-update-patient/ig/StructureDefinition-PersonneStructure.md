# Modèle métier - Personne et/ou Structure - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modèle métier - Personne et/ou Structure**

## Logical Model: Modèle métier - Personne et/ou Structure 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:PersonneStructure |

 
Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels). 

**Usages:**

* Use this Logical Model: [Modèle métier - Destinataire prévu du document](StructureDefinition-DestinatairePrevu.md), [Modèle métier - Évènement documenté](StructureDefinition-Evenement.md), [Modèle métier - Informateur](StructureDefinition-Informateur.md), [Modèle métier - Opérateur de saisie](StructureDefinition-OperateurSaisie.md)...Show 4 more,[Modèle métier - Autres personnes / structures impliquées](StructureDefinition-Participant.md),[Modèle métier - Association du document à une prise en charge](StructureDefinition-PriseEncharge.md),[Modèle métier - Responsable du document](StructureDefinition-Responsable.md)and[Modèle métier - Validateur du document](StructureDefinition-Validateur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/PersonneStructure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonneStructure.csv), [Excel](StructureDefinition-PersonneStructure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonneStructure",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure",
  "version" : "0.1.0",
  "name" : "PersonneStructure",
  "title" : "Modèle métier - Personne et/ou Structure",
  "status" : "draft",
  "date" : "2025-10-21T14:02:08+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PersonneStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PersonneStructure",
        "path" : "PersonneStructure",
        "short" : "Modèle métier - Personne et/ou Structure",
        "definition" : "Une personne (professionnel ou patient ou autre) et/ou une structure (pour les professionnels)."
      },
      {
        "id" : "PersonneStructure.personne",
        "path" : "PersonneStructure.personne",
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
        "id" : "PersonneStructure.personne.identifiantPersonne",
        "path" : "PersonneStructure.personne.identifiantPersonne",
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
        "id" : "PersonneStructure.personne.professionRole",
        "path" : "PersonneStructure.personne.professionRole",
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
        "id" : "PersonneStructure.personne.lien",
        "path" : "PersonneStructure.personne.lien",
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
        "id" : "PersonneStructure.personne.adresse",
        "path" : "PersonneStructure.personne.adresse",
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
        "id" : "PersonneStructure.personne.coordonneesTelecom",
        "path" : "PersonneStructure.personne.coordonneesTelecom",
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
        "id" : "PersonneStructure.personne.IdentitePersonne",
        "path" : "PersonneStructure.personne.IdentitePersonne",
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
        "id" : "PersonneStructure.personne.IdentitePersonne.nomPersonne",
        "path" : "PersonneStructure.personne.IdentitePersonne.nomPersonne",
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
        "id" : "PersonneStructure.personne.IdentitePersonne.prenomPersonne",
        "path" : "PersonneStructure.personne.IdentitePersonne.prenomPersonne",
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
        "id" : "PersonneStructure.personne.IdentitePersonne.civilite",
        "path" : "PersonneStructure.personne.IdentitePersonne.civilite",
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
        "id" : "PersonneStructure.personne.IdentitePersonne.titre",
        "path" : "PersonneStructure.personne.IdentitePersonne.titre",
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
        "id" : "PersonneStructure.structure",
        "path" : "PersonneStructure.structure",
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
        "id" : "PersonneStructure.structure.identifiantStructure",
        "path" : "PersonneStructure.structure.identifiantStructure",
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
        "id" : "PersonneStructure.structure.nomStructure",
        "path" : "PersonneStructure.structure.nomStructure",
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
        "id" : "PersonneStructure.structure.adresse",
        "path" : "PersonneStructure.structure.adresse",
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
        "id" : "PersonneStructure.structure.coordonneesTelecom",
        "path" : "PersonneStructure.structure.coordonneesTelecom",
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
        "id" : "PersonneStructure.structure.cadreExercice",
        "path" : "PersonneStructure.structure.cadreExercice",
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
