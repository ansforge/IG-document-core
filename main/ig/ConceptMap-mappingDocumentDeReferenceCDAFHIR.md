# Mapping Métier/CDA/FHIR : "DocumentDeReference" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "DocumentDeReference"**

## ConceptMap: Mapping Métier/CDA/FHIR : "DocumentDeReference" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingDocumentDeReferenceCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:Mapping Métier/CDA/FHIR : "DocumentDeReference" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "documentDeReference" et l’élément CDA "relatedDocument"
* Mapping 2 : entre l’élément CDA "relatedDocument" et l’élément FHIR "Composition.relatesTo"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Document de référence](StructureDefinition-fr-lm-document-reference.md) to [CDA - relatedDocument](StructureDefinition-fr-cda-related-document.md)

* **Code source**: FRLMDocumentDeReference
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedDocument
* **Code source**: FRLMDocumentDeReference.typeReference
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedDocument@typeCode
* **Code source**: FRLMDocumentDeReference.identifiantUniqueDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: relatedDocument.parentDocument.id

-------

**Groupe 2**Mapping de [CDA - relatedDocument](StructureDefinition-fr-cda-related-document.md) to [FR Composition Document](StructureDefinition-fr-composition-document.md)

* **Code source**: relatedDocument
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.relatesTo
* **Code source**: relatedDocument@typeCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.relatesTo.code
* **Code source**: relatedDocument.parentDocument.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.relatesTo.targetIdentifier



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
  "date" : "2025-12-03T15:31:39+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-reference",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-document",
      "element" : [
        {
          "code" : "FRLMDocumentDeReference",
          "target" : [
            {
              "code" : "relatedDocument",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMDocumentDeReference.typeReference",
          "target" : [
            {
              "code" : "relatedDocument@typeCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMDocumentDeReference.identifiantUniqueDocument",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-document",
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
