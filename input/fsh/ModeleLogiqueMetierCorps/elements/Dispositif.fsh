Logical: DispositifMedical
//Parent: EHDSDevice
//Id: fr-dispositif-medical
Title: "Dispositif médical"
Description: """Modèle logique métier Dispositif médical"""
Characteristics: #can-be-target

// EHDSDevice.identifier : 1..*
* identifiant 0..* Identifier "Identifiant unique du DM (UDI)"
* type 1..1 Base "Type de DM"
  * code 1..1 CodeableConcept "Code du DM"
    * autreCode 0..* CodeableConcept "Autre code du dispositif médical"
