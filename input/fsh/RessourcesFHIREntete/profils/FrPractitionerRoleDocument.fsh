// StructureDefinition for PractitionerRoleDocument
Profile: FrPractitionerRoleDocument
Parent: AsPractitionerRoleProfile
Id: fr-practitionerRole-document
Title: "FrPractitionerRoleDocument"
Description: "Ce profil représente les professionnels de santé et leurs rôles dans le cadre d'un document médical."

// slice : Rôle fonctionnel du professionnel de santé
* code contains RoleFonctionnel 0..1
* code[RoleFonctionnel] from $JDV_J47-FunctionCode-CISIS (required)
* code[RoleFonctionnel] ^short = "Rôle fonctionnel du professionnel de santé"

* practitioner only Reference(FrPractitionerDocument)
* organization only Reference(FrOrganizationDocument)