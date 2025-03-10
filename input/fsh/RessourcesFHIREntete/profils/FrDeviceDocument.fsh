// StructureDefinition for DeviceDocument
Profile: FrDeviceDocument
Parent: Device
Id: fr-device-document
Title: "FrDeviceDocument"
Description: "Ce profil représente un système."
* identifier 1..*
* type ^short = "Profession / savoir-faire ou rôle"
* type from $JDV_J01-XdsAuthorSpecialty-CISIS (required)
* deviceName.name 1..1
* deviceName.name ^short = "Nom du modèle du système"
* deviceName.type ^short = "Nom du système"
* owner 1..1
* owner ^short = "Structure" 
* owner only Reference(FrOrganizationDocument)