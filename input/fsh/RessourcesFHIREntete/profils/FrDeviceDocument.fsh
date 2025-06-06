// StructureDefinition for DeviceDocument
Profile: FrDeviceDocument
Parent: AsDeviceProfile
Id: fr-device-document
Title: "Fr Device Document"
Description: "Ce profil représente le système auteur du document."
* identifier 1..*
* type ^short = "Profession / savoir-faire ou rôle"
* type from $jdv-type-systeme-cisis (required)
* deviceName.name 1..1
* deviceName.name ^short = "Nom du modèle du système"
* deviceName.type ^short = "Nom du système"
* owner 1..1
* owner ^short = "Structure" 
* owner only Reference(FrOrganizationDocument)