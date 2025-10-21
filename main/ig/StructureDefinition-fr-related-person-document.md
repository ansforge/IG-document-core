# Fr RelatedPerson Document - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fr RelatedPerson Document**

## Resource Profile: Fr RelatedPerson Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-related-person-document | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FrRelatedPersonDocument |

 
Ce profil représente l’informateur non professionnel. 

**Usages:**

* Use this Profile: [Fr Bundle Document](StructureDefinition-fr-bundle-document.md)
* Refer to this Profile: [Fr Composition Document](StructureDefinition-fr-composition-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/fr-related-person-document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-related-person-document.csv), [Excel](StructureDefinition-fr-related-person-document.xlsx), [Schematron](StructureDefinition-fr-related-person-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-related-person-document",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-related-person-document",
  "version" : "0.1.0",
  "name" : "FrRelatedPersonDocument",
  "title" : "Fr RelatedPerson Document",
  "status" : "draft",
  "date" : "2025-10-21T15:23:03+00:00",
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
  "description" : "Ce profil représente l'informateur non professionnel.",
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
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson.relationship:Role",
        "path" : "RelatedPerson.relationship",
        "sliceName" : "Role"
      },
      {
        "id" : "RelatedPerson.relationship:Role.coding.code",
        "path" : "RelatedPerson.relationship.coding.code",
        "patternCode" : "CON"
      },
      {
        "id" : "RelatedPerson.relationship:Role.coding.display",
        "path" : "RelatedPerson.relationship.coding.display",
        "patternString" : "Informateur"
      },
      {
        "id" : "RelatedPerson.relationship:RelationType",
        "path" : "RelatedPerson.relationship",
        "sliceName" : "RelationType",
        "short" : "Lien de la personne avec le patient/usager",
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS"
        }
      },
      {
        "id" : "RelatedPerson.name",
        "path" : "RelatedPerson.name",
        "short" : "Nom de la personne",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-human-name-document"
            ]
          }
        ]
      },
      {
        "id" : "RelatedPerson.name.given",
        "path" : "RelatedPerson.name.given",
        "max" : "1"
      }
    ]
  }
}

```
