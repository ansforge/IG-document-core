Instance: clinical-document-bundle-BIO-CR-BIO
InstanceOf: Bundle
Description: "Document Bundle exemple FHIR du CR-BIO"Usage: #example
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
* entry[+].fullUrl = "https://exemple.com/Organization/custodianOrganization"
* entry[=].resource = custodianOrganization
* entry[+].fullUrl = "https://exemple.com/PractitionerRole/fr-practitioner-role-exemple1"
* entry[=].resource = fr-practitioner-role-exemple1
* entry[+].fullUrl = "https://exemple.com/PractitionerRole/fr-practitioner-role-exemple2"
* entry[=].resource = fr-practitioner-role-exemple2
* entry[+].fullUrl = "https://exemple.com/Patient/fr-patientExemple"
* entry[=].resource = fr-patientExemple
* entry[+].fullUrl = "https://exemple.com/Encounter/encounter-exemple"
* entry[=].resource = encounter-exemple
* entry[+].fullUrl = "https://exemple.com/ServiceRequest/service1"
* entry[=].resource = service1
* entry[+].fullUrl = "https://exemple.com/Consent/consent1"
* entry[=].resource = consent1

Instance: clinical-document-composition-BIO-CR-BIO
InstanceOf: FrCompositionDocument
Description: "Composition exemple pour un CR de Biologie"Usage: #example
* meta.lastUpdated = "2024-05-07T13:28:17.000+00:00"
* language = #fr
* meta.profile = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/BIO-CR-BIO/2024.01"
// templeId à faire
* text.status = #additional
// Type de document
* type.coding[0].system = $LNC
* type.coding[0].code = #11502-2
* type.coding[0].display = "Compte rendu du laboratoire [Recherche] Patient ; Document"

* extension[R5-Composition-version].valueString = "1"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">          
   <p><b>Compte rendu d'examens biologiques</b></p>       
   <p><b>Practitioner</b>: Dr. Marcel CAMPARINI</p>   
   <p><b>status</b>: final</p>  
   <p><b>patient</b>: DOMINIQUE MARIE-LOUISE PAT-TROIS </p>      
   <p><b>author</b>: DR Marcel CAMPARINI  / Laboratoire des charmes</p>   
   <p><b>encounter</b>: ambulatoire (hors établissement), 2025-05-03 - 2024-05-07</p>    
   <p><b>confidentiality</b>: N</p>  </div>"


/* // information-recipient-extension
* extension[information-recipient].extension[type].valueCodeableConcept.coding[0].system = "urn:oid:2.16.840.1.113883.5.90"
* extension[information-recipient].extension[type].valueCodeableConcept.coding[0].code = #PRCP
* extension[information-recipient].extension[type].valueCodeableConcept.coding[0].display = "primary information recipient"

* extension[information-recipient].extension[party].valueReference = Reference(fr-practitioner-role-exemple1) "DR Marcel CAMPARINI" */


* extension[InformantExtension].extension[type].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[InformantExtension].extension[type].valueCodeableConcept.coding[0].code = #INF
//* extension[InformantExtension].extension[type].valueCodeableConcept.coding[0].display = "informant"
* extension[InformantExtension].extension[party].valueReference = Reference(fr-patientExemple)


* extension[ParticipantExtension].extension[type].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* extension[ParticipantExtension].extension[type].valueCodeableConcept.coding[0].code = #INF
//* extension[ParticipantExtension].extension[type].valueCodeableConcept.coding[0].display = "informant"
* extension[participant].extension[time].valuePeriod.start = "2025-06-12T10:00:00+01:00"
* extension[participant].extension[time].valuePeriod.end = "2025-06-12T14:00:00+01:00"

* extension[ParticipantExtension].extension[party].valueReference = Reference(Practitioner/fr-practitioner-role-exemple2)

* attester[legal_attester].mode = #legal
* attester[legal_attester].time = "2024-06-12T15:00:00+01:00"
* attester[legal_attester].party = Reference(fr-practitioner-role-exemple1)

* attester[professional_attester].mode = #professional
* attester[professional_attester].time = "2024-06-12T14:30:00+01:00"
* attester[professional_attester].party = Reference(fr-practitioner-role-exemple1)

* event[principalEvent].period.start = "2024-06-12T08:00:00+01:00"
* event[principalEvent].period.end = "2024-06-12T09:00:00+01:00"
* event[principalEvent].extension[perfomer].valueReference = Reference(fr-practitioner-role-exemple1)

* identifier.value = "D52DE737-001D-4031-B571-0A0ED7C42300"
* status = #final

* subject = Reference(fr-patientExemple)
* date = "2025-06-12T14:00:00+01:00"
* confidentiality = #N
* section[0].title = "Reason for visit Narrative"
* section[=].code = $LNC#29299-5 "Reason for visit Narrative"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\n              <table>\n\n                <thead>\n\n                  <tr>\n\n                    <td>Details</td>\n\n                    <td/>\n\n                  </tr>\n\n                </thead>\n\n                <tbody>\n\n                  <tr>\n\n                    <td>Acute Asthmatic attack. Was wheezing for days prior to admission.</td>\n\n                    <td/>\n\n                  </tr>\n\n                </tbody>\n\n              </table>\n\n            </div>"

