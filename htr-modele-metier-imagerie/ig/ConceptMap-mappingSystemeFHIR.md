# Mapping Métier/CDA/FHIR : "Système / Structure Auteur" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Système / Structure Auteur"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Système / Structure Auteur" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingSystemeFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:Mapping Métier/CDA/FHIR : "Système / Structure Auteur" |

 
Ce ConceptMap de l’élément SystemeStructureAuteur présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "SystemeStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrDeviceDocument"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Systeme` to [CDA - assignedAuthor](StructureDefinition-fr-core-assigned-author.md)

* **Source Code**: Systeme.identificationAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor
* **Source Code**: Systeme.identificationAuteur.identifiantAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.id
* **Source Code**: Systeme.identificationAuteur.professionSavoirFaireRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.code
* **Source Code**: Systeme.identificationAuteur.systeme
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedAuthoringDevice
* **Source Code**: Systeme.identificationAuteur.systeme.nomModeleSysteme
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedAuthoringDevice.manufacturerModelName
* **Source Code**: Systeme.identificationAuteur.systeme.nomSysteme
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.assignedAuthoringDevice.softwareName
* **Source Code**: Systeme.identificationAuteur.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization
* **Source Code**: Systeme.identificationAuteur.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.id
* **Source Code**: Systeme.identificationAuteur.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.name
* **Source Code**: Systeme.identificationAuteur.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.addr
* **Source Code**: Systeme.identificationAuteur.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: assignedAuthor.representedOrganization.telecom

-------

**Group 2**Mapping from [CDA - assignedAuthor](StructureDefinition-fr-core-assigned-author.md) to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-document`

* **Source Code**: assignedAuthor
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device
  * **Commentaire**: 
* **Source Code**: assignedAuthor.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.identifier
  * **Commentaire**: 
* **Source Code**: assignedAuthor.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.type
  * **Commentaire**: 
* **Source Code**: assignedAuthor.assignedAuthoringDevice.manufacturerModelName
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.deviceName.name
  * **Commentaire**: 
* **Source Code**: assignedAuthor.assignedAuthoringDevice.softwareName
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.deviceName.type
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.owner.organization
  * **Commentaire**: Device.owner.organization.resolve().ofType(Organization)
* **Source Code**: assignedAuthor.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.owner.organization.identifier
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.owner.organization.name
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.owner.organization.address
  * **Commentaire**: 
* **Source Code**: assignedAuthor.representedOrganization.telecomm
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Device.owner.organization.telecom
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingSystemeFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingSystemeFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Système / Structure Auteur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Système / Structure Auteur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-13T15:11:30+00:00",
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
  "description" : "Ce ConceptMap de l'élément SystemeStructureAuteur présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"SystemeStructureAuteur\\\" et l'élément CDA \\\"assignedAuthor\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedAuthor\\\" et le profil FHIR \\\"FrDeviceDocument\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Systeme",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author",
      "element" : [
        {
          "code" : "Systeme.identificationAuteur",
          "target" : [
            {
              "code" : "assignedAuthor",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.identifiantAuteur",
          "target" : [
            {
              "code" : "assignedAuthor.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.professionSavoirFaireRole",
          "target" : [
            {
              "code" : "assignedAuthor.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.systeme",
          "target" : [
            {
              "code" : "assignedAuthor.assignedAuthoringDevice",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.systeme.nomModeleSysteme",
          "target" : [
            {
              "code" : "assignedAuthor.assignedAuthoringDevice.manufacturerModelName",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.systeme.nomSysteme",
          "target" : [
            {
              "code" : "assignedAuthor.assignedAuthoringDevice.softwareName",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.structure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.structure.identifiantStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.structure.nomStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.structure.adresse",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "Systeme.identificationAuteur.structure.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-core-assigned-author",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-document",
      "element" : [
        {
          "code" : "assignedAuthor",
          "target" : [
            {
              "code" : "Device",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.id",
          "target" : [
            {
              "code" : "Device.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.code",
          "target" : [
            {
              "code" : "Device.type",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedAuthoringDevice.manufacturerModelName",
          "target" : [
            {
              "code" : "Device.deviceName.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedAuthoringDevice.softwareName",
          "target" : [
            {
              "code" : "Device.deviceName.type",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization",
          "target" : [
            {
              "code" : "Device.owner.organization",
              "equivalence" : "equivalent",
              "comment" : "Device.owner.organization.resolve().ofType(Organization)"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.id",
          "target" : [
            {
              "code" : "Device.owner.organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.name",
          "target" : [
            {
              "code" : "Device.owner.organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.addr",
          "target" : [
            {
              "code" : "Device.owner.organization.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.telecomm",
          "target" : [
            {
              "code" : "Device.owner.organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
