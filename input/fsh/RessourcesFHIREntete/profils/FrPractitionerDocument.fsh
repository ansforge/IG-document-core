// StructureDefinition for PractitionerDocument
Profile: FrPractitionerDocument
Parent: AsPractitionerProfile
Id: fr-practitioner-document
Title: "Fr Practitioner Document"
Description: "Ce profil permet de décrire un professionnel de santé dans le cadre d'un document médical"
* identifier 1..* 
* name 1..1
* name ^short = "Identité de la personne physique" 
* name only fr-human-name-document
  * family 1..1
  * given 0..1 

// Savoir-faire / rôle
* qualification[savoirFaire] ^short = "Le savoir-faire ou le rôle apporte des précisions sur certaines professions : 
 - Savoir-faire : pour les professions 10 (Médecin), 21 (Pharmacien), 40 (Chirurgien-dentiste) et 60 (Infirmier).
 - Rôle : pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle)."

* qualification[savoirFaire] contains
    professionMedecin 0..1 and
    professionPharmacien 0..1 and 
    professionChirurgienDentiste 0..1 and
    professionInfirmier 0..1

// Profession 10 (Médecin)
* qualification[savoirFaire][professionMedecin] ^short = "Savoir-faire pour la profession 10 (Médecin)"
* qualification[savoirFaire][professionMedecin].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire][professionMedecin].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire][professionMedecin].code.coding ^slicing.rules = #closed
* qualification[savoirFaire][professionMedecin].code.coding contains savoirFaire 0..1

* qualification[savoirFaire][professionMedecin].code.coding contains typeSavoirFaire 0..1
* qualification[savoirFaire][professionMedecin].code.coding[typeSavoirFaire] from FRValueSetTypeSavoirFaireProfessionMedecin (required)

// Profession 21 (Pharmacien)
* qualification[savoirFaire][professionPharmacien] ^short = "Savoir-faire pour la profession 21 (Pharmacien)."
* qualification[savoirFaire][professionPharmacien].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire][professionPharmacien].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire][professionPharmacien].code.coding ^slicing.rules = #closed
* qualification[savoirFaire][professionPharmacien].code.coding contains savoirFaire 0..1
* qualification[savoirFaire][professionPharmacien].code.coding[savoirFaire] from FRValueSetSavoirFaireProfessionPharmacien (required)

* qualification[savoirFaire][professionPharmacien].code.coding contains typeSavoirFaire 0..1
* qualification[savoirFaire][professionPharmacien].code.coding[typeSavoirFaire] from FRValueSetTypeSavoirFaireProfessionPharmacien (required)

// Profession 40 (Chirurgien-Dentiste)
* qualification[savoirFaire][professionChirurgienDentiste] ^short = "Savoir-faire pour la profession 40 (Chirurgien-Dentiste)."
* qualification[savoirFaire][professionChirurgienDentiste].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire][professionChirurgienDentiste].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire][professionChirurgienDentiste].code.coding ^slicing.rules = #closed
* qualification[savoirFaire][professionChirurgienDentiste].code.coding contains savoirFaire 0..1
* qualification[savoirFaire][professionChirurgienDentiste].code.coding[savoirFaire] from FRValueSetSavoirFaireProfessionChirurgienDentiste (required)

* qualification[savoirFaire][professionChirurgienDentiste].code.coding contains typeSavoirFaire 0..1
* qualification[savoirFaire][professionChirurgienDentiste].code.coding[typeSavoirFaire] from FRValueSetTypeSavoirFaireProfessionChirurgienDentiste (required)

// Profession 60 (Infirmier)
* qualification[savoirFaire][professionInfirmier] ^short = "Savoir-faire pour la profession 60 (Infirmier)"
* qualification[savoirFaire][professionInfirmier].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire][professionInfirmier].code.coding ^slicing.discriminator.path = "$this"
* qualification[savoirFaire][professionInfirmier].code.coding ^slicing.rules = #closed
* qualification[savoirFaire][professionInfirmier].code.coding contains savoirFaire 0..1
* qualification[savoirFaire][professionInfirmier].code.coding[savoirFaire] from FRValueSetSavoirFaireProfessionInfirmier (required)

* qualification[savoirFaire][professionInfirmier].code.coding contains typeSavoirFaire 0..1
* qualification[savoirFaire][professionInfirmier].code.coding[typeSavoirFaire] from FRValueSetTypeSavoirFaireProfessionInfirmier (required)

// Rôle (Profession 41 et 99) 
* qualification contains role 0..1
* qualification[role] ^short = "Rôle : Pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle)."
* qualification[role].code.coding from FRValueSetRolePriseCharge (required)