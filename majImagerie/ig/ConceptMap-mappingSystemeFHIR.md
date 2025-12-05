# Mapping Métier/CDA/FHIR : "Système / Structure Auteur" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Système / Structure Auteur"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Système / Structure Auteur" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingSystemeFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:Mapping Métier/CDA/FHIR : "Système / Structure Auteur" |

 
Ce ConceptMap de l’élément SystemeStructureAuteur présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "SystemeStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrDeviceDocument"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-systeme` to [CDA - assignedAuthor](StructureDefinition-fr-cda-assigned-author.md)

* **Code source**: FRLMSysteme.identificationAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor
* **Code source**: FRLMSysteme.identificationAuteur.identifiantAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.id
* **Code source**: FRLMSysteme.identificationAuteur.professionSavoirFaireRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.code
* **Code source**: FRLMSysteme.identificationAuteur.systeme
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedAuthoringDevice
* **Code source**: FRLMSysteme.identificationAuteur.systeme.nomModeleSysteme
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedAuthoringDevice.manufacturerModelName
* **Code source**: FRLMSysteme.identificationAuteur.systeme.nomSysteme
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedAuthoringDevice.softwareName
* **Code source**: FRLMSysteme.identificationAuteur.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization
* **Code source**: FRLMSysteme.identificationAuteur.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.id
* **Code source**: FRLMSysteme.identificationAuteur.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.name
* **Code source**: FRLMSysteme.identificationAuteur.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.addr
* **Code source**: FRLMSysteme.identificationAuteur.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.telecom

-------

**Groupe 2**Mapping de [CDA - assignedAuthor](StructureDefinition-fr-cda-assigned-author.md) to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-document`

* **Code source**: assignedAuthor
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device
  * **Commentaire**: 
* **Code source**: assignedAuthor.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.identifier
  * **Commentaire**: 
* **Code source**: assignedAuthor.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.type
  * **Commentaire**: 
* **Code source**: assignedAuthor.assignedAuthoringDevice.manufacturerModelName
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.deviceName.name
  * **Commentaire**: 
* **Code source**: assignedAuthor.assignedAuthoringDevice.softwareName
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.deviceName.type
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.owner.organization
  * **Commentaire**: Device.owner.organization.resolve().ofType(Organization)
* **Code source**: assignedAuthor.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.owner.organization.identifier
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.owner.organization.name
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.owner.organization.address
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization.telecomm
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: Device.owner.organization.telecom
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
  "date" : "2025-12-05T09:37:33+00:00",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-systeme",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
      "element" : [
        {
          "code" : "FRLMSysteme.identificationAuteur",
          "target" : [
            {
              "code" : "assignedAuthor",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.identifiantAuteur",
          "target" : [
            {
              "code" : "assignedAuthor.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.professionSavoirFaireRole",
          "target" : [
            {
              "code" : "assignedAuthor.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.systeme",
          "target" : [
            {
              "code" : "assignedAuthor.assignedAuthoringDevice",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.systeme.nomModeleSysteme",
          "target" : [
            {
              "code" : "assignedAuthor.assignedAuthoringDevice.manufacturerModelName",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.systeme.nomSysteme",
          "target" : [
            {
              "code" : "assignedAuthor.assignedAuthoringDevice.softwareName",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.structure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.structure.identifiantStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.structure.nomStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.structure.adresse",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMSysteme.identificationAuteur.structure.coordonneesTelecom",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
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
