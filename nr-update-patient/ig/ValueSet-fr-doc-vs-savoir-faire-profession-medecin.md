# Fr ValueSet Savoir-faire Profession Medecin - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fr ValueSet Savoir-faire Profession Medecin**

## ValueSet: Fr ValueSet Savoir-faire Profession Medecin 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-savoir-faire-profession-medecin | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:FRValueSetSavoirFaireProfessionMedecin |

 
Savoir-faire pour la profession 10 (Médecin) 

 **References** 

Ce jeu de valeurs nest pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_G13-OrientationParticuliere/FHIR/TRE-G13-OrientationParticuliere`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-G13-OrientationParticuliere.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R39-Competence/FHIR/TRE-R39-Competence`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R39-Competence.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R43-CapaciteSavoirFaire/FHIR/TRE-R43-CapaciteSavoirFaire`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R43-CapaciteSavoirFaire.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R40-CompetenceExclusive/FHIR/TRE-R40-CompetenceExclusive`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R40-CompetenceExclusive.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R97-DroitExerciceCompl/FHIR/TRE-R97-DroitExerciceCompl`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R97-DroitExerciceCompl.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R42-DESCnonQualifiant/FHIR/TRE-R42-DESCnonQualifiant`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R42-DESCnonQualifiant.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R44-QualificationPAC/FHIR/TRE-R44-QualificationPAC`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R44-QualificationPAC.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R38-SpecialiteOrdinale.html)version 📦1.5.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R359-SurspecialiteTransversale/FHIR/TRE-R359-SurspecialiteTransversale`](https://interop.esante.gouv.fr/ig/nos/1.5.0/CodeSystem-TRE-R359-SurspecialiteTransversale.html)version 📦1.5.0

 

### Expansion

Ce jeu de valeur (ValueSet) contient 264 concepts

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
  "id" : "fr-doc-vs-savoir-faire-profession-medecin",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-savoir-faire-profession-medecin",
  "version" : "0.1.0",
  "name" : "FRValueSetSavoirFaireProfessionMedecin",
  "title" : "Fr ValueSet Savoir-faire Profession Medecin",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-21T13:57:20+00:00",
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
  "description" : "Savoir-faire pour la profession 10 (Médecin)",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_G13-OrientationParticuliere/FHIR/TRE-G13-OrientationParticuliere"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R39-Competence/FHIR/TRE-R39-Competence"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R43-CapaciteSavoirFaire/FHIR/TRE-R43-CapaciteSavoirFaire"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R40-CompetenceExclusive/FHIR/TRE-R40-CompetenceExclusive"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R97-DroitExerciceCompl/FHIR/TRE-R97-DroitExerciceCompl"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R42-DESCnonQualifiant/FHIR/TRE-R42-DESCnonQualifiant"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R44-QualificationPAC/FHIR/TRE-R44-QualificationPAC"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R359-SurspecialiteTransversale/FHIR/TRE-R359-SurspecialiteTransversale"
      }
    ]
  }
}

```
