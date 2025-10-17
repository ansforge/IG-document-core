Extension: FrFamilyMemberHistoryBodySiteExtension
Id: fr-body-site-extension
Title: "Extension - Fr Body Site Extension"
Description: "Extension pour indiquer la localisation anatomique d'une condition dans antécédents familiaux"

* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system = "http://snomed.info/sct"