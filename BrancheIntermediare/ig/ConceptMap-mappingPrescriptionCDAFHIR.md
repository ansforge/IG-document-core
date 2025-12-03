# Mapping Métier/CDA/FHIR : "Prescription" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Prescription"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Prescription" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPrescriptionCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:Mapping Métier/CDA/FHIR : "Prescription" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "prescription" et l’élément CDA "inFulfillmentOf"
* Mapping 2 : entre l’élément CDA "inFulfillmentOf" et l’extension FHIR "OrderExtension"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Prescription](StructureDefinition-fr-lm-prescription.md) to [CDA - inFulfillmentOf](StructureDefinition-fr-cda-inFulfillment-of.md)

* **Code source**: FRLMPrescription
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: inFulfillmentOf
* **Code source**: FRLMPrescription.identifiantPrescription
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: inFulfillmentOf.order.id
* **Code source**: FRLMPrescription.accessionNumber
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: inFulfillmentOf.order.ps3-20:accessionNumber

-------

**Groupe 2**Mapping de [CDA - inFulfillmentOf](StructureDefinition-fr-cda-inFulfillment-of.md) to [Based on](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-event-basedOn.html)

* **Code source**: inFulfillmentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:basedOn
* **Code source**: inFulfillmentOf.order.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:basedOnExtension.ValueReference.ServiceRequest.identifier
* **Code source**: inFulfillmentOf.order.ps3-20:accessionNumber
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:basedOn.ValueReference.ServiceRequest.identifier



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
  "date" : "2025-12-03T16:47:23+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-inFulfillment-of",
      "element" : [
        {
          "code" : "FRLMPrescription",
          "target" : [
            {
              "code" : "inFulfillmentOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPrescription.identifiantPrescription",
          "target" : [
            {
              "code" : "inFulfillmentOf.order.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPrescription.accessionNumber",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-inFulfillment-of",
      "target" : "http://hl7.org/fhir/StructureDefinition/event-basedOn",
      "element" : [
        {
          "code" : "inFulfillmentOf",
          "target" : [
            {
              "code" : "extension:basedOn",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "inFulfillmentOf.order.id",
          "target" : [
            {
              "code" : "extension:basedOnExtension.ValueReference.ServiceRequest.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "inFulfillmentOf.order.ps3-20:accessionNumber",
          "target" : [
            {
              "code" : "extension:basedOn.ValueReference.ServiceRequest.identifier",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
