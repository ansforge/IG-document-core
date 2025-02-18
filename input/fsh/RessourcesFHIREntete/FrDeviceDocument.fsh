// StructureDefinition for DeviceDocument
Profile: FrDeviceDocument
Parent: Device
Id: fr-device-document
Title: "FrDeviceDocument"
Description: "Système"
* ^status = #draft 
* identifier 1..*
* type ^short = "Nom du système"
* type from $JDV_J01-XdsAuthorSpecialty
* deviceName.name 1..1
* deviceName ^short = "Nom du modèle du système"
* owner 1..1 
* owner only Reference(FrOrganizationDocument)