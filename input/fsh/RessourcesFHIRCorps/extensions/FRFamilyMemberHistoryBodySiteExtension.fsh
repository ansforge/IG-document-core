Extension: FRFamilyMemberHistoryBodySiteExtension
Id: fr-family-member-history-body-site-extension
Title: "FR Family Member History Body Site Extension"
Description: "Extension permettant d'indiquer la localisation anatomique d'une condition dans antécédents familiaux"

* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system = "http://snomed.info/sct"