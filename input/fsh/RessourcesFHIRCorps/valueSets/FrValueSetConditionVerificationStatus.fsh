ValueSet: FrValueSetConditionVerificationStatus
Id: fr-value-set-condition-verification-status
Title: "Statuts de vérification d'une condition (restreint)"
Description: "Jeu de valeurs français restreint pour Condition.verificationStatus, incluant uniquement confirmed, unconfirmed, et refuted."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted