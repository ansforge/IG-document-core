# Résultats de laboratoire de biologie de seconde intention - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Résultats de laboratoire de biologie de seconde intention**

## Logical Model: Résultats de laboratoire de biologie de seconde intention 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsLaboratoireBiologieSecondeIntention | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:FrResultatsLaboratoireBiologieSecondeIntention |

 
Modèle logique métier de la section Résultats de laboratoire de biologie de seconde intention 

**Usages:**

* Use this Logical Model: [* Modèle logique métier du corps](StructureDefinition-CorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.document.fr.core|current/StructureDefinition/FrResultatsLaboratoireBiologieSecondeIntention)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrResultatsLaboratoireBiologieSecondeIntention.csv), [Excel](StructureDefinition-FrResultatsLaboratoireBiologieSecondeIntention.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrResultatsLaboratoireBiologieSecondeIntention",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsLaboratoireBiologieSecondeIntention",
  "version" : "0.1.0",
  "name" : "FrResultatsLaboratoireBiologieSecondeIntention",
  "title" : "Résultats de laboratoire de biologie de seconde intention",
  "status" : "draft",
  "date" : "2025-10-13T08:32:48+00:00",
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
  "description" : "Modèle logique métier de la section Résultats de laboratoire de biologie de seconde intention",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrResultatsLaboratoireBiologieSecondeIntention",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/Section",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FrResultatsLaboratoireBiologieSecondeIntention",
        "path" : "FrResultatsLaboratoireBiologieSecondeIntention",
        "short" : "Résultats de laboratoire de biologie de seconde intention",
        "definition" : "Modèle logique métier de la section Résultats de laboratoire de biologie de seconde intention"
      },
      {
        "id" : "FrResultatsLaboratoireBiologieSecondeIntention.sousSection",
        "path" : "FrResultatsLaboratoireBiologieSecondeIntention.sousSection",
        "max" : "0"
      },
      {
        "id" : "FrResultatsLaboratoireBiologieSecondeIntention.entree.observation",
        "path" : "FrResultatsLaboratoireBiologieSecondeIntention.entree.observation",
        "short" : "Entrée Simple observation",
        "definition" : "Entrée Simple observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrObservation"
          }
        ]
      },
      {
        "id" : "FrResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache",
        "path" : "FrResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache",
        "short" : "Entrée Document attaché",
        "definition" : "Entrée Document attaché",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/FrDocumentAttache"
          }
        ]
      }
    ]
  }
}

```
