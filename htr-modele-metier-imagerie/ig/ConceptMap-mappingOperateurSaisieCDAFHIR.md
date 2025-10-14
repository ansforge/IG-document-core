# Mapping Métier/CDA/FHIR : "Opérateur de saisie" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Opérateur de saisie"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Opérateur de saisie" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingOperateurSaisieCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:Mapping Métier/CDA/FHIR : "Opérateur de saisie" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "operateurSaisie" et l’élément CDA "dataEnterer"
* Mapping 2 : entre l’élément CDA "dataEnterer" et l’extension FHIR "DataEntererExtension"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle métier - Opérateur de saisie](StructureDefinition-OperateurSaisie.md) to [CDA - dataEnterer](StructureDefinition-fr-core-data-enterer.md)

* **Source Code**: OperateurSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: dataEnterer
  * **Commentaire**: 
* **Source Code**: OperateurSaisie.dateSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: dataEnterer.time
  * **Commentaire**: 
* **Source Code**: OperateurSaisie.operateurSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: dataEnterer.assignedEntity
  * **Commentaire**: L'élément operateurSaisie est de type PersonneStructure.

-------

**Group 2**Mapping from [CDA - dataEnterer](StructureDefinition-fr-core-data-enterer.md) to [Data Enterer Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-data-enterer-extension.html)

* **Source Code**: dataEnterer
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DataEntererExtension
  * **Commentaire**: 
* **Source Code**: dataEnterer.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DataEntererExtension.extension:time
  * **Commentaire**: 
* **Source Code**: dataEnterer.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DataEntererExtension.extension:party.ValueReference
  * **Commentaire**: extension:party.ValueReference.resolve().ofType(PractitionerRole)



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingOperateurSaisieCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingOperateurSaisieCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-14T08:46:07+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"operateurSaisie\\\" et l'élément CDA \\\"dataEnterer\\\"\n - Mapping 2 : entre l'élément CDA \\\"dataEnterer\\\" et l'extension FHIR \\\"DataEntererExtension\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/OperateurSaisie",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer",
      "element" : [
        {
          "code" : "OperateurSaisie",
          "target" : [
            {
              "code" : "dataEnterer",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "OperateurSaisie.dateSaisie",
          "target" : [
            {
              "code" : "dataEnterer.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "OperateurSaisie.operateurSaisie",
          "target" : [
            {
              "code" : "dataEnterer.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément operateurSaisie est de type PersonneStructure."
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-data-enterer",
      "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension",
      "element" : [
        {
          "code" : "dataEnterer",
          "target" : [
            {
              "code" : "DataEntererExtension",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "dataEnterer.time",
          "target" : [
            {
              "code" : "DataEntererExtension.extension:time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "dataEnterer.assignedEntity",
          "target" : [
            {
              "code" : "DataEntererExtension.extension:party.ValueReference",
              "equivalence" : "equivalent",
              "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole)"
            }
          ]
        }
      ]
    }
  ]
}

```
