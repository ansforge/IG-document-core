Logical: FrInformationsCliniques
Parent: Section
Title: "Informations Cliniques"
Description: """Section Informations Cliniques"""
Characteristics: #can-be-target

* sousSection 0..0 
* titreSection 1..1 
* entree 1..*
  * antecedentsMedicaux 1..1 FrObservation "Observation"
  * antecedentsChirurgicaux 1..1 FrObservation "Observation"
  * contreIndications 0..1 FrObservation "Observation"
  * probleme 0..* FrProbleme "Problème"
  * dispositifMedical 0..* FrDispositifMedicalEntry "Dispositif médical"
  * statutGrossesse 0..1 FrObservationGrossesse "Statut grossesse"
  * administrationProduitDeSante 0..* FrAdministrationProduitDeSante "Produits de santé administré avant l'examen d'imagerie"
  * sexeClinique 0..* CodeableConcept "Sexe Clinique"