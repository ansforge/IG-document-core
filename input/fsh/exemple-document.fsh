Instance: clinical-document-bundle-BIO-CR-BIO
InstanceOf: Bundle
Description: "Document Bundle exemple FHIR du CR-BIO"
Usage: #example
* meta.lastUpdated = "2025-05-07T13:28:17.000+00:00"
// Identifiant unique du document
* identifier.system = "urn:oid:1.2.250.1.213.1.1.1.55.12345.12"
* identifier.value = "2024.01"
// Document FHIR
* type = #document
// Date de création du bundle
* timestamp = "2025-05-07T13:28:17.000+00:00"


* entry[0].fullUrl = "https://exemple.com/Composition/clinical-document-composition-BIO-CR-BIO"
* entry[=].resource = clinical-document-composition-BIO-CR-BIO
* entry[+].fullUrl = "https://exemple.com/Patient/patientExemple"
* entry[=].resource = patientExemple
* entry[+].fullUrl = "https://exemple.com/PractitionerRole/practitioner-role-exemple1"
* entry[=].resource = practitioner-role-exemple1
* entry[+].fullUrl = "https://exemple.com/Practitioner/practitioner-exemple1"
* entry[=].resource = practitioner-exemple1
* entry[+].fullUrl = "https://exemple.com/PractitionerRole/practitioner-role-exemple2"
* entry[=].resource = practitioner-role-exemple2
* entry[+].fullUrl = "https://exemple.com/Practitioner/practitioner-exemple2"
* entry[=].resource = practitioner-exemple2
* entry[+].fullUrl = "https://exemple.com/PractitionerRole/practitioner-role-exemple3"
* entry[=].resource = practitioner-role-exemple3
* entry[+].fullUrl = "https://exemple.com/Practitioner/practitioner-exemple3"
* entry[=].resource = practitioner-exemple3
* entry[+].fullUrl = "https://exemple.com/PractitionerRole/practitioner-role-exemple4"
* entry[=].resource = practitioner-role-exemple4
* entry[+].fullUrl = "https://exemple.com/Practitioner/practitioner-exemple4"
* entry[=].resource = practitioner-exemple4
* entry[+].fullUrl = "https://exemple.com/PractitionerRole/practitioner-role-exemple5"
* entry[=].resource = practitioner-role-exemple5
* entry[+].fullUrl = "https://exemple.com/Practitioner/practitioner-exemple5"
* entry[=].resource = practitioner-exemple5
* entry[+].fullUrl = "https://exemple.com/Encounter/encounterExemple"
* entry[=].resource = encounterExemple
* entry[+].fullUrl = "https://exemple.com/ServiceRequest/orderExemple"
* entry[=].resource = orderExemple
* entry[+].fullUrl = "https://exemple.com/Organization/custodianOrganization"
* entry[=].resource = custodianOrganization
* entry[+].fullUrl = "https://exemple.com/Location/locationExemple"
* entry[=].resource = locationExemple
* entry[+].fullUrl = "https://exemple.com/DocumentReference/documentReferenceExample"
* entry[=].resource = documentReferenceExample
* entry[+].fullUrl = "https://exemple.com/Organization/organizationExemple"
* entry[=].resource = organizationExemple
* entry[+].fullUrl = "https://exemple.com/Organization/organizationExemple2"
* entry[=].resource = organizationExemple2
* entry[+].fullUrl = "https://exemple.com/Organization/organizationExemple3"
* entry[=].resource = organizationExemple3

Instance: clinical-document-composition-BIO-CR-BIO
InstanceOf: FrCompositionDocument
Description: "Exemple de Composition pour un CR de Biologie"Usage: #inline
* meta.lastUpdated = "2024-05-07T13:28:17.000+00:00"
* meta.profile = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/BIO-CR-BIO/2024.01"
* language = #fr
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">          
   <p><b>Compte rendu d'examens biologiques</b></p>       
   <p><b>Practitioner</b>: Dr. Marcel CAMPARINI</p>   
   <p><b>status</b>: final</p>  
   <p><b>patient</b>: DOMINIQUE MARIE-LOUISE PAT-TROIS </p>      
   <p><b>author</b>: DR Marcel CAMPARINI  / Laboratoire des charmes</p>   
   <p><b>Personne à prévenir en cas d'urgence</b>: Sophie NESSI</p>
   <p><b>Personne de confiance</b>: Sophie NESSI</p>  
   <p><b>Organisation chargée de la conservation du document</b>: Laboratoire des charmes</p> 
   <p><b>Responsable du document</b>: Dr. Marcel CAMPARINI</p> 
   <p><b>Biologiste ayant validé des résultats présents sur le compte rendu</b>: Dr. Jean DE SANTS / Dr. Thierry DIAZ </p> 
   
   <p><b>encounter</b>: ambulatoire (hors établissement), 2025-05-03 - 2024-05-07</p>    
   <p><b>confidentiality</b>: N</p>  </div>"

// Version du document
* extension[R5-Composition-version].valueString = "1"

// Informant
* extension[informant].extension[type].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[informant].extension[type].valueCodeableConcept.coding[0].code = #INF
* extension[informant].extension[party].valueReference = Reference(patientExemple)

/* // information-recipient-extension (non utilisé dans la BIO)
* extension[information-recipient].extension[type].valueCodeableConcept.coding[0].system = "urn:oid:2.16.840.1.113883.5.90"
* extension[information-recipient].extension[type].valueCodeableConcept.coding[0].code = #PRCP
* extension[information-recipient].extension[type].valueCodeableConcept.coding[0].display = "primary information recipient"
* extension[information-recipient].extension[party].valueReference = Reference(practitioner-role-exemple1) "DR Marcel CAMPARINI" */

// Participant
* extension[participant].extension[type].url = "type"
* extension[participant].extension[type].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[participant].extension[type].valueCodeableConcept.coding[0].code = #REF
* extension[ParticipantExtension].extension[type].valueCodeableConcept.coding[0].display = "Référent / Prescripteur"
* extension[participant].extension[time].valuePeriod.start = "2025-06-12T10:00:00+01:00"
* extension[participant].extension[time].valuePeriod.end = "2025-06-12T14:00:00+01:00"
* extension[participant].extension[party].valueReference = Reference(practitioner-role-exemple4)

// order
* extension[order].url = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension"
* extension[order].valueReference = Reference(orderExemple)

// identifier (setId)
* identifier.value = "1.2.250.1.213.1.1.1.55.2024.5"

// statut du document
* status = #final

* text.status = #additional

// Type de document
* type.coding[0].system = $LNC
* type.coding[0].code = #11502-2
* type.coding[0].display = "Compte rendu du laboratoire [Recherche] Patient ; Document"

// Patient
* subject = Reference(patientExemple)

// Association du document à une prise en charge
* encounter = Reference(encounterExemple)

// 	Date de création
* date = "2025-06-12T14:00:00+01:00"

// Auteur du document
* author = Reference(practitioner-role-exemple1) "DR Marcel CAMPARINI"
* author.extension[time].valueDateTime = "2024-01-04T13:45:00+01:00"

// Titre du document CDA
* title = "Compte rendu d'examens biologiques"

// Niveau de confidentialité
* confidentiality = #N

// Responsable du document
* attester[legal_attester].mode = #legal
* attester[legal_attester].time = "2024-01-04T15:00:00+01:00"
* attester[legal_attester].party = Reference(practitioner-role-exemple1)

// Professionnel attestant la validité du contenu du document
* attester[professional_attester][0].mode = #professional
* attester[professional_attester][0].time = "2024-01-04T14:30:00+01:00"
* attester[professional_attester][0].party = Reference(practitioner-role-exemple2)

* attester[professional_attester][1].mode = #professional
* attester[professional_attester][1].time = "2024-01-04T14:30:00+01:00"
* attester[professional_attester][1].party = Reference(practitioner-role-exemple3)

// Structure chargée de la conservation du document
* custodian = Reference(custodianOrganization) "Laboratoire des charmes"

// 	Document de référence
* relatesTo[+].code = #appends
* relatesTo[=].targetIdentifier.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* relatesTo[=].targetIdentifier.type.coding[0].code = #ACSN
* relatesTo[=].targetIdentifier.type.coding[0].display = "Accession ID"
* relatesTo[=].targetIdentifier.system = "urn:oid:1.2.250.1.213.1.1.9"
* relatesTo[=].targetIdentifier.value = "202411111123"

// Actes documentés
* event[0].code.coding.code = #18723-7
* event[0].code.coding.system = $LNC
* event[0].code.coding.display = "Hématologie"

* event[1].code.coding.code = #18725-2
* event[1].code.coding.system = $LNC
* event[1].code.coding.display = "Microbiologie"

