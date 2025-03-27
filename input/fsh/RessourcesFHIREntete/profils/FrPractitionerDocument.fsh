// StructureDefinition for PractitionerDocument
Profile: FrPractitionerDocument
Parent: AsPractitionerProfile
Id: fr-practitioner-document
Title: "Fr Practitioner Document"
Description: "Ce profil représente les professionnels de santé."
* identifier 1..* 
* name 1..1
* name ^short = "Identité de la personne physique" 
* name only fr-human-name-document

// Savoir-faire / rôle
* qualification[savoirFaire] ^short = "Le savoir-faire ou le rôle apporte des précisions sur certaines professions : 
 - Savoir-faire : pour les professions 10 (Médecin), 21 (Pharmacien), 40 (Chirurgien-dentiste) et 60 (Infirmier).
 - Rôle : pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle)."

* qualification[savoirFaire] contains
    professionMedecin 0..* and
    professionPharmacien 0..* and 
    professionChirurgienDentiste 0..* and
    professionInfirmier 0..*

* qualification[savoirFaire][professionMedecin].code.coding[savoirFaire] from FRValueSetSavoirFaireRole (required)

/*
* qualification[savoirFaire][professionPharmacien].code.coding[savoirFaire] from FRValueSetSavoirFaireRole (required)
* qualification[savoirFaire][professionChirurgienDentiste].code.coding[savoirFaire] from FRValueSetSavoirFaireRole (required)
* qualification[savoirFaire][professionInfirmier].code.coding[savoirFaire] from FRValueSetSavoirFaireRole (required)
*/
* qualification contains role 0..*
* qualification[role].code.coding from FRValueSetRolePriseCharge (required)



//* qualification[savoirFaire].code.coding[savoirFaire] from FRValueSetSavoirFaireRole (required)
/*
* qualification[savoirFaire].code.coding[savoirFaire] ^slicing.discriminator.type = #value
* qualification[savoirFaire].code.coding[savoirFaire] ^slicing.discriminator.path = "system"
* qualification[savoirFaire].code.coding[savoirFaire] ^slicing.rules = #closed
* qualification[savoirFaire].code.coding contains 
    professionMedecin 0..* and
    professionPharmacien 0..* and 
    professionChirurgienDentiste 0..* and
    professionInfirmier 0..*
*/

