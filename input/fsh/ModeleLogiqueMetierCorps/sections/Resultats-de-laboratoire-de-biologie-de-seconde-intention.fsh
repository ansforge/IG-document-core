Logical: ResultatsLaboratoireBiologieSecondeIntention
//Id: fr-resultats-de-laboratoire-de-biologie-de-seconde-intention
Parent: Section
Title: "Résultats de laboratoire de biologie de seconde intention"
Description: """Modèle logique métier de la section Résultats de laboratoire de biologie de seconde intention"""
Characteristics: #can-be-target

* observation  0..1 SimpleObservation "Entrée Simple observation"
* documentAttache 1..* DocumentAttache "Entrée Document attaché"