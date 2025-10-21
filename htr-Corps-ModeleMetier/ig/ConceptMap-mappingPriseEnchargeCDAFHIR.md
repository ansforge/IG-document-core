# Mapping Métier/CDA/FHIR : "Prise en charge" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Prise en charge"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Prise en charge" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPriseEnchargeCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Prise en charge" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "prise en charge" et l’élément CDA "componentOf"
* Mapping 2 : entre l’élément CDA "componentOf" et l’élément FHIR "Composition.encounter(Encounter)"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PriseEncharge` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-component-of`

* **Source Code**: PriseEncharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf
  * **Commentaire**: 
* **Source Code**: PriseEncharge.identifiantPriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.id
  * **Commentaire**: 
* **Source Code**: PriseEncharge.typePriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.code
  * **Commentaire**: 
* **Source Code**: PriseEncharge.dateDebutFinPriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.effectiveTime
  * **Commentaire**: 
* **Source Code**: PriseEncharge.typeSortie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.dischargeDispositionCode
  * **Commentaire**: 
* **Source Code**: PriseEncharge.responsablePriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.responsibleParty.assignedEntity
  * **Commentaire**: L'élément responsablePriseEnCharge est de type PersonneStructure.
* **Source Code**: PriseEncharge.personneImpliqueePriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.encounterParticipant
  * **Commentaire**: 
* **Source Code**: PriseEncharge.personneImpliqueePriseEnCharge.typeParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.encounterParticipant@typeCode
  * **Commentaire**: 
* **Source Code**: PriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.encounterParticipant.time
  * **Commentaire**: 
* **Source Code**: PriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.encounterParticipant.assignedEntity
  * **Commentaire**: L'élément personneImpliqueePriseEnCharge est de type PersonneStructure.
* **Source Code**: PriseEncharge.lieuPriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.location
  * **Commentaire**: 
* **Source Code**: PriseEncharge.lieuPriseEnCharge.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.location.healthcareFacility
  * **Commentaire**: 
* **Source Code**: PriseEncharge.lieuPriseEnCharge.structure.secteurActivite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.location.healthcareFacility.code
  * **Commentaire**: 
* **Source Code**: PriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.location.healthcareFacility.code.translation
  * **Commentaire**: 
* **Source Code**: PriseEncharge.lieuPriseEnCharge.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.location.healthcareFacility.location.name
  * **Commentaire**: 
* **Source Code**: PriseEncharge.lieuPriseEnCharge.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: componentOf.encompassingEncounter.location.healthcareFacility.location.addr
  * **Commentaire**: 

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-component-of` to [Fr Encounter Document](StructureDefinition-fr-encounter-document.md)

* **Source Code**: componentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.encounter.Encounter
  * **Commentaire**: Composition.encounter.resolve().ofType(Encounter)
* **Source Code**: componentOf.encompassingEncounter.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.identifier
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.type
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.effectiveTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.period
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.dischargeDispositionCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.dischargeDisposition
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.responsibleParty.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.type="DIS".individual
  * **Commentaire**: Encounter.participant.individual.resolve().ofType(PractitionerRole)
* **Source Code**: componentOf.encompassingEncounter.encounterParticipant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.encounterParticipant@typeCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.type
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.encounterParticipant.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.period
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.encounterParticipant.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
  * **Commentaire**: Encounter.participant.individual.resolve().ofType(PractitionerRole)
* **Source Code**: componentOf.encompassingEncounter.location
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.location
  * **Commentaire**: Encounter.location.resolve().ofType(Location)
* **Source Code**: componentOf.encompassingEncounter.location.healthcareFacility
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.location.Location
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.location.healthcareFacility.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.location.Location.type
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.location.healthcareFacility.location.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.location.Location.name
  * **Commentaire**: 
* **Source Code**: componentOf.encompassingEncounter.location.healthcareFacility.location.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.location.Location.address
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPriseEnchargeCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPriseEnchargeCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Prise en charge\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Prise en charge\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"prise en charge\\\" et l'élément CDA \\\"componentOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"componentOf\\\" et l'élément FHIR \\\"Composition.encounter(Encounter)\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/PriseEncharge",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-component-of",
      "element" : [
        {
          "code" : "PriseEncharge",
          "target" : [
            {
              "code" : "componentOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.identifiantPriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.typePriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.dateDebutFinPriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.effectiveTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.typeSortie",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.dischargeDispositionCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.responsablePriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.responsibleParty.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément responsablePriseEnCharge est de type PersonneStructure."
            }
          ]
        },
        {
          "code" : "PriseEncharge.personneImpliqueePriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.personneImpliqueePriseEnCharge.typeParticipation",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant@typeCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément personneImpliqueePriseEnCharge est de type PersonneStructure. "
            }
          ]
        },
        {
          "code" : "PriseEncharge.lieuPriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.lieuPriseEnCharge.structure",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.lieuPriseEnCharge.structure.secteurActivite",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code.translation",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.lieuPriseEnCharge.structure.nomStructure",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PriseEncharge.lieuPriseEnCharge.structure.adresse",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.addr",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-component-of",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document",
      "element" : [
        {
          "code" : "componentOf",
          "target" : [
            {
              "code" : "Composition.encounter.Encounter",
              "equivalence" : "equivalent",
              "comment" : "Composition.encounter.resolve().ofType(Encounter)"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.id",
          "target" : [
            {
              "code" : "Encounter.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.code",
          "target" : [
            {
              "code" : "Encounter.type",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.effectiveTime",
          "target" : [
            {
              "code" : "Encounter.period",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.dischargeDispositionCode",
          "target" : [
            {
              "code" : "Encounter.hospitalization.dischargeDisposition",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.responsibleParty.assignedEntity",
          "target" : [
            {
              "code" : "Encounter.participant.type=\"DIS\".individual",
              "equivalence" : "equivalent",
              "comment" : "Encounter.participant.individual.resolve().ofType(PractitionerRole)"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.encounterParticipant",
          "target" : [
            {
              "code" : "Encounter.participant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.encounterParticipant@typeCode",
          "target" : [
            {
              "code" : "Encounter.participant.type",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.encounterParticipant.time",
          "target" : [
            {
              "code" : "Encounter.participant.period",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.encounterParticipant.assignedEntity",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent",
              "comment" : "Encounter.participant.individual.resolve().ofType(PractitionerRole)"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.location",
          "target" : [
            {
              "code" : "Encounter.location",
              "equivalence" : "equivalent",
              "comment" : "Encounter.location.resolve().ofType(Location)"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.location.healthcareFacility",
          "target" : [
            {
              "code" : "Encounter.location.Location",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code",
          "target" : [
            {
              "code" : "Encounter.location.Location.type",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.name",
          "target" : [
            {
              "code" : "Encounter.location.Location.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.addr",
          "target" : [
            {
              "code" : "Encounter.location.Location.address",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
