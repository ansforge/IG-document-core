# Mapping Métier/CDA/FHIR : "Patient/Usager" - ANS IG document core v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Métier/CDA/FHIR : "Patient/Usager"**

## ConceptMap: Mapping Métier/CDA/FHIR : "Patient/Usager" 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPatientCDAFHIR | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:Mapping Métier/CDA/FHIR : "Patient/Usager" |

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "patient" et l’élément CDA "recordTarget"
* Mapping 2 : entre l’élément CDA "recordTarget" et le profil FHIR "FrPatientDocument"
 

Mapping from (non spécifié) to (non spécifié)

**Group 1**Mapping from `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-patient` to [CDA - recordTarget](StructureDefinition-fr-cda-record-target.md)

* **Source Code**: FRLMPatientUsager
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget
* **Source Code**: FRLMPatientUsager.identifiantPatient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.id
* **Source Code**: FRLMPatientUsager.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.addr
* **Source Code**: FRLMPatientUsager.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.telecom
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.name
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.nom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.name.family
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.nom.nomNaissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: PrecordTarget.patientRole.patient.name.family@qualifier='BR'
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.nom.nomUtilise
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.name.family@qualifier='CL'
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.name.given
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom.listePrenoms
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.name.given
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom.premierPrenom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.name.given@qualifier='BR'
* **Source Code**: FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom.prenomUtilise
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.name.given@qualifier='CL'
* **Source Code**: FRLMPatientUsager.personnePhysique.sexe
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.administrativeGenderCode
* **Source Code**: FRLMPatientUsager.personnePhysique.dateNaissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.birthTime
* **Source Code**: FRLMPatientUsager.personnePhysique.indicateurDeces
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.sdtc:deceasedInd
* **Source Code**: FRLMPatientUsager.personnePhysique.dateDeces
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.sdtc:deceasedTime
* **Source Code**: FRLMPatientUsager.personnePhysique.grossesseMultiple
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.sdtc:multipleBirthInd
* **Source Code**: FRLMPatientUsager.personnePhysique.numeroOrdreNaissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.sdtc:multipleBirthOrderNumber
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.adresse
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.addr
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.coordonneesTelecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.telecom
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.guardianPerson.name
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient.nom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.guardianPerson.family
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient.prenom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.guardianPerson.given
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.structureRepresentantPatient
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.guardianOrganization
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.structureRepresentantPatient.identifiant
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.guardianOrganization.id
* **Source Code**: FRLMPatientUsager.personnePhysique.representantPatient.structureRepresentantPatient.nom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.guardian.guardianOrganization.name
* **Source Code**: FRLMPatientUsager.personnePhysique.lieuNaissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.birthPlace
* **Source Code**: FRLMPatientUsager.personnePhysique.lieuNaissance.nomLieuNaissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.birthPlace.place.name
* **Source Code**: FRLMPatientUsager.personnePhysique.lieuNaissance.adresseLieuNaissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.birthPlace.place.addr
* **Source Code**: FRLMPatientUsager.personnePhysique.lieuNaissance.adresseLieuNaissance.codeOfficielGeographiqueLieuNaissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recordTarget.patientRole.patient.birthPlace.place.addr.county

-------

**Group 2**Mapping from [CDA - recordTarget](StructureDefinition-fr-cda-record-target.md) to `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document`

* **Source Code**: recordTarget.patientRole
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient
* **Source Code**: recordTarget.patientRole.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.identifier
* **Source Code**: recordTarget.patientRole.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address
* **Source Code**: recordTarget.patientRole.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.telecom
* **Source Code**: recordTarget.patientRole.patient.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name
* **Source Code**: recordTarget.patientRole.patient.name.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name.family
* **Source Code**: recordTarget.patientRole.patient.name.family@qualifier='BR'
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name:officialname.family
* **Source Code**: recordTarget.patientRole.patient.name.family@qualifier='CL'
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name:usualname.family
* **Source Code**: recordTarget.patientRole.patient.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name.given
* **Source Code**: recordTarget.patientRole.patient.name.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name:officialname.birth-list-given-name
* **Source Code**: recordTarget.patientRole.patient.name.given@qualifier='BR'
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name:officialname.given
* **Source Code**: recordTarget.patientRole.patient.name.given@qualifier='CL'
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name:usualname.given
* **Source Code**: recordTarget.patientRole.patient.administrativeGenderCode
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.gender
* **Source Code**: recordTarget.patientRole.patient.birthTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.birthDate
* **Source Code**: recordTarget.patientRole.patient.sdtc:deceasedInd
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.deceasedBoolean
* **Source Code**: recordTarget.patientRole.patient.sdtc:deceasedTime
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.deceasedDateTime
* **Source Code**: recordTarget.patientRole.patient.sdtc:multipleBirthInd
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.multipleBirthBoolean
* **Source Code**: recordTarget.patientRole.patient.sdtc:multipleBirthOrderNumber
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.multipleBirthInteger
* **Source Code**: recordTarget.patientRole.patient.guardian
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.relationship:Role='GUARD'
* **Source Code**: recordTarget.patientRole.patient.guardian.addr
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.address
* **Source Code**: recordTarget.patientRole.patient.guardian.telecom
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.telecom
* **Source Code**: recordTarget.patientRole.patient.guardian.guardianPerson.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name
* **Source Code**: recordTarget.patientRole.patient.guardian.guardianPerson.family
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name.family
* **Source Code**: recordTarget.patientRole.patient.guardian.guardianPerson.given
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.name.given
* **Source Code**: recordTarget.patientRole.patient.guardian.guardianOrganization
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.organization
* **Source Code**: recordTarget.patientRole.patient.guardian.guardianOrganization.id
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.organization.identifier
* **Source Code**: recordTarget.patientRole.patient.guardian.guardianOrganization.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.contact.organization.name
* **Source Code**: recordTarget.patientRole.patient.birthPlace
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.extension:birthPlace
* **Source Code**: recordTarget.patientRole.patient.birthPlace.place
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.extension:birthPlace.value[FRCoreAddressProfile]
* **Source Code**: recordTarget.patientRole.patient.birthPlace.place.name
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.extension:birthPlace.value[FRCoreAddressProfile].text
* **Source Code**: recordTarget.patientRole.patient.birthPlace.place.country
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.extension:birthPlace.value[FRCoreAddressProfile].extension:inseeCode



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPatientCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document/core/ConceptMap/mappingPatientCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Patient/Usager\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Patient/Usager\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-22T08:56:46+00:00",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"patient\\\" et l'élément CDA \\\"recordTarget\\\"\n - Mapping 2 : entre l'élément CDA \\\"recordTarget\\\" et le profil FHIR \\\"FrPatientDocument\\\" ",
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
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-patient",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-record-target",
      "element" : [
        {
          "code" : "FRLMPatientUsager",
          "target" : [
            {
              "code" : "recordTarget",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.identifiantPatient",
          "target" : [
            {
              "code" : "recordTarget.patientRole.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.adresse",
          "target" : [
            {
              "code" : "recordTarget.patientRole.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.coordonneesTelecom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.nom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.nom.nomNaissance",
          "target" : [
            {
              "code" : "PrecordTarget.patientRole.patient.name.family@qualifier='BR'",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.nom.nomUtilise",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.name.family@qualifier='CL'",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom.listePrenoms",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom.premierPrenom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.name.given@qualifier='BR'",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.nomsPrenomsPatient.prenom.prenomUtilise",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.name.given@qualifier='CL'",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.sexe",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.administrativeGenderCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.dateNaissance",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.birthTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.indicateurDeces",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.sdtc:deceasedInd",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.dateDeces",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.sdtc:deceasedTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.grossesseMultiple",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.sdtc:multipleBirthInd",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.numeroOrdreNaissance",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.sdtc:multipleBirthOrderNumber",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.adresse",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.coordonneesTelecom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient.nom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient.prenom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.structureRepresentantPatient",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.guardianOrganization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.structureRepresentantPatient.identifiant",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.guardianOrganization.id",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.representantPatient.structureRepresentantPatient.nom",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.guardian.guardianOrganization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.lieuNaissance",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.birthPlace",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.lieuNaissance.nomLieuNaissance",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.birthPlace.place.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.lieuNaissance.adresseLieuNaissance",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.birthPlace.place.addr",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "FRLMPatientUsager.personnePhysique.lieuNaissance.adresseLieuNaissance.codeOfficielGeographiqueLieuNaissance",
          "target" : [
            {
              "code" : "recordTarget.patientRole.patient.birthPlace.place.addr.county",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-record-target",
      "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document",
      "element" : [
        {
          "code" : "recordTarget.patientRole",
          "target" : [
            {
              "code" : "Patient",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.id",
          "target" : [
            {
              "code" : "Patient.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.addr",
          "target" : [
            {
              "code" : "Patient.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.telecom",
          "target" : [
            {
              "code" : "Patient.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name",
          "target" : [
            {
              "code" : "Patient.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name.family",
          "target" : [
            {
              "code" : "Patient.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name.family@qualifier='BR'",
          "target" : [
            {
              "code" : "Patient.name:officialname.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name.family@qualifier='CL'",
          "target" : [
            {
              "code" : "Patient.name:usualname.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name.given",
          "target" : [
            {
              "code" : "Patient.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name.given",
          "target" : [
            {
              "code" : "Patient.name:officialname.birth-list-given-name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name.given@qualifier='BR'",
          "target" : [
            {
              "code" : "Patient.name:officialname.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.name.given@qualifier='CL'",
          "target" : [
            {
              "code" : "Patient.name:usualname.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.administrativeGenderCode",
          "target" : [
            {
              "code" : "Patient.gender",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.birthTime",
          "target" : [
            {
              "code" : "Patient.birthDate",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.sdtc:deceasedInd",
          "target" : [
            {
              "code" : "Patient.deceasedBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.sdtc:deceasedTime",
          "target" : [
            {
              "code" : "Patient.deceasedDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.sdtc:multipleBirthInd",
          "target" : [
            {
              "code" : "Patient.multipleBirthBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.sdtc:multipleBirthOrderNumber",
          "target" : [
            {
              "code" : "Patient.multipleBirthInteger",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian",
          "target" : [
            {
              "code" : "Patient.contact.relationship:Role='GUARD'",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.addr",
          "target" : [
            {
              "code" : "Patient.contact.address",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.telecom",
          "target" : [
            {
              "code" : "Patient.contact.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.name",
          "target" : [
            {
              "code" : "Patient.contact.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.family",
          "target" : [
            {
              "code" : "Patient.contact.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.given",
          "target" : [
            {
              "code" : "Patient.contact.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.guardianOrganization",
          "target" : [
            {
              "code" : "Patient.contact.organization",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.guardianOrganization.id",
          "target" : [
            {
              "code" : "Patient.contact.organization.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.guardian.guardianOrganization.name",
          "target" : [
            {
              "code" : "Patient.contact.organization.name",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.birthPlace",
          "target" : [
            {
              "code" : "Patient.extension:birthPlace",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.birthPlace.place",
          "target" : [
            {
              "code" : "Patient.extension:birthPlace.value[FRCoreAddressProfile]",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.birthPlace.place.name",
          "target" : [
            {
              "code" : "Patient.extension:birthPlace.value[FRCoreAddressProfile].text",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recordTarget.patientRole.patient.birthPlace.place.country",
          "target" : [
            {
              "code" : "Patient.extension:birthPlace.value[FRCoreAddressProfile].extension:inseeCode",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
