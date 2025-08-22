Profile: FrEncounter
Parent: Encounter
Id: fr-encounter
Title: "Encounter - Fr Encounter"
Description: "FrEncounter est un profil permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Identifiant de la rencontre"

* class MS
* class ^short = "Type de rencontre :
Valeur généralement issue du JDV_HL7_ActEncounterCode_CISIS (2.16.840.1.113883.1.11.13955) mais un autre JDV peut être utilisé pour certains documents spécifiques (dans ce cas, le JDV est fourni dans le volet concerné)."

* status MS
* status ^short = """
Si rencontre réalisée : status='finished'
Si rencontre planifiée : status='planned'
Si rencontre prévue mais non confirmée : status='proposed'
"""

* period MS
* period ^short = "Date début et fin de la rencontre
Si la rencontre est réalisée ou planifiée : la date est obligatoire.
Si la rencontre est prévue non confirmée : la date est facultative."

* priority MS
* priority ^short = """
Si la rencontre est prévue non confirmée et qu'une confirmation est attendue :
code='CS', display='callback for scheduling'
Sinon, l'élément 'priority' n'est pas fourni.
"""

* subject only Reference(FrPatientINSDocument or FrPatientDocument)

* participant MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type.coding.code"
* participant ^slicing.rules = #open


* participant contains author 0..* and informant 0..* and executant 0..*

* participant[executant] ^short = "Exécutant : 
Si la rencontre est réalisée :
 au moins 1 exécutant doit être renseigné.
Sinon : l'exécutant n'est pas obligatoire mais peut être renseigné"
* participant[executant].type.coding.system from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
* participant[executant].type.coding.code = #PRF
* participant[executant].type.coding.display = "Performer"
* participant[executant].individual only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument)

* participant[author].type.coding.system from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
* participant[author].type.coding.code = #AUT
* participant[author].type.coding.display = "Author"
* participant[author].individual only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument)

* participant[informant].type.coding.system from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis
* participant[informant].type.coding.code = #INF
* participant[informant].type.coding.display = "Informant"
* participant[informant].individual only Reference(FrPractitionerRoleDocument or FrRelatedPersonDocument)

* location 0..1 MS
* location ^short = "Lieu d'exécution"
* location.location only Reference(FrLocationDocument)