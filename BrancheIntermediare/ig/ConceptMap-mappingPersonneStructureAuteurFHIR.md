# Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureAuteurFHIR | *Version*:0.1.0 |
| Draft as of 2025-12-05 | *Computable Name*:Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" |

 
Ce ConceptMap de l’élément PersonneStructureAuteur présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "PersonneStructureAuteur" et l’élément CDA "assignedAuthor"
* Mapping 2 : entre l’élément CDA "assignedAuthor" et le profil FHIR "FrPractitionerRoleDocument"
 

Mapping de (non spécifié) vers (non spécifié)

**Groupe 1**Mapping de [Modèle logique métier - FR LM Personne et/ou Structure Auteur](StructureDefinition-fr-lm-personne-structure-auteur.md) to [CDA - assignedAuthor](StructureDefinition-fr-cda-assigned-author.md)

* **Code source**: FRLMPersonneStructureAuteur
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor
* **Code source**: FRLMPersonneStructureAuteur.personne.identifiantPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.id
* **Code source**: FRLMPersonneStructureAuteur.personne.professionRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.code
* **Code source**: FRLMPersonneStructureAuteur.personne.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.addr
* **Code source**: FRLMPersonneStructureAuteur.personne.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.telecom
* **Code source**: FRLMPersonneStructureAuteur.personne.IdentitePersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedPerson
* **Code source**: FRLMPersonneStructureAuteur.personne.IdentitePersonne.nomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedPerson.name.family
* **Code source**: FRLMPersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedPerson.name.given
* **Code source**: FRLMPersonneStructureAuteur.personne.IdentitePersonne.civilite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedPerson.name.prefix
* **Code source**: FRLMPersonneStructureAuteur.personne.IdentitePersonne.titre
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.assignedPerson.name.suffix
* **Code source**: FRLMPersonneStructureAuteur.structure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization
* **Code source**: FRLMPersonneStructureAuteur.structure.identifiantStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.id
* **Code source**: FRLMPersonneStructureAuteur.structure.nomStructure
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.name
* **Code source**: FRLMPersonneStructureAuteur.structure.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.addr
* **Code source**: FRLMPersonneStructureAuteur.structure.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.telecom
* **Code source**: FRLMPersonneStructureAuteur.structure.secteurActivite
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: assignedAuthor.representedOrganization.standardIndustryClassCode

-------

**Groupe 2**Mapping de [CDA - assignedAuthor](StructureDefinition-fr-cda-assigned-author.md) to [FR PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md)

* **Code source**: assignedAuthor
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner
  * **Commentaire**: PractitionerRole.practitioner.resolve().ofType(Practitioner)
* **Code source**: assignedAuthor.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.identifier
  * **Commentaire**: 
* **Code source**: assignedAuthor.code
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.qualification.code
  * **Commentaire**: 
* **Code source**: assignedAuthor.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.address
  * **Commentaire**: 
* **Code source**: assignedAuthor.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.telecom
  * **Commentaire**: 
* **Code source**: assignedAuthor.assignedPerson.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name
  * **Commentaire**: 
* **Code source**: assignedAuthor.assignedPerson.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.family
  * **Commentaire**: 
* **Code source**: assignedAuthor.assignedPerson.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.given
  * **Commentaire**: 
* **Code source**: assignedAuthor.assignedPerson.name.prefix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.prefix
  * **Commentaire**: 
* **Code source**: assignedAuthor.assignedPerson.name.suffix
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Practitioner.name.suffix
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization
  * **Commentaire**: PractitionerRole.organization.resolve().ofType(Organization)
* **Code source**: assignedAuthor.representedOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.identifier
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.name
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.address
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.telecom
  * **Commentaire**: 
* **Code source**: assignedAuthor.representedOrganization.standardIndustryClassCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: PractitionerRole.Organization.type
  * **Commentaire**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPersonneStructureAuteurFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPersonneStructureAuteurFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\"",
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
  "description" : "Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"PersonneStructureAuteur\\\" et l'élément CDA \\\"assignedAuthor\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedAuthor\\\" et le profil FHIR \\\"FrPractitionerRoleDocument\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure-auteur",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
      "element" : [
        {
          "code" : "FRLMPersonneStructureAuteur",
          "target" : [
            {
              "code" : "assignedAuthor",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.identifiantPersonne",
          "target" : [
            {
              "code" : "assignedAuthor.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.professionRole",
          "target" : [
            {
              "code" : "assignedAuthor.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.adresse",
          "target" : [
            {
              "code" : "assignedAuthor.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedAuthor.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.nomPersonne",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.civilite",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.titre",
          "target" : [
            {
              "code" : "assignedAuthor.assignedPerson.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.structure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.structure.identifiantStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.structure.nomStructure",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.structure.adresse",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.structure.coordonneesTelecom",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPersonneStructureAuteur.structure.secteurActivite",
          "target" : [
            {
              "code" : "assignedAuthor.representedOrganization.standardIndustryClassCode",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document",
      "element" : [
        {
          "code" : "assignedAuthor",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner",
              "equivalence" : "equivalent",
              "comment" : "PractitionerRole.practitioner.resolve().ofType(Practitioner)"
            }
          ]
        },
        {
          "code" : "assignedAuthor.id",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.code",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.qualification.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.addr",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.telecom",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.family",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.given",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.prefix",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.prefix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.assignedPerson.name.suffix",
          "target" : [
            {
              "code" : "PractitionerRole.Practitioner.name.suffix",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization",
          "target" : [
            {
              "code" : "PractitionerRole.Organization",
              "equivalence" : "equivalent",
              "comment" : "PractitionerRole.organization.resolve().ofType(Organization)"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.id",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.name",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.addr",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.telecom",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "assignedAuthor.representedOrganization.standardIndustryClassCode",
          "target" : [
            {
              "code" : "PractitionerRole.Organization.type",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
