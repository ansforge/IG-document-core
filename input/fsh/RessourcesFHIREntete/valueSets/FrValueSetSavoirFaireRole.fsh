ValueSet: FRValueSetSavoirFaireRole
Id: fr-doc-vs-savoir-faire-role
Title: "Fr ValueSet Savoir-faire / Role"
Description: "Savoir-faire / rôle"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include codes from system $TRE_G13-OrientationParticuliere
* include codes from system $TRE_R359-SurspecialiteTransversale
* include codes from system $TRE_R38-SpecialiteOrdinale
* include codes from system $TRE_R39-Competence
* include codes from system $TRE_R40-CompetenceExclusive
* include codes from system $TRE_R42-DESCnonQualifiant
* include codes from system $TRE_R43-CapaciteSavoirFaire
* include codes from system $TRE_R44-QualificationPAC
* include codes from system  $TRE_R45-FonctionQualifiee
* include codes from system $TRE_R97-DroitExerciceCompl
* include codes from system $TRE_G05-SousSectionTableauCNOP
* include codes from system $TRE_R85-RolePriseCharge 

* ^experimental = false
