Extension: InformationRecipientExtension
Id: fr-information-recipient-extension
Title: "InformationRecipientExtension"
Description: "Extension permettant d'ajouter des destinataires prévus du document dans la Composition."
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Destinataire prévu du document"

* extension contains
    type 1..1 and
    party 1..1

* extension[type]
* extension[type] ^short = "Type de participation : destinataire"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from FRCoreParticipationTypeDestinataire
* extension[type].valueCodeableConcept 1..1

* extension[party]
* extension[party] ^short = "Destinataire"
//* extension[party].value[x] only Reference
* extension[party].valueReference only Reference(FrPractitionerRoleDocument)
* extension[party].valueReference 1..1

