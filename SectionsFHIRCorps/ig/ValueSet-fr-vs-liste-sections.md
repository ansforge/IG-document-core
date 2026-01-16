# ValueSet – FR ValueSet Liste des sections - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ValueSet – FR ValueSet Liste des sections**

## ValueSet: ValueSet – FR ValueSet Liste des sections 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-vs-liste-sections | *Version*:0.1.0 |
| Draft as of 2026-01-16 | *Computable Name*:FRValueSetListeSectionsDocument |

 
ValueSet de toutes les sections dans un document 

 **References** 

* [FR Composition Document](StructureDefinition-fr-composition-document.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-liste-sections",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-vs-liste-sections",
  "version" : "0.1.0",
  "name" : "FRValueSetListeSectionsDocument",
  "title" : "ValueSet – FR ValueSet Liste des sections",
  "status" : "draft",
  "date" : "2026-01-16T14:35:31+00:00",
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
  "description" : "ValueSet de toutes les sections dans un document",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "55112-7",
            "display" : "Commentaire"
          },
          {
            "code" : "55108-5",
            "display" : "Copie du document"
          },
          {
            "code" : "42349-1",
            "display" : "Raison de la recommandation"
          },
          {
            "code" : "101792-0",
            "display" : "Résultats de laboratoire scannés"
          },
          {
            "code" : "11369-6",
            "display" : "Historique des vaccinations"
          },
          {
            "code" : "48765-2",
            "display" : "Allergies et hypersensibilités"
          },
          {
            "code" : "10157-6",
            "display" : "Historique des pathologies familiales"
          },
          {
            "code" : "11348-0",
            "display" : "Antécédents médicaux"
          },
          {
            "code" : "57723-9",
            "display" : "Numéro de code à barres unique"
          },
          {
            "code" : "55111-9",
            "display" : "Description de l'acte d’imagerie"
          },
          {
            "code" : "55109-3",
            "display" : "Complications"
          },
          {
            "code" : "19005-8",
            "display" : "Conclusions"
          },
          {
            "code" : "55115-0",
            "display" : "Demande"
          },
          {
            "code" : "18834-2",
            "display" : "Examen de comparaison radiologique"
          },
          {
            "code" : "73569-6",
            "display" : "Exposition aux rayonnements et informations de radioprotection"
          },
          {
            "code" : "11329-0",
            "display" : "Historique médical"
          },
          {
            "code" : "55752-0",
            "display" : "Informations cliniques"
          },
          {
            "code" : "59768-2",
            "display" : "Motif de l'acte"
          },
          {
            "code" : "59776-5",
            "display" : "Résultats de l'acte"
          },
          {
            "code" : "42348-3",
            "display" : "Directives anticipées"
          },
          {
            "code" : "60590-7",
            "display" : "Médicaments délivrés"
          },
          {
            "code" : "55107-7",
            "display" : "Documents ajoutés"
          },
          {
            "code" : "34895-3",
            "display" : "Education du patient"
          },
          {
            "code" : "44939-7",
            "display" : "Effets indésirables prévisibles liés aux médicaments"
          },
          {
            "code" : "10161-8",
            "display" : "Facteurs de risques professionnels"
          },
          {
            "code" : "46006-3",
            "display" : "Problèmes physiques fonctionnels et structurels"
          },
          {
            "code" : "29762-2",
            "display" : "Habitus, Mode de vie"
          },
          {
            "code" : "47519-4",
            "display" : "Historique des actes"
          },
          {
            "code" : "10162-6",
            "display" : "Historique des grossesses"
          },
          {
            "code" : "18776-5",
            "display" : "Plan de soins"
          },
          {
            "code" : "44944-7",
            "display" : "Autres alertes"
          },
          {
            "code" : "46264-8",
            "display" : "Dispositifs médicaux"
          },
          {
            "code" : "57828-6",
            "display" : "Prescriptions"
          },
          {
            "code" : "11450-4",
            "display" : "Liste des problèmes actifs"
          },
          {
            "code" : "30954-2",
            "display" : "Résultats d’examens"
          },
          {
            "code" : "42545-4",
            "display" : "Evènements observés"
          },
          {
            "code" : "8716-3",
            "display" : "Signes vitaux"
          },
          {
            "code" : "33557-0",
            "display" : "Etat d'achèvement"
          },
          {
            "code" : "47420-5",
            "display" : "Évaluation du statut fonctionnel"
          },
          {
            "code" : "10160-0",
            "display" : "Traitements"
          },
          {
            "code" : "10183-2",
            "display" : "Traitements à la sortie"
          },
          {
            "code" : "18610-6",
            "display" : "Traitements administrés"
          }
        ]
      },
      {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "concept" : [
          {
            "code" : "121181",
            "display" : "Catalogue d’objets DICOM"
          }
        ]
      }
    ]
  }
}

```
