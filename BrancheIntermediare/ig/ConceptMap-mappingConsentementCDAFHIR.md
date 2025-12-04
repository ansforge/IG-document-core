# Mapping Métier/CDA/FHIR : "Consentement" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Consentement"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Consentement" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingConsentementCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-04 | *Computable Name*:Mapping Métier/CDA/FHIR : "Consentement" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "ConsentementAssocie" et l’élément CDA "authorization"
* Mapping 2 : entre l’élément CDA "authorization" et l’extension FHIR "ConsentExtension"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Consentement](StructureDefinition-fr-lm-consentement.md) to [CDA - authorization](StructureDefinition-fr-cda-authorization.md)

* **Code source**: FRLMConsentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: authorization
* **Code source**: FRLMConsentement.identifiantConsentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: authorization.consent.id
* **Code source**: FRLMConsentement.typeConsentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: authorization.consent.code
* **Code source**: FRLMConsentement.statutConsentement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: authorization.consent.statusCode="completed"

-------

**Groupe 2**Mapping de [CDA - authorization](StructureDefinition-fr-cda-authorization.md) to [Consent Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-consent-extension.html)

* **Code source**: authorization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ConsentExtension.ValueReference.Consent
  * **Commentaire**: ValueReference.resolve().ofType(Consent)
* **Code source**: authorization.consent.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ConsentExtension.ValueReference.Consent.identifier
  * **Commentaire**: 
* **Code source**: authorization.consent.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ConsentExtension.ValueReference.Consent.category
  * **Commentaire**: 
* **Code source**: authorization.consent.statusCode="completed"
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ConsentExtension.ValueReference.Consent.status:active
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-consentement",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authorization",
      "element" : [
        {
          "code" : "FRLMConsentement",
          "target" : [
            {
              "code" : "authorization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMConsentement.identifiantConsentement",
          "target" : [
            {
              "code" : "authorization.consent.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMConsentement.typeConsentement",
          "target" : [
            {
              "code" : "authorization.consent.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMConsentement.statutConsentement",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authorization",
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