* event[principalEvent].period.start = "2024-06-12T08:00:00+01:00"
* event[principalEvent].period.end = "2024-06-12T09:00:00+01:00"
* event[principalEvent].code.coding.code = #18719-5
* event[principalEvent].code.coding.system = $LNC
* event[principalEvent].code.coding.display = "Biochimie"
* event[principalEvent].extension[performer].url = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-performer-event"
* event[principalEvent].extension[performer].valueReference = Reference(practitioner-role-exemple1)

// Section obligatoire
* section[+].entry[+] = Reference(Binary)
* section[=].title = "PDF"

//***************Instances*********************//
Instance: patientExemple
InstanceOf: FrPatientINSDocument
Title: "Patient"
Usage: #inline
Description: "Patient"
* meta.profile = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document"

// Identifiant INS
* identifier[INS-NIR].use = #official
* identifier[INS-NIR].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[INS-NIR].type.coding[0].code = #INS-NIR
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].value = "123456789012244"

// Données sociodémographiques
* gender = #female
* birthDate = "1979-03-28"
* deceasedBoolean = false

// Nom officiel (de naissance)
* name[officialName].use = #official
* name[officialName].family = "PAT-TROIS"
* name[officialName].given = "DOMINIQUE MARIE-LOUISE"
* name[officialName].extension[birth-list-given-name].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
* name[officialName].extension[birth-list-given-name].valueString = "DOMINIQUE MARIE-LOUISE"

// Nom usuel
* name[usualName].use = #usual
* name[usualName].family = "PAT-TROIS"
* name[usualName].given = "DOMINIQUE MARIE-LOUISE"

// Téléphones
* telecom[0].system = #phone
* telecom[0].value = "01 23 24 67 89"
* telecom[0].use = #home

* telecom[1].system = #phone
* telecom[1].value = "01 99 88 77 66"
* telecom[1].use = #work
* telecom[1].rank = 1

* telecom[2].system = #phone
* telecom[2].value = "06 80 55 34 33"
* telecom[2].use = #mobile
* telecom[2].rank = 2

// Extension: Lieu de naissance
* extension[birthPlace].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[birthPlace].valueAddress.city = "Ambléon"
* extension[birthPlace].valueAddress.extension[fr-core-address-insee-code].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* extension[birthPlace].valueAddress.extension[fr-core-address-insee-code].valueCoding.system = "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
* extension[birthPlace].valueAddress.extension[fr-core-address-insee-code].valueCoding.code = #01006

// Extension: Fiabilité de l'identité
* extension[identityReliability].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
* extension[identityReliability].extension[identityStatus].url = "identityStatus"
* extension[identityReliability].extension[identityStatus].valueCoding.system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445"
* extension[identityReliability].extension[identityStatus].valueCoding.code = #VALI

// Contact 1
* contact[0].name.text = "Sophie NESSI"
* contact[0].relationship[RelationType].coding[0].system = "https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS"
* contact[0].relationship[RelationType].coding[0].code = #SIS
* contact[0].relationship[RelationType].coding[0].display = "Soeur"
* contact[0].relationship[Role].coding[0].system = "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-contact-role"
* contact[0].relationship[Role].coding[0].code = #ECON
* contact[0].relationship[Role].coding[0].display = "Personne à prévenir en cas d'urgence"

* contact[0].name[0].family = "NESSI"
* contact[0].address.text = "12 rue des Lilas, 75012 Paris"

// Contact 2
* contact[1].name.text = "Sophie NESSI"
* contact[1].relationship[RelationType].coding[0].system = "https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS"
* contact[1].relationship[RelationType].coding[0].code = #SIS
* contact[1].relationship[RelationType].coding[0].display = "Soeur"
* contact[1].relationship[Role].coding[0].system = "https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-patient-contact-role"
* contact[1].relationship[Role].coding[0].code = #NOK
* contact[1].relationship[Role].coding[0].display = "Personne de confiance"

* contact[1].name[0].family = "NESSI"
* contact[1].address.text = "12 rue des Lilas, 75012 Paris"

Instance: custodianOrganization
InstanceOf: FrOrganizationDocument
Description: "exemple custodian "Usage: #inline
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value = "1120459876"
* identifier[idNatSt].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[idNatSt].type.coding[0].code = #IDNST
* name = "Laboratoire des charmes"
// Téléphones
* telecom[0].system = #phone
* telecom[0].value = "01 74 58 96 07"
* telecom[0].use = #work

