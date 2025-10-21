# Fr ValueSet Savoir-faire Profession Pharmacien - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fr ValueSet Savoir-faire Profession Pharmacien**

## ValueSet: Fr ValueSet Savoir-faire Profession Pharmacien 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-savoir-faire-profession-pharmacien | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRValueSetSavoirFaireProfessionPharmacien |

 
Savoir-faire pour la profession 21 (Pharmacien) 

 **References** 

* [Fr Practitioner Document](StructureDefinition-fr-practitioner-document.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_G05-SousSectionTableauCNOP/FHIR/TRE-G05-SousSectionTableauCNOP`](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-G05-SousSectionTableauCNOP.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R45-FonctionQualifiee/FHIR/TRE-R45-FonctionQualifiee`](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-TRE-R45-FonctionQualifiee.html)version 📦20231215120000

 

### Expansion

Ce jeu de valeur (ValueSet) contient 22 concepts

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
  "id" : "fr-doc-vs-savoir-faire-profession-pharmacien",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-savoir-faire-profession-pharmacien",
  "version" : "0.1.0",
  "name" : "FRValueSetSavoirFaireProfessionPharmacien",
  "title" : "Fr ValueSet Savoir-faire Profession Pharmacien",
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
  "description" : "Savoir-faire pour la profession 21 (Pharmacien)",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_G05-SousSectionTableauCNOP/FHIR/TRE-G05-SousSectionTableauCNOP"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R45-FonctionQualifiee/FHIR/TRE-R45-FonctionQualifiee"
      }
    ]
  }
}

```
