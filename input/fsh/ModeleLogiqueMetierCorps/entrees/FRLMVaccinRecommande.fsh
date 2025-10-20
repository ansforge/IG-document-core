Logical: FRLMVaccinRecommande
Id: fr-lm-vaccin-recommande
Title: "Modèle logique métier - FR LM Vaccin recommandé"
Description: """Entrée Vaccin recommandé"""
Characteristics: #can-be-target

* identifiantVaccinRecommande 1..1 Identifier "Identifiant de l’entrée"
* codeVaccinRecommande 1..1 CodeableConcept "Type d'acte : vaccination"
* descriptionNarrativeVaccinRecommande 1..1 Narrative "Partie narrative de l’entrée" 
* statutVaccinRecommande 1..1 code "Statut de l’entrée" 
* periodeVaccination 1..1 dateTime "Période de vaccination souhaitable" 
* voieAdministration 0..1 CodeableConcept "Voie d’administration" 
* regionAnatomique 0..* CodeableConcept "Région anatomique d'administration" 
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)" 
* doseAdministree 0..1 Quantity "Dose administrée" 
* vaccin 1..1 FRLMProduitSante "Vaccin" 
* prescription 0..1 FRLMPrescriptionEntry "Référence de la prescription" 
* rangVaccination 0..1 FRLMRangVaccination "Rang de la vaccination" 
* commentaire 0..1 FRLMCommentaireER "Commentaire" 
