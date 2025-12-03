# Mapping Métier/CDA/FHIR : "Prise en charge" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Prise en charge"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Prise en charge" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPriseEnchargeCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:Mapping Métier/CDA/FHIR : "Prise en charge" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "prise en charge" et l’élément CDA "componentOf"
* Mapping 2 : entre l’élément CDA "componentOf" et l’élément FHIR "Composition.encounter(Encounter)"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Prise en charge](StructureDefinition-fr-lm-prise-en-charge.md) to [CDA - componentOf](StructureDefinition-fr-cda-component-of.md)

* **Code source**: FRLMPriseEncharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.identifiantPriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.id
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.typePriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.code
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.dateDebutFinPriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.effectiveTime
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.typeSortie
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.dischargeDispositionCode
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.responsablePriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.responsibleParty.assignedEntity
  * **Commentaire**: L'élément responsablePriseEnCharge est de type PersonneStructure.
* **Code source**: FRLMPriseEncharge.personneImpliqueePriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.encounterParticipant
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.personneImpliqueePriseEnCharge.typeParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.encounterParticipant@typeCode
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.encounterParticipant.time
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.encounterParticipant.assignedEntity
  * **Commentaire**: L'élément personneImpliqueePriseEnCharge est de type PersonneStructure.
* **Code source**: FRLMPriseEncharge.lieuPriseEnCharge
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.location
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.lieuPriseEnCharge.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.location.healthcareFacility
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.location.healthcareFacility.code
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.location.healthcareFacility.code.translation
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.lieuPriseEnCharge.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.location.healthcareFacility.location.name
  * **Commentaire**: 
* **Code source**: FRLMPriseEncharge.lieuPriseEnCharge.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: componentOf.encompassingEncounter.location.healthcareFacility.location.addr
  * **Commentaire**: 

-------

**Groupe 2**Mapping de [CDA - componentOf](StructureDefinition-fr-cda-component-of.md) to [Encounter - FR Encounter Document](StructureDefinition-fr-encounter-document.md)

* **Code source**: componentOf
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.encounter.Encounter
  * **Commentaire**: Composition.encounter.resolve().ofType(Encounter)
* **Code source**: componentOf.encompassingEncounter.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.identifier
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.type
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.effectiveTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.period
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.dischargeDispositionCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.hospitalization.dischargeDisposition
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.responsibleParty.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.participant.type="DIS".individual
  * **Commentaire**: Encounter.participant.individual.resolve().ofType(PractitionerRole)
* **Code source**: componentOf.encompassingEncounter.encounterParticipant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.participant
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.encounterParticipant@typeCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.participant.type
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.encounterParticipant.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.participant.period
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.encounterParticipant.assignedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.participant.individual
  * **Commentaire**: Encounter.participant.individual.resolve().ofType(PractitionerRole)
* **Code source**: componentOf.encompassingEncounter.location
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.location
  * **Commentaire**: Encounter.location.resolve().ofType(Location)
* **Code source**: componentOf.encompassingEncounter.location.healthcareFacility
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.location.Location
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.location.healthcareFacility.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.location.Location.type
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.location.healthcareFacility.location.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.location.Location.name
  * **Commentaire**: 
* **Code source**: componentOf.encompassingEncounter.location.healthcareFacility.location.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Encounter.location.Location.address
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
  "date" : "2025-12-03T16:46:30+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prise-en-charge",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-component-of",
      "element" : [
        {
          "code" : "FRLMPriseEncharge",
          "target" : [
            {
              "code" : "componentOf",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.identifiantPriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.typePriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.dateDebutFinPriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.effectiveTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.typeSortie",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.dischargeDispositionCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.responsablePriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.responsibleParty.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément responsablePriseEnCharge est de type PersonneStructure."
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge.typeParticipation",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant@typeCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.encounterParticipant.assignedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément personneImpliqueePriseEnCharge est de type PersonneStructure. "
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.lieuPriseEnCharge",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code.translation",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.nomStructure",
          "target" : [
            {
              "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.adresse",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-component-of",
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
