Logical: Prelevement
//Id: fr-prelevement
Title: "Prélèvement"
Description: """Modèle logique métier de l'entrée Prélèvement"""
Characteristics: #can-be-target

//  EHDSSpecimen.collectionProcedure. FHIR R4 : processing.procedure ou R5 : collection.procedure ?
* actePrelevement 0..1 CodeableConcept "Acte de prélèvement"
// EHDSSpecimen.collectionPeriod
* datePrelevement 1..1 dateTime "Date du prélèvement"
// EHDSSpecimen.bodySite
* localisationPrelevement 0..1 CodeableConcept "Localisation du prélèvement"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
// EHDSSpecimen.collectionProcedure.Procedure.performer
* perfomer 0..1 PersonneStructure "Organisation prélevante"
// EHDSSpecimen.container
* echantillonPreleve 0..1 EchantillonPreleve "Échantillon prélevé"
// EHDSSpecimen.sourceDevice
* dispositifUtilise 0..* DispositifMedical "Dispositif utilisé"
// EHDSSpecimen.material
* produitUtilise 0..* DispositifMedical "Produit utilisé"
// EHDSSpecimen.receivedDate
* dateReceptionEchantillon 1..1 Base "Date de réception de l'échantillon"