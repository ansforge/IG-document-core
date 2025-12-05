# Mapping Métier/CDA/FHIR : "Evènement documenté" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Evènement documenté"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Evènement documenté" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingEvenementCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:Mapping Métier/CDA/FHIR : "Evènement documenté" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 :entre le modèle métier "evenement" et l’élément CDA "documentationOf"
* Mapping 2 : entre l’élément CDA "documentationOf" et l’élément FHIR "Composition.event"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Évènement](StructureDefinition-fr-lm-evenement.md) to [CDA - documentationOf](StructureDefinition-fr-cda-documentation-of.md)

* **Code source**: FRLMEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf
* **Code source**: FRLMEvenement.identifiantEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf.serviceEvent.id
* **Code source**: FRLMEvenement.codeEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf.serviceEvent.code
* **Code source**: FRLMEvenement.dateHeureEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf.serviceEvent.effectiveTime
* **Code source**: FRLMEvenement.executantEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf.serviceEvent.performer@typeCode="PRF"
* **Code source**: FRLMEvenement.executantEvenement.roleFonctionnel
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf.serviceEvent.performer.functionCode
* **Code source**: FRLMEvenement.executantEvenement.dateHeureParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf.serviceEvent.performer.time
* **Code source**: FRLMEvenement.executantEvenement.executant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: documentationOf.serviceEvent.performer.assignedEntity

-------

**Groupe 2**Mapping de [CDA - documentationOf](StructureDefinition-fr-cda-documentation-of.md) to [FR Composition Document](StructureDefinition-fr-composition-document.md)

* **Code source**: documentationOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.event
  * **Commentaire**: 
* **Code source**: documentationOf.serviceEvent.id
  * **relation**: (not mapped)
  * **Code cible**: Cette donnée est fournie dans un autre élément : Composition.relatesTo
* **Code source**: documentationOf.serviceEvent.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.event.code
  * **Commentaire**: 
* **Code source**: documentationOf.serviceEvent.effectiveTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.event.period
  * **Commentaire**: 
* **Code source**: documentationOf.serviceEvent.performer@typeCode="PRF"
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.event.extension:perfomer.PractitionerRole
  * **Commentaire**: Composition.event.extension:perfomer.ValueReference.resolve().ofType(FrPractitionerRoleDocument)
* **Code source**: documentationOf.serviceEvent.performer.functionCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.event.extension:perfomer.PractitionerRole.code
  * **Commentaire**: 
* **Code source**: documentationOf.serviceEvent.performer.time
  * **relation**: (not mapped)
  * **Code cible**: Mapped in Composition.event.period
* **Code source**: documentationOf.serviceEvent.performer.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.event.extension:perfomer.PractitionerRole.Practitioner
  * **Commentaire**: Composition.event.extension:perfomer.ValueReference.resolve().ofType(FrPractitionerRoleDocument).Practitioner.resolve()



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingEvenementCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingEvenementCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Evènement documenté\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Evènement documenté\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T10:47:15+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 :entre le modèle métier \\\"evenement\\\" et l'élément CDA \\\"documentationOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"documentationOf\\\" et l'élément FHIR \\\"Composition.event\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evenement",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documentation-of",
      "element" : [
        {
          "code" : "FRLMEvenement",
          "target" : [
            {
              "code" : "documentationOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEvenement.identifiantEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEvenement.codeEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEvenement.dateHeureEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.effectiveTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEvenement.executantEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.performer@typeCode=\"PRF\"",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEvenement.executantEvenement.roleFonctionnel",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.performer.functionCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEvenement.executantEvenement.dateHeureParticipation",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.performer.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMEvenement.executantEvenement.executant",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.performer.assignedEntity",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documentation-of",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
      "element" : [
        {
          "code" : "documentationOf",
          "target" : [
            {
              "code" : "Composition.event",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "documentationOf.serviceEvent.id",
          "target" : [
            {
              "equivalence" : "unmatched",
              "comment" : "Cette donnée est fournie dans un autre élément : Composition.relatesTo"
            }
          ]
        },
        {
          "code" : "documentationOf.serviceEvent.code",
          "target" : [
            {
              "code" : "Composition.event.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "documentationOf.serviceEvent.effectiveTime",
          "target" : [
            {
              "code" : "Composition.event.period",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "documentationOf.serviceEvent.performer@typeCode=\"PRF\"",
          "target" : [
            {
              "code" : "Composition.event.extension:perfomer.PractitionerRole",
              "equivalence" : "equivalent",
              "comment" : "Composition.event.extension:perfomer.ValueReference.resolve().ofType(FrPractitionerRoleDocument)"
            }
          ]
        },
        {
          "code" : "documentationOf.serviceEvent.performer.functionCode",
          "target" : [
            {
              "code" : "Composition.event.extension:perfomer.PractitionerRole.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "documentationOf.serviceEvent.performer.time",
          "target" : [
            {
              "equivalence" : "unmatched",
              "comment" : "Mapped in Composition.event.period "
            }
          ]
        },
        {
          "code" : "documentationOf.serviceEvent.performer.assignedEntity",
          "target" : [
            {
              "code" : "Composition.event.extension:perfomer.PractitionerRole.Practitioner",
              "equivalence" : "equivalent",
              "comment" : "Composition.event.extension:perfomer.ValueReference.resolve().ofType(FrPractitionerRoleDocument).Practitioner.resolve()"
            }
          ]
        }
      ]
    }
  ]
}

```
