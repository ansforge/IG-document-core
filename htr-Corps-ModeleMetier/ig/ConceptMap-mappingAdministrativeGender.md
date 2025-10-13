# Mapping ValueSet AdministrativeGender - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping ValueSet AdministrativeGender**

## ConceptMap: Mapping ValueSet AdministrativeGender 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingAdministrativeGender | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:Mapping ValueSet AdministrativeGender |

 
Mapping entre les codes du ValueSet FHIR AdministrativeGender et ceux du ValueSet JDV_J143-AdministrativeGender-CISIS établi par ce ConceptMap. 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [AdministrativeGender](http://hl7.org/fhir/R4/codesystem-administrative-gender.html) to [JDV_J143_AdministrativeGender_CISIS](https://interop.esante.gouv.fr/terminologies/1.2.0/ValueSet-JDV-J143-AdministrativeGender-CISIS.html)

* **Source Code**: male
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: M
* **Source Code**: female
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: F
* **Source Code**: unknown
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: UN



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingAdministrativeGender",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingAdministrativeGender",
  "version" : "0.1.0",
  "name" : "Mapping ValueSet AdministrativeGender",
  "title" : "Mapping ValueSet AdministrativeGender",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Mapping entre les codes du ValueSet FHIR AdministrativeGender et ceux du ValueSet JDV_J143-AdministrativeGender-CISIS établi par ce ConceptMap.",
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
  "group" : [
    {
      "source" : "http://hl7.org/fhir/administrative-gender",
      "target" : "https://mos.esante.gouv.fr/NOS/JDV_J143-AdministrativeGender-CISIS/FHIR/JDV-J143-AdministrativeGender-CISIS",
      "element" : [
        {
          "code" : "male",
          "target" : [
            {
              "code" : "M",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "female",
          "target" : [
            {
              "code" : "F",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "unknown",
          "target" : [
            {
              "code" : "UN",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