Instance: practitioner-role-exemple1
InstanceOf: FrPractitionerRoleDocument
Description: "exemple practitioner role "Usage: #inline
* meta.lastUpdated = "2013-05-05T16:13:03Z"
//* identifier[idSituationExercice].system = "https://rpps.esante.gouv.fr"
//* identifier[idSituationExercice].value = "801234534765"
* practitioner = Reference(practitioner-exemple1)
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #doctor
* organization = Reference(organizationExemple)

Instance: practitioner-role-exemple2
InstanceOf: FrPractitionerRoleDocument
Description: "exemple practitioner role "Usage: #inline
* meta.lastUpdated = "2013-05-05T16:13:03Z"
//* identifier.system = "http://www.acme.org/practitioners"
//* identifier.value = "1.2.250.1.71.4.2.1"
* practitioner = Reference(practitioner-exemple2)
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #doctor
* organization = Reference(organizationExemple)

Instance: practitioner-role-exemple3
InstanceOf: FrPractitionerRoleDocument
Description: "exemple practitioner role "Usage: #inline
* meta.lastUpdated = "2013-05-05T16:13:03Z"
//* identifier.system = "http://www.acme.org/practitioners"
//* identifier.value = "1.2.250.1.71.4.2.1"
* practitioner = Reference(practitioner-exemple3)
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #doctor
* organization = Reference(organizationExemple)

Instance: practitioner-role-exemple4
InstanceOf: FrPractitionerRoleDocument
Description: "exemple practitioner role "Usage: #inline
* meta.lastUpdated = "2013-05-05T16:13:03Z"
//* identifier.system = "http://www.acme.org/practitioners"
//* identifier.value = "1.2.250.1.71.4.2.1"
* practitioner = Reference(practitioner-exemple4)
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #doctor
* organization = Reference(organizationExemple)

Instance: practitioner-role-exemple5
InstanceOf: FrPractitionerRoleDocument
Description: "exemple practitioner role "Usage: #inline
* meta.lastUpdated = "2013-05-05T16:13:03Z"
//* identifier.system = "http://www.acme.org/practitioners"
//* identifier.value = "1.2.250.1.71.4.2.1"
* practitioner = Reference(practitioner-exemple5)
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #nurse
* code[0].coding[0].display = "Nurse"
* organization = Reference(organizationExemple)

Instance: practitioner-exemple1
InstanceOf: FrPractitionerDocument
Usage: #inline
Title: "Exemple 1: practitioner"
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value = "801234534765"
* identifier[rpps].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[rpps].type.coding[0].code = #RPPS
* identifier[rpps].type.coding[0].display = "Numéro du professionnel de santé"
* address.text = "8 Rue Frédéric Bastia, 92100 BOULOGNE-BILLANCOURT"
* name[0].family = "CAMPARINI"
* name[0].given[0] = "Marcel" 
* name[0].prefix[0] = "Dr"
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].code = #SM03
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].display = "Biologie médicale (SM)"

* qualification[savoirFaire][professionMedecin].issuer = Reference(organizationExemple)

// Téléphones
* telecom.system = #phone
* telecom.value = "01 74 58 96 07"
* telecom.use = #work
* telecom.rank = 1


Instance: practitioner-exemple2
InstanceOf: FrPractitionerDocument
Usage: #inline
Title: "Exemple 2: practitioner"
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value = "801234567898"
* identifier[rpps].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[rpps].type.coding[0].code = #RPPS
* identifier[rpps].type.coding[0].display = "Numéro du professionnel de santé"
* address.text = "8 Rue Frédéric Bastia, 92100 BOULOGNE-BILLANCOURT"
* name[0].family = "DE SANTS"
* name[0].given[0] = "Jean" 
* name[0].prefix[0] = "Dr"

* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].code = #SM03
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].display = "Biologie médicale (SM)"
* qualification[savoirFaire][professionMedecin].issuer = Reference(organizationExemple)

// Téléphones
* telecom.system = #phone
* telecom.value = "01 74 58 96 07"
* telecom.use = #work
* telecom.rank = 1

Instance: practitioner-exemple3
InstanceOf: FrPractitionerDocument
Usage: #inline
Title: "Exemple 3: practitioner"
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value = "801234567898"
* identifier[rpps].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[rpps].type.coding[0].code = #RPPS
* identifier[rpps].type.coding[0].display = "Numéro du professionnel de santé"
* address.text = "8 Rue Frédéric Bastia, 92100 BOULOGNE-BILLANCOURT"
* name[0].family = "DIAZ"
* name[0].given[0] = "Thierry" 
* name[0].prefix[0] = "Dr"

* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].code = #SM03
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].display = "Biologie médicale (SM)"
* qualification[savoirFaire][professionMedecin].issuer = Reference(organizationExemple)

// Téléphones
* telecom.system = #phone
* telecom.value = "01 74 58 96 07"
* telecom.use = #work
* telecom.rank = 1

Instance: practitioner-exemple4
InstanceOf: FrPractitionerDocument
Usage: #inline
Title: "Exemple 4: practitioner"
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value = "801234534765"
* identifier[rpps].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[rpps].type.coding[0].code = #RPPS
* identifier[rpps].type.coding[0].display = "Numéro du professionnel de santé"
* name[0].family = "BLUE"
* name[0].given[0] = "Eva" 
* name[0].prefix[0] = "Dr"
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].code = #SM19
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire].display = "Gynécologie médicale (SM)"

* qualification[savoirFaire][professionMedecin].issuer = Reference(organizationExemple2)

// Téléphones
* telecom.system = #phone
* telecom.value = "01 47 15 00 00"
* telecom.use = #work
* telecom.rank = 1


Instance: practitioner-exemple5
InstanceOf: FrPractitionerDocument
Usage: #inline
Title: "Exemple 5: practitioner"
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value = "801234534765"
* identifier[rpps].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[rpps].type.coding[0].code = #RPPS
* identifier[rpps].type.coding[0].display = "Numéro du professionnel de santé"
* address.text = "12 Rue du renard, 92100 BOULOGNE-BILLANCOURT"
* name[0].family = "BLEEDER"
* name[0].given[0] = "Roberta" 
* name[0].prefix[0] = "Dr"
* qualification[savoirFaire][professionInfirmier].code.coding[savoirFaire].code = #60
* qualification[savoirFaire][professionInfirmier].code.coding[savoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante"
* qualification[savoirFaire][professionInfirmier].code.coding[savoirFaire].display = "Infirmier"

* qualification[savoirFaire][professionInfirmier].issuer = Reference(organizationExemple3)

// Téléphones
* telecom.system = #phone
* telecom.value = "01 49 15 45 78"
* telecom.use = #work
* telecom.rank = 1

Instance: encounterExemple
InstanceOf: FrEncounterDocument
Description: "exemple encounter"
Usage: #inline
* meta.lastUpdated = "2024-05-07T11:28:17.000+00:00"
* identifier.system = "urn:uuid:1.2.250.1.71.4.2.1"
* identifier.value = "801234534765"
* identifier.type.coding.code = #VN
* identifier.type.coding.system = "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-identifier-type"
* identifier.type.coding.display = "Visit Number"
* status = #finished
* class = $v3-ActCode#AMB "ambulatoire (hors établissement)"
* type.coding.code = #U
* type.coding.system = "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type"
* type.coding.display = "Emergency|Caractère d’urgence aigue du problème quel que soit le service d’entrée"
* type.text = "ambulatoire (hors établissement)"
* subject = Reference(patientExemple) "DOMINIQUE MARIE-LOUISE"
* period.start = "2024-05-03T13:28:17.000+00:00"
* period.end = "2024-05-07T11:28:17.000+00:00"
* participant.individual = Reference(practitioner-role-exemple1)
* participant[responsibleParty].type.coding.code = #DIS
* participant[responsibleParty].type.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_A13-HL7ParticipationType/FHIR/TRE-A13-HL7ParticipationType"
* participant[responsibleParty].individual = Reference(practitioner-role-exemple1)
* location[0].location = Reference(locationExemple)
* location[0].status = #completed
* location[0].period.start = "2024-05-03T13:28:17.000+00:00"
* location[0].period.end = "2024-05-07T11:28:17.000+00:00"

Instance: locationExemple
InstanceOf: FrLocationDocument
Description: "exemple location "
Usage: #inline
* identifier.system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier.value = "1120459876"
* identifier.type.coding.system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-location-identifier-type"
* identifier.type.coding.code = #IDNST
* identifier.type.coding.display = "Identification nationale de structure définie par l’ASIP-SANTE dans le CI_SIS"
* name = "Laboratoire des charmes"
* type.coding[secteurActivite].code = #SA25
* type.coding[secteurActivite].system = "https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS"
* type.coding[secteurActivite].display = "Laboratoire de biologie médicale"
* type.coding[categorieEtablissement].code = #611
* type.coding[categorieEtablissement].system = "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
* type.coding[categorieEtablissement].display = "Laboratoire de Biologie Médicale"
* address.text = "8 Rue Frédéric Bastia, 92100 BOULOGNE-BILLANCOURT"
* managingOrganization = Reference(custodianOrganization)

Instance: orderExemple
InstanceOf: ServiceRequest
Description: "exemple service "
Usage: #inline
* meta.lastUpdated = "2024-05-07T11:28:17.000+00:00"
* identifier.system = "urn:oid:1.2.250.1.213.1.1.9"
* identifier.value = "2024123456789"
* status = #active "Active"
* intent = #order
* subject = Reference(patientExemple) "DOMINIQUE MARIE-LOUISE"
* code.text = "Discharge to home"

/* Instance: consentExemple
InstanceOf: Consent
Description: "exemple consent "
Usage: #inline
* meta.lastUpdated = "2024-05-07T11:28:17.000+00:00"
* status = #active "Active"
* patient = Reference(patientExemple) "DOMINIQUE MARIE-LOUISE"
* scope = $consentscope#patient-privacy
* category = $LNC#59284-0
//* sourceAttachment.title = "The terms of the consent in lawyer speak."
* policyRule = $v3-ActCode#OPTIN */

Instance: organizationExemple
InstanceOf: FrOrganizationDocument
Description: "exemple organization "
Usage: #inline
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2.16.840.1.113883.19.5"
* name = "Laboratoire des charmes"


Instance: organizationExemple2
InstanceOf: FrOrganizationDocument
Description: "exemple organization "
Usage: #inline
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value = "1120459876"
* identifier[idNatSt].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[idNatSt].type.coding[0].code = #IDNST
* name = "Cabinet du DR BLUE"
// Téléphones
* telecom[0].system = #phone
* telecom[0].value = "01 45 37 86 53"
* telecom[0].use = #work

Instance: organizationExemple3
InstanceOf: FrOrganizationDocument
Description: "exemple organization "
Usage: #inline
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value = "1120459876"
* identifier[idNatSt].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[idNatSt].type.coding[0].code = #IDNST
* name = "Cabinet d'infirmières de BB"
// Téléphones
* telecom[0].system = #phone
* telecom[0].value = "01 38 47 54 39"
* telecom[0].use = #work

/* Instance: ExampleBinary
InstanceOf: Binary
Usage: #inline
* contentType = #application/pdf
* data = """
JVBERi0xLjQKJeLjz9MKMSAwIG9iago8PC9UeXBlIC9DYXRhbG9nCi9QYWdlcyAyIDAgUgovTGFuZyAoZW4tVVMpCi9TdHJ1Y3RQYXJlbnRzIDw8L1BhZ2VzIDIgMCBSPj4KPj4KZW5kb2JqCjIgMCBvYmoKPDwvVHlwZSAvUGFnZXMKL0tpZHNbMyAwIFJdCi9Db3VudCAxCj4+CmVuZG9iagozIDAgb2JqCjw8L1R5cGUgL1BhZ2UKL1BhcmVudCAyIDAgUgovUmVzb3VyY2VzIDw8Pj4KL01lZGlhQm94IFswIDAgNjEyIDc5Ml0KL0NvbnRlbnRzIDQgMCBSCj4+CmVuZG9iago0IDAgb2JqCjw8L0xlbmd0aCAzNDA+PgpzdHJlYW0KSGVsbG8sIFRoaXMgaXMgYSB0ZXN0IFBERi4KZW5kc3RyZWFtCmVuZG9iagp4cmVmCjAgNQowMDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAwMDAxMDAgMDAwMDAgbiAKMDAwMDAwMDIyMCAwMDAwMCBuIAowMDAwMDAwMzQwIDAwMDAwIG4gCjAwMDAwMDA1MDAgMDAwMDAgbiAKdHJhaWxlcgo8PC9TaXplIDUKL1Jvb3QgMSAwIFIKL0luZm8gNSAwIFIKPj4Kc3RhcnR4cmVmCjY2NQolJUVPRgo=
"""
 */
Instance: documentReferenceExample
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* type = $LNC#55107-7 "Clinical note"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "Binary/ExampleBinary"
//* content[0].attachment.url = "ressources/media/exempleBIO.pdf"
* content[0].attachment.title = "Résultat PDF"
* content[0].attachment.creation = "2025-05-01T10:00:00+01:00" 


