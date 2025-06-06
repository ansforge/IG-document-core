Profile: FrEncounter
Parent: Encounter
Id: fr-encounter
Title: "Encounter - FR Encounter Profile"
Description: "FrEncounter est un profil permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir"

* identifier 1..* MS
* identifier ^short = "Identifiant de la rencontre"
* identifier ^definition = "Identifier(s) by which this encounter is known.Cet élément est multiévalué (pour ne pas bloquer les implémentations, car il arrive sur le terrain qu'il y ait plusieurs id pour une même admission, mais cette situation est considérée comme une anomalie)"

* class MS
* class ^short = "Type de rencontre :
Valeur généralement issue du JDV_HL7_ActEncounterCode_CISIS (2.16.840.1.113883.1.11.13955) mais un autre JDV peut être utilisé pour certains documents spécifiques (dans ce cas, le JDV est fourni dans le volet concerné)."

* subject only Reference(FrPatientINSDocument or FrPatientDocument)

* participant ^short = "Liste des personnes impliquées dans la rencontre"
* participant.individual only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument)
//* appointment only Reference(FRCoreAppointmentProfile)
* period 1..
* account ..1
* hospitalization.preAdmissionIdentifier ^short = "Pre-admission identifier | Identifiant de pré-admission"

* hospitalization.preAdmissionIdentifier.type 1..
* hospitalization.preAdmissionIdentifier.type from FRCoreValueSetEncounterIdentifierType (extensible)
* hospitalization.preAdmissionIdentifier.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.preAdmissionIdentifier.type ^binding.extension[=].valueString = "IdentifierType"
* hospitalization.preAdmissionIdentifier.type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* hospitalization.preAdmissionIdentifier.type ^binding.extension[=].valueBoolean = true
* hospitalization.preAdmissionIdentifier.system 1..
* hospitalization.preAdmissionIdentifier.system = "1.2.250.1.71.4.2.2+.n°FINESS" (exactly)
* hospitalization.preAdmissionIdentifier.system ^definition = "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nLe namespace est défini à partir de la racine d'identification (gérée par l'ANS) de l'organisation où a lieu la rencontre , concaténée avec par exemple le FINESS de l'établissent (ou FINEJ ou SIRET ou SIREN), cf annexe française des types de données HL7 en France"
* hospitalization.preAdmissionIdentifier.value 1..
* hospitalization.preAdmissionIdentifier.assigner only Reference(FRCoreOrganizationProfile)
* hospitalization.origin only Reference(FRCoreLocationProfile or FRCoreOrganizationProfile)
* hospitalization.reAdmission ^short = "the resaon of re-admission of this hospitalization encounter | Raison de la ré-admission du patient."
* hospitalization.destination only Reference(FRCoreLocationProfile or FRCoreOrganizationProfile)
* hospitalization.dischargeDisposition from FRCoreValueSetEncounterDischargeDisposition (example)
* location.location only Reference(FRCoreLocationProfile)

* location.physicalType from FRCoreValueSetLocationPhysicalType (example)

* serviceProvider only Reference(FRCoreOrganizationProfile)

* partOf only Reference(FRCoreEncounterProfile)