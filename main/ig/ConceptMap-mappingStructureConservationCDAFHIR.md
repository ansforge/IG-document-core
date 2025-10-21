# Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingStructureConservationCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "structureConservation" et l’élément CDA "custodian"
* Mapping 2 : entre l’élément CDA "custodian" et l’élément FHIR "Composition.custodian"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/StructureConservation` to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-custodian`

* **Source Code**: StructureConservation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: custodian
* **Source Code**: StructureConservation.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: custodian.assignedCustodian
* **Source Code**: StructureConservation.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: custodian.assignedCustodian.representedCustodianOrganization.id
* **Source Code**: StructureConservation.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: custodian.assignedCustodian.representedCustodianOrganization.name
* **Source Code**: StructureConservation.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: custodian.assignedCustodian.representedCustodianOrganization.addr
* **Source Code**: StructureConservation.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: custodian.assignedCustodian.representedCustodianOrganization.telecom

-------

**Group 2**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-custodian` to [Fr Composition Document](StructureDefinition-fr-composition-document.md)

* **Source Code**: custodian
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.custodian
  * **Commentaire**: Composition.custodian.resolve().ofType(Organization)
* **Source Code**: custodian.assignedCustodian
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.custodian.organization
  * **Commentaire**: 
* **Source Code**: custodian.assignedCustodian.representedCustodianOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.custodian.organization.identifier
  * **Commentaire**: 
* **Source Code**: custodian.assignedCustodian.representedCustodianOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.custodian.organization.name
  * **Commentaire**: 
* **Source Code**: custodian.assignedCustodian.representedCustodianOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.custodian.organization.address
  * **Commentaire**: 
* **Source Code**: custodian.assignedCustodian.representedCustodianOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.custodian.organization.telecom
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
  "date" : "2025-10-21T08:14:34+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/StructureConservation",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-custodian",
      "element" : [
        {
          "code" : "StructureConservation",
          "target" : [
            {
              "code" : "custodian",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "StructureConservation.structure",
          "target" : [
            {
              "code" : "custodian.assignedCustodian",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "StructureConservation.structure.identifiantStructure",
          "target" : [
            {
              "code" : "custodian.assignedCustodian.representedCustodianOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "StructureConservation.structure.nomStructure",
          "target" : [
            {
              "code" : "custodian.assignedCustodian.representedCustodianOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "StructureConservation.structure.adresse",
          "target" : [
            {
              "code" : "custodian.assignedCustodian.representedCustodianOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "StructureConservation.structure.coordonneesTelecom",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-custodian",
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
