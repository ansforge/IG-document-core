# Mapping Métier/CDA/FHIR : "Informateur" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Informateur"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Informateur" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingInformateurCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:Mapping Métier/CDA/FHIR : "Informateur" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "informateur" et l’élément CDA "informant"
* Mapping 2 : entre l’élément CDA "informant" et l’extension FHIR "InformantExtension"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle métier - Informateur](StructureDefinition-Informateur.md) to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant`

* **Source Code**: Informateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: informant
  * **Commentaire**: 
* **Source Code**: Informateur.informateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: informant.assignedEntity
  * **Commentaire**: L'élément informateur est de type PersonneStructure.
* **Source Code**: Informateur.informateur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: informant.relatedEntity
  * **Commentaire**: L'élément informateur est de type PersonneStructure.

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant` to [Informant Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-informant-extension.html)

* **Source Code**: informant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:InformantExtension
  * **Commentaire**: 
* **Source Code**: informant.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:InformantExtension.extension:party.ValueReference
  * **Commentaire**: extension:party.ValueReference.resolve().ofType(PractitionerRole or Patient)
* **Source Code**: informant.relatedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:InformantExtension.extension:party.ValueReference
  * **Commentaire**: extension:party.ValueReference.resolve().ofType(RelatedPerson)



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingInformateurCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingInformateurCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Informateur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Informateur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-20T17:15:49+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"informateur\\\" et l'élément CDA \\\"informant\\\"\n - Mapping 2 : entre l'élément CDA \\\"informant\\\" et l'extension FHIR \\\"InformantExtension\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Informateur",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant",
      "element" : [
        {
          "code" : "Informateur",
          "target" : [
            {
              "code" : "informant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Informateur.informateur",
          "target" : [
            {
              "code" : "informant.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément informateur est de type PersonneStructure."
            }
          ]
        },
        {
          "code" : "Informateur.informateur",
          "target" : [
            {
              "code" : "informant.relatedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément informateur est de type PersonneStructure."
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-informant",
      "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension",
      "element" : [
        {
          "code" : "informant",
          "target" : [
            {
              "code" : "extension:InformantExtension",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "informant.assignedEntity",
          "target" : [
            {
              "code" : "extension:InformantExtension.extension:party.ValueReference",
              "equivalence" : "equivalent",
              "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole or Patient)"
            }
          ]
        },
        {
          "code" : "informant.relatedEntity",
          "target" : [
            {
              "code" : "extension:InformantExtension.extension:party.ValueReference",
              "equivalence" : "equivalent",
              "comment" : "extension:party.ValueReference.resolve().ofType(RelatedPerson)"
            }
          ]
        }
      ]
    }
  ]
}

```
