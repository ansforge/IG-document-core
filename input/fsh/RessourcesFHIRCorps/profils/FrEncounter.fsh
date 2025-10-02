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
* participant ^short = "Liste des participants impliqués dans la rencontre"
* participant.individual.extension contains
    FrActorExtension named executant 0..* and
    FrActorExtension named author 0..* and
    FrActorExtension named informant 0..*

* participant.individual.extension[executant] ^short = "Exécutant : 
Si la rencontre est réalisée :
 au moins 1 exécutant doit être renseigné.
Sinon : l'exécutant n'est pas obligatoire mais peut être renseigné"
* participant.individual.extension[executant].extension[type].valueCode = #PRF (exactly)

* participant.individual.extension[author] ^short = "Author"
* participant.individual.extension[author].extension[type].valueCode = #AUT (exactly)

* participant.individual.extension[informant] ^short = "Informant"
* participant.individual.extension[informant].extension[type].valueCode = #INF (exactly)

* location 0..1 MS
* location ^short = "Lieu d'exécution"
* location.location only Reference(FrLocationDocument)