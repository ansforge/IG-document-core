# Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingStructureConservationCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "structureConservation" et l’élément CDA "custodian"
* Mapping 2 : entre l’élément CDA "custodian" et l’élément FHIR "Composition.custodian"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Structure conservation](StructureDefinition-fr-lm-structure-conservation.md) to [CDA - custodian](StructureDefinition-fr-cda-custodian.md)

* **Code source**: FRLMStructureConservation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: custodian
* **Code source**: FRLMStructureConservation.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: custodian.assignedCustodian
* **Code source**: FRLMStructureConservation.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: custodian.assignedCustodian.representedCustodianOrganization.id
* **Code source**: FRLMStructureConservation.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: custodian.assignedCustodian.representedCustodianOrganization.name
* **Code source**: FRLMStructureConservation.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: custodian.assignedCustodian.representedCustodianOrganization.addr
* **Code source**: FRLMStructureConservation.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: custodian.assignedCustodian.representedCustodianOrganization.telecom

-------

**Groupe 2**Mapping de [CDA - custodian](StructureDefinition-fr-cda-custodian.md) to [FR Composition Document](StructureDefinition-fr-composition-document.md)

* **Code source**: custodian
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.custodian
  * **Commentaire**: Composition.custodian.resolve().ofType(Organization)
* **Code source**: custodian.assignedCustodian
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.custodian.organization
  * **Commentaire**: 
* **Code source**: custodian.assignedCustodian.representedCustodianOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.custodian.organization.identifier
  * **Commentaire**: 
* **Code source**: custodian.assignedCustodian.representedCustodianOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.custodian.organization.name
  * **Commentaire**: 
* **Code source**: custodian.assignedCustodian.representedCustodianOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.custodian.organization.address
  * **Commentaire**: 
* **Code source**: custodian.assignedCustodian.representedCustodianOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Composition.custodian.organization.telecom
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingStructureConservationCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingStructureConservationCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-05T10:50:54+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"structureConservation\\\" et l'élément CDA \\\"custodian\\\"\n - Mapping 2 : entre l'élément CDA \\\"custodian\\\" et l'élément FHIR \\\"Composition.custodian\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-structure-conservation",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-custodian",
      "element" : [
        {
          "code" : "FRLMStructureConservation",
          "target" : [
            {
              "code" : "custodian",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMStructureConservation.structure",
          "target" : [
            {
              "code" : "custodian.assignedCustodian",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMStructureConservation.structure.identifiantStructure",
          "target" : [
            {
              "code" : "custodian.assignedCustodian.representedCustodianOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMStructureConservation.structure.nomStructure",
          "target" : [
            {
              "code" : "custodian.assignedCustodian.representedCustodianOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMStructureConservation.structure.adresse",
          "target" : [
            {
              "code" : "custodian.assignedCustodian.representedCustodianOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMStructureConservation.structure.coordonneesTelecom",
          "target" : [
            {
              "code" : "custodian.assignedCustodian.representedCustodianOrganization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-custodian",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
      "element" : [
        {
          "code" : "custodian",
          "target" : [
            {
              "code" : "Composition.custodian",
              "equivalence" : "equivalent",
              "comment" : "Composition.custodian.resolve().ofType(Organization)"
            }
          ]
        },
        {
          "code" : "custodian.assignedCustodian",
          "target" : [
            {
              "code" : "Composition.custodian.organization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "custodian.assignedCustodian.representedCustodianOrganization.id",
          "target" : [
            {
              "code" : "Composition.custodian.organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "custodian.assignedCustodian.representedCustodianOrganization.name",
          "target" : [
            {
              "code" : "Composition.custodian.organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "custodian.assignedCustodian.representedCustodianOrganization.addr",
          "target" : [
            {
              "code" : "Composition.custodian.organization.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "custodian.assignedCustodian.representedCustodianOrganization.telecom",
          "target" : [
            {
              "code" : "Composition.custodian.organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
