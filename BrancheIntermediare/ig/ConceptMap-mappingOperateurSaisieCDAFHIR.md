# Mapping Métier/CDA/FHIR : "Opérateur de saisie" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Opérateur de saisie"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Opérateur de saisie" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingOperateurSaisieCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-04 | *Computable Name*:Mapping Métier/CDA/FHIR : "Opérateur de saisie" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "operateurSaisie" et l’élément CDA "dataEnterer"
* Mapping 2 : entre l’élément CDA "dataEnterer" et l’extension FHIR "DataEntererExtension"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Opérateur de saisie](StructureDefinition-fr-lm-operateur-saisie.md) to [CDA - dataEnterer](StructureDefinition-fr-cda-data-enterer.md)

* **Code source**: FRLMOperateurSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: dataEnterer
  * **Commentaire**: 
* **Code source**: FRLMOperateurSaisie.dateSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: dataEnterer.time
  * **Commentaire**: 
* **Code source**: FRLMOperateurSaisie.operateurSaisie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: dataEnterer.assignedEntity
  * **Commentaire**: L'élément operateurSaisie est de type PersonneStructure.

-------

**Groupe 2**Mapping de [CDA - dataEnterer](StructureDefinition-fr-cda-data-enterer.md) to [Data Enterer Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-data-enterer-extension.html)

* **Code source**: dataEnterer
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: DataEntererExtension
  * **Commentaire**: 
* **Code source**: dataEnterer.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: DataEntererExtension.extension:time
  * **Commentaire**: 
* **Code source**: dataEnterer.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: DataEntererExtension.extension:party.ValueReference
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
  "date" : "2025-12-04T14:08:40+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-operateur-saisie",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-data-enterer",
      "element" : [
        {
          "code" : "FRLMOperateurSaisie",
          "target" : [
            {
              "code" : "dataEnterer",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMOperateurSaisie.dateSaisie",
          "target" : [
            {
              "code" : "dataEnterer.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMOperateurSaisie.operateurSaisie",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-data-enterer",
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
