# Mapping Métier/CDA/FHIR : "Auteur" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Auteur"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Auteur" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingAuteurCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:Mapping Métier/CDA/FHIR : "Auteur" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "Auteur" et l’élément CDA "author"
* Mapping 2 : entre l’élément CDA "author" et l’élément FHIR "Composition.author"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from [Modèle logique métier - FR LM Auteur](StructureDefinition-fr-lm-auteur.md) to [CDA - author](StructureDefinition-fr-cda-author.md)

* **Source Code**: FRLMAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: author
  * **Commentaire**: 
* **Source Code**: FRLMAuteur.roleFonctionnel
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: author.functionCode
  * **Commentaire**: 
* **Source Code**: FRLMAuteur.horodatageParticipation
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: author.time
  * **Commentaire**: 
* **Source Code**: FRLMAuteur.FRLMPersonneStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: author.assignedAuthor
  * **Commentaire**: L'élément PersonneStructure est de type PersonneStructure.
* **Source Code**: FRLMAuteur.FRLMSystemeStructureAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: author.assignedAuthor
  * **Commentaire**: L'élément SystemeStructureAuteur est de type Systeme

-------

**Group 2**Mapping from [CDA - author](StructureDefinition-fr-cda-author.md) to [Fr Composition Document](StructureDefinition-fr-composition-document.md)

* **Source Code**: author
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.author
  * **Commentaire**: 
* **Source Code**: author.time
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.author.extension:time
  * **Commentaire**: 
* **Source Code**: author.functionCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.author.PractitionerRole.code
  * **Commentaire**: Auteur du document est un professionnel et author.ofType(PractitionerRole)
* **Source Code**: author.assignedAuthor
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.author.Practitioner
  * **Commentaire**: Composition.author.resolve().ofType(Practitioner)
* **Source Code**: author.assignedAuthor
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.author.Patient
  * **Commentaire**: Composition.author.resolve().ofType(Patient)
* **Source Code**: author.assignedAuthor
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Composition.author.Device
  * **Commentaire**: Composition.author.resolve().ofType(Device)



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingAuteurCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingAuteurCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Auteur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Auteur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-21T13:05:45+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"Auteur\\\" et l'élément CDA \\\"author\\\"\n - Mapping 2 : entre l'élément CDA \\\"author\\\" et l'élément FHIR \\\"Composition.author\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-author",
      "element" : [
        {
          "code" : "FRLMAuteur",
          "target" : [
            {
              "code" : "author",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMAuteur.roleFonctionnel",
          "target" : [
            {
              "code" : "author.functionCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMAuteur.horodatageParticipation",
          "target" : [
            {
              "code" : "author.time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMAuteur.FRLMPersonneStructure",
          "target" : [
            {
              "code" : "author.assignedAuthor",
              "equivalence" : "equivalent",
              "comment" : "L'élément PersonneStructure est de type PersonneStructure."
            }
          ]
        },
        {
          "code" : "FRLMAuteur.FRLMSystemeStructureAuteur",
          "target" : [
            {
              "code" : "author.assignedAuthor",
              "equivalence" : "equivalent",
              "comment" : "L'élément SystemeStructureAuteur est de type Systeme"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-author",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
      "element" : [
        {
          "code" : "author",
          "target" : [
            {
              "code" : "Composition.author",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "author.time",
          "target" : [
            {
              "code" : "Composition.author.extension:time",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "author.functionCode",
          "target" : [
            {
              "code" : "Composition.author.PractitionerRole.code",
              "equivalence" : "equivalent",
              "comment" : "Auteur du document est un professionnel et author.ofType(PractitionerRole)"
            }
          ]
        },
        {
          "code" : "author.assignedAuthor",
          "target" : [
            {
              "code" : "Composition.author.Practitioner",
              "equivalence" : "equivalent",
              "comment" : "Composition.author.resolve().ofType(Practitioner)"
            }
          ]
        },
        {
          "code" : "author.assignedAuthor",
          "target" : [
            {
              "code" : "Composition.author.Patient",
              "equivalence" : "equivalent",
              "comment" : "Composition.author.resolve().ofType(Patient)"
            }
          ]
        },
        {
          "code" : "author.assignedAuthor",
          "target" : [
            {
              "code" : "Composition.author.Device",
              "equivalence" : "equivalent",
              "comment" : "Composition.author.resolve().ofType(Device)"
            }
          ]
        }
      ]
    }
  ]
}

```
