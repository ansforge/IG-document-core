# Mapping Métier/CDA/FHIR : "Participant" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Participant"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Participant" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingParticipantCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:Mapping Métier/CDA/FHIR : "Participant" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "participant" et l’élément CDA "participant"
* Mapping 2 : entre l’élément CDA "participant" et l’extension FHIR "ParticipantExtension"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Participant](StructureDefinition-fr-lm-participant.md) to [CDA - participant](StructureDefinition-fr-cda-participant.md)

* **Code source**: FRLMParticipant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: participant
  * **Commentaire**: 
* **Code source**: FRLMParticipant.typeParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: participant@typeCode
  * **Commentaire**: 
* **Code source**: FRLMParticipant.roleFonctionnel
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: participant.functionCode
  * **Commentaire**: 
* **Code source**: FRLMParticipant.dateDebutEtOuFinParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: participant.time
  * **Commentaire**: 
* **Code source**: FRLMParticipant.participant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: participant.associatedEntity
  * **Commentaire**: L'élément participant est de type PersonneStructure

-------

**Groupe 2**Mapping de [CDA - participant](StructureDefinition-fr-cda-participant.md) to [Participant Extension](http://hl7.org/fhir/uv/fhir-clinical-document/STU1/StructureDefinition-ParticipantExtension.html)

* **Code source**: participant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension
  * **Commentaire**: 
* **Code source**: participant@typeCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.extention:type
  * **Commentaire**: 
* **Code source**: participant.functionCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.extention:function.coding
  * **Commentaire**: 
* **Code source**: participant.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.extention:time
  * **Commentaire**: 
* **Code source**: participant.associatedEntity
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party
  * **Commentaire**: extension:party.ValueReference.resolve().ofType(PractitionerRole)
* **Code source**: participant.associatedEntity@classCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.qualification.code
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.identifier
  * **Commentaire**: extension:party.ValueReference.resolve().ofType(PractitionerRole).practitioner.resolve()
* **Code source**: participant.associatedEntity.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.qualification.code
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.address
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.telecom
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.name
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.family
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.given
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.prefix
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.suffix
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.scopingOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Organization
  * **Commentaire**: extension:party.ValueReference.resolve().ofType(PractitionerRole).organization.resolve()
* **Code source**: participant.associatedEntity.scopingOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Organization.identifier
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.scopingOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Organization.name
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.scopingOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Organization.telecom
  * **Commentaire**: 
* **Code source**: participant.associatedEntity.scopingOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: extension:ParticipantExtension.party.PractitionerRole.Organization.address
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingParticipantCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingParticipantCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Participant\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Participant\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"participant\\\" et l'élément CDA \\\"participant\\\"\n - Mapping 2 : entre l'élément CDA \\\"participant\\\" et l'extension FHIR \\\"ParticipantExtension\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant",
      "element" : [
        {
          "code" : "FRLMParticipant",
          "target" : [
            {
              "code" : "participant",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMParticipant.typeParticipation",
          "target" : [
            {
              "code" : "participant@typeCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMParticipant.roleFonctionnel",
          "target" : [
            {
              "code" : "participant.functionCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMParticipant.dateDebutEtOuFinParticipation",
          "target" : [
            {
              "code" : "participant.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMParticipant.participant",
          "target" : [
            {
              "code" : "participant.associatedEntity",
              "equivalence" : "equivalent",
              "comment" : "L'élément participant est de type PersonneStructure"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant",
      "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension",
      "element" : [
        {
          "code" : "participant",
          "target" : [
            {
              "code" : "extension:ParticipantExtension",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant@typeCode",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.extention:type",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.functionCode",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.extention:function.coding",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.time",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.extention:time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party",
              "equivalence" : "equivalent",
              "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole)"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity@classCode",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.qualification.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.id",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.identifier",
              "equivalence" : "equivalent",
              "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole).practitioner.resolve()"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.code",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.qualification.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.addr",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.telecom",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.name",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.name.family",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.name.given",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.name.prefix",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.name.suffix",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.scopingOrganization",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization",
              "equivalence" : "equivalent",
              "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole).organization.resolve()"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.scopingOrganization.id",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.scopingOrganization.name",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.scopingOrganization.telecom",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "participant.associatedEntity.scopingOrganization.addr",
          "target" : [
            {
              "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.address",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
