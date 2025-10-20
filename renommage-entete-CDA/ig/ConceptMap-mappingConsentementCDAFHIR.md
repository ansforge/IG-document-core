# Mapping Métier/CDA/FHIR : "Consentement" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Consentement"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Consentement" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingConsentementCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-20 | *Computable Name*:Mapping Métier/CDA/FHIR : "Consentement" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "ConsentementAssocie" et l’élément CDA "authorization"
* Mapping 2 : entre l’élément CDA "authorization" et l’extension FHIR "ConsentExtension"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle métier - Consentement associé au document](StructureDefinition-Consentement.md) to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authorization`

* **Source Code**: Consentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: authorization
* **Source Code**: Consentement.identifiantConsentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: authorization.consent.id
* **Source Code**: Consentement.typeConsentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: authorization.consent.code
* **Source Code**: Consentement.statutConsentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: authorization.consent.statusCode="completed"

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authorization` to [Consent Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-consent-extension.html)

* **Source Code**: authorization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:ConsentExtension.ValueReference.Consent
  * **Commentaire**: ValueReference.resolve().ofType(Consent)
* **Source Code**: authorization.consent.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:ConsentExtension.ValueReference.Consent.identifier
  * **Commentaire**: 
* **Source Code**: authorization.consent.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:ConsentExtension.ValueReference.Consent.category
  * **Commentaire**: 
* **Source Code**: authorization.consent.statusCode="completed"
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: extension:ConsentExtension.ValueReference.Consent.status:active
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingConsentementCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingConsentementCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Consentement\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Consentement\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-20T12:52:41+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"ConsentementAssocie\\\" et l'élément CDA \\\"authorization\\\"\n - Mapping 2 : entre l'élément CDA \\\"authorization\\\" et l'extension FHIR \\\"ConsentExtension\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Consentement",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authorization",
      "element" : [
        {
          "code" : "Consentement",
          "target" : [
            {
              "code" : "authorization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Consentement.identifiantConsentement",
          "target" : [
            {
              "code" : "authorization.consent.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Consentement.typeConsentement",
          "target" : [
            {
              "code" : "authorization.consent.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Consentement.statutConsentement",
          "target" : [
            {
              "code" : "authorization.consent.statusCode=\"completed\"",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-authorization",
      "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension",
      "element" : [
        {
          "code" : "authorization",
          "target" : [
            {
              "code" : "extension:ConsentExtension.ValueReference.Consent",
              "equivalence" : "equivalent",
              "comment" : "ValueReference.resolve().ofType(Consent)"
            }
          ]
        },
        {
          "code" : "authorization.consent.id",
          "target" : [
            {
              "code" : "extension:ConsentExtension.ValueReference.Consent.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authorization.consent.code",
          "target" : [
            {
              "code" : "extension:ConsentExtension.ValueReference.Consent.category",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "authorization.consent.statusCode=\"completed\"",
          "target" : [
            {
              "code" : "extension:ConsentExtension.ValueReference.Consent.status:active",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
