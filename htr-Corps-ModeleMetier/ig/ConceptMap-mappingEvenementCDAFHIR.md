# Mapping Métier/CDA/FHIR : "Evènement documenté" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Evènement documenté"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Evènement documenté" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingEvenementCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Evènement documenté" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 :entre le modèle métier "evenement" et l’élément CDA "documentationOf"
* Mapping 2 : entre l’élément CDA "documentationOf" et l’élément FHIR "Composition.event"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Evenement` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-documentation-of`

* **Source Code**: Evenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf
* **Source Code**: Evenement.identifiantEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf.serviceEvent.id
* **Source Code**: Evenement.codeEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf.serviceEvent.code
* **Source Code**: Evenement.dateHeureEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf.serviceEvent.effectiveTime
* **Source Code**: Evenement.executantEvenement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf.serviceEvent.performer@typeCode="PRF"
* **Source Code**: Evenement.executantEvenement.roleFonctionnel
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf.serviceEvent.performer.functionCode
* **Source Code**: Evenement.executantEvenement.dateHeureParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf.serviceEvent.performer.time
* **Source Code**: Evenement.executantEvenement.executant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: documentationOf.serviceEvent.performer.assignedEntity

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-documentation-of` to [Fr Composition Document](StructureDefinition-fr-composition-document.md)

* **Source Code**: documentationOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.event
  * **Commentaire**: 
* **Source Code**: documentationOf.serviceEvent.id
  * **relation**: (not mapped)
  * **Target Code**: Cette donnée est fournie dans un autre élément : Composition.relatesTo
* **Source Code**: documentationOf.serviceEvent.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.event.code
  * **Commentaire**: 
* **Source Code**: documentationOf.serviceEvent.effectiveTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.event.period
  * **Commentaire**: 
* **Source Code**: documentationOf.serviceEvent.performer@typeCode="PRF"
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.event.extension:perfomer.PractitionerRole
  * **Commentaire**: Composition.event.extension:perfomer.ValueReference.resolve().ofType(FrPractitionerRoleDocument)
* **Source Code**: documentationOf.serviceEvent.performer.functionCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.event.extension:perfomer.PractitionerRole.code
  * **Commentaire**: 
* **Source Code**: documentationOf.serviceEvent.performer.time
  * **relation**: (not mapped)
  * **Target Code**: Mapped in Composition.event.period
* **Source Code**: documentationOf.serviceEvent.performer.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.event.extension:perfomer.PractitionerRole.Practitioner
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
  "date" : "2025-10-21T12:36:21+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Evenement",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-documentation-of",
      "element" : [
        {
          "code" : "Evenement",
          "target" : [
            {
              "code" : "documentationOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Evenement.identifiantEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Evenement.codeEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Evenement.dateHeureEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.effectiveTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Evenement.executantEvenement",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.performer@typeCode=\"PRF\"",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Evenement.executantEvenement.roleFonctionnel",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.performer.functionCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Evenement.executantEvenement.dateHeureParticipation",
          "target" : [
            {
              "code" : "documentationOf.serviceEvent.performer.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Evenement.executantEvenement.executant",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-documentation-of",
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
