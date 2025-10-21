# Mapping Métier/CDA/FHIR : "Prescription" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Prescription"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Prescription" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPrescriptionCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Prescription" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "prescription" et l’élément CDA "inFulfillmentOf"
* Mapping 2 : entre l’élément CDA "inFulfillmentOf" et l’extension FHIR "OrderExtension"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle métier - Association du document à une prescription](StructureDefinition-Prescription.md) to [CDA - inFulfillmentOf](StructureDefinition-fr-core-inFulfillment-of.md)

* **Source Code**: Prescription
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: inFulfillmentOf
* **Source Code**: Prescription.identifiantPrescription
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: inFulfillmentOf.order.id
* **Source Code**: Prescription.accessionNumber
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: inFulfillmentOf.order.ps3-20:accessionNumber

-------

**Group 2**Mapping from [CDA - inFulfillmentOf](StructureDefinition-fr-core-inFulfillment-of.md) to [Order Extension](http://hl7.org/fhir/uv/fhir-clinical-document/2024Sep/StructureDefinition-OrderExtension.html)

* **Source Code**: inFulfillmentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:OrderExtension
* **Source Code**: inFulfillmentOf.order.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:OrderExtension.ValueReference.ServiceRequest.identifier
* **Source Code**: inFulfillmentOf.order.ps3-20:accessionNumber
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:OrderExtension.ValueReference.ServiceRequest.identifier



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPrescriptionCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPrescriptionCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Prescription\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-21T13:57:20+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"prescription\\\" et l'élément CDA \\\"inFulfillmentOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"inFulfillmentOf\\\" et l'extension FHIR \\\"OrderExtension\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Prescription",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-inFulfillment-of",
      "element" : [
        {
          "code" : "Prescription",
          "target" : [
            {
              "code" : "inFulfillmentOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Prescription.identifiantPrescription",
          "target" : [
            {
              "code" : "inFulfillmentOf.order.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Prescription.accessionNumber",
          "target" : [
            {
              "code" : "inFulfillmentOf.order.ps3-20:accessionNumber",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-inFulfillment-of",
      "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension",
      "element" : [
        {
          "code" : "inFulfillmentOf",
          "target" : [
            {
              "code" : "extension:OrderExtension",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "inFulfillmentOf.order.id",
          "target" : [
            {
              "code" : "extension:OrderExtension.ValueReference.ServiceRequest.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "inFulfillmentOf.order.ps3-20:accessionNumber",
          "target" : [
            {
              "code" : "extension:OrderExtension.ValueReference.ServiceRequest.identifier",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
