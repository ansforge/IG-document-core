Logical: Section
//Id: fr-section-code
Title: "* Section"
Description: """Modèle logique métier : Section"""
Characteristics: #can-be-target

* codeSection 1..1 CodeableConcept "Code de la section"
* titreSection 0..1 string "Titre de la section"
* blocNarratif 1..1 Narrative "Bloc narratif"
* sousSection 0..* Base "Sous-sections"
* entree 0..* Base "Entrées"