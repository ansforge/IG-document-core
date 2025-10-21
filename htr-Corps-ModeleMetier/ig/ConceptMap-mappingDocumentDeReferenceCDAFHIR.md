# Mapping Métier/CDA/FHIR : "DocumentDeReference" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "DocumentDeReference"**

## ConceptMap: Mapping Métier/CDA/FHIR : "DocumentDeReference" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingDocumentDeReferenceCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "DocumentDeReference" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "documentDeReference" et l’élément CDA "relatedDocument"
* Mapping 2 : entre l’élément CDA "relatedDocument" et l’élément FHIR "Composition.relatesTo"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentDeReference` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-document`

* **Source Code**: DocumentDeReference
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedDocument
* **Source Code**: DocumentDeReference.typeReference
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedDocument@typeCode
* **Source Code**: DocumentDeReference.identifiantUniqueDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: relatedDocument.parentDocument.id

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-document` to [Fr Composition Document](StructureDefinition-fr-composition-document.md)

* **Source Code**: relatedDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.relatesTo
* **Source Code**: relatedDocument@typeCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.relatesTo.code
* **Source Code**: relatedDocument.parentDocument.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.relatesTo.targetIdentifier



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingDocumentDeReferenceCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingDocumentDeReferenceCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"DocumentDeReference\"",
  "title" : "Mapping Métier/CDA/FHIR : \"DocumentDeReference\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-21T08:19:27+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"documentDeReference\\\" et l'élément CDA \\\"relatedDocument\\\"\n - Mapping 2 : entre l'élément CDA \\\"relatedDocument\\\" et l'élément FHIR \\\"Composition.relatesTo\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/DocumentDeReference",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-document",
      "element" : [
        {
          "code" : "DocumentDeReference",
          "target" : [
            {
              "code" : "relatedDocument",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DocumentDeReference.typeReference",
          "target" : [
            {
              "code" : "relatedDocument@typeCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DocumentDeReference.identifiantUniqueDocument",
          "target" : [
            {
              "code" : "relatedDocument.parentDocument.id",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-related-document",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
      "element" : [
        {
          "code" : "relatedDocument",
          "target" : [
            {
              "code" : "Composition.relatesTo",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedDocument@typeCode",
          "target" : [
            {
              "code" : "Composition.relatesTo.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "relatedDocument.parentDocument.id",
          "target" : [
            {
              "code" : "Composition.relatesTo.targetIdentifier",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