* encounter = Reference(encounter-exemple)
* author = Reference(fr-practitioner-role-exemple1) "DR Marcel CAMPARINI"
* author.extension[time].valueDateTime = "2024-06-12T13:45:00+01:00"
* title = "Compte rendu d'examens biologiques"

* relatesTo[+].code = #replaces
* relatesTo[=].targetIdentifier.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* relatesTo[=].targetIdentifier.type.coding[0].code = #ACSN
* relatesTo[=].targetIdentifier.type.coding[0].display = "Accession ID"
* relatesTo[=].targetIdentifier.system = "urn:oid:1.2.250.1.213.1.4.10"
* relatesTo[=].targetIdentifier.value = "ABC123"

* custodian = Reference(custodianOrganization) "Laboratoire des charmes"
* confidentiality = #N
/* * section[0].title = "Section vide"
* section[=].code = $LNC#29299-5 "Reason for visit Narrative"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\n              <table>\n\n                <thead>\n\n                  <tr>\n\n                    <td>Details</td>\n\n                    <td/>\n\n                  </tr>\n\n                </thead>\n\n                <tbody>\n\n                  <tr>\n\n                    <td>Acute Asthmatic attack. Was wheezing for days prior to admission.</td>\n\n                    <td/>\n\n                  </tr>\n\n                </tbody>\n\n              </table>\n\n            </div>"
 */

Instance: fr-patientExemple
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
* contact[0].relationship[Role].coding[0].system = "https://interop.esante.gouv.fr/ig/document/core/ValueSet/fr-doc-vs-patient-contact-role"
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
Description: "exemple custodian content"Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2.16.840.1.113883.19.5"
* name = "Laboratoire des charmes"

Instance: fr-practitioner-role-exemple1
InstanceOf: FrPractitionerRoleDocument
Description: "exemple practitioner role content"Usage: #example
* meta.lastUpdated = "2013-05-05T16:13:03Z"
* identifier.system = "http://www.acme.org/practitioners"
* identifier.value = "1.2.250.1.71.4.2.1"
* practitioner = Reference("Practitioner/practitioner-exemple1")
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #doctor

Instance: fr-practitioner-role-exemple2
InstanceOf: FrPractitionerRoleDocument
Description: "exemple practitioner role content"Usage: #example
* meta.lastUpdated = "2013-05-05T16:13:03Z"
* identifier.system = "http://www.acme.org/practitioners"
* identifier.value = "1.2.250.1.71.4.2.1"
* practitioner = Reference("Practitioner/practitioner-exemple2")
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #doctor

Instance: practitioner-exemple1
InstanceOf: FrPractitionerDocument
Usage: #example
Title: "Dr Marcel CAMPARINI"
* identifier[0].system = "http://identifiants.esante.gouv.fr"
* identifier[0].value = "123456789012345"
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding[0].code = #NPI
* identifier[0].type.coding[0].display = "Numéro du professionnel de santé"
* name[0].family = "CAMPARINI"
* name[0].given[0] = "Marcel" 
* name[0].prefix[0] = "Dr"

Instance: practitioner-exemple2
InstanceOf: FrPractitionerDocument
Usage: #example
Title: "Dr MEDIOUNI Stéphane"
* identifier[0].system = "http://identifiants.esante.gouv.fr"
* identifier[0].value = "123456789012345"
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding[0].code = #NPI
* identifier[0].type.coding[0].display = "Numéro du professionnel de santé"
* name[0].family = "MEDIOUNI"
* name[0].given[0] = "Stéphane"
* name[0].prefix[0] = "Dr"


Instance: encounter-exemple
InstanceOf: Encounter
Description: "exemple encounter content"Usage: #example
* meta.lastUpdated = "2024-05-07T11:28:17.000+00:00"
* identifier.value = "S100"
* status = #finished
* class = $v3-ActCode#AMB "ambulatoire (hors établissement)"
* type.text = "ambulatoire (hors établissement)"
* subject = Reference(fr-patientExemple) "DOMINIQUE MARIE-LOUISE"
* period.start = "2024-05-03T13:28:17.000+00:00"
* period.end = "2024-05-07T11:28:17.000+00:00"


Instance: service1
InstanceOf: ServiceRequest
Description: "exemple service content"
Usage: #example
* meta.lastUpdated = "2024-05-07T11:28:17.000+00:00"
* status = #active "Active"
* intent = #order
* subject = Reference(fr-patientExemple) "DOMINIQUE MARIE-LOUISE"
* code.text = "Discharge to home"

Instance: consent1
InstanceOf: Consent
Description: "exemple consent content"
Usage: #example
* meta.lastUpdated = "2024-05-07T11:28:17.000+00:00"
* status = #active "Active"
* patient = Reference(Patient/fr-patientExemple) "DOMINIQUE MARIE-LOUISE"
* scope = $consentscope#patient-privacy
* category = $LNC#59284-0
//* sourceAttachment.title = "The terms of the consent in lawyer speak."
* policyRule = $v3-ActCode#OPTIN