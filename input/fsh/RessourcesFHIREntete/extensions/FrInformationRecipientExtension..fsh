//Cette extension est utilisée pour enregistrer une personne déclarée comme destinataire prévu du document, dans la ressource Composition. 
//Elle contient que le(s) destinataire(s) "initialement prévu(s) à la création du document."
//Aucune extension du HL7 FHIR ne permet d’enregistrer cet élément.
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
* extension[type].valueCodeableConcept from FRValueSetParticipationType
* extension[type].valueCodeableConcept 1..1

* extension[party]
* extension[party] ^short = "Destinataire"
//* extension[party].value[x] only Reference
* extension[party].valueReference only Reference(FrPractitionerRoleDocument)
* extension[party].valueReference 1..1

