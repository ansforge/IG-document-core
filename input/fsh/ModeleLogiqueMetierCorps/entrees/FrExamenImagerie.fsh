Logical: FrExamenImagerie
Title: "Examen Imagerie"
Description: """Entrée DICOM Examen Imagerie"""
Characteristics: #can-be-target

* uuidInstanceExamen 1..* Identifier "UUID instance examen"
* codeActe 1..1 CodeableConcept "Code de l'acte"
* description 0..1 Narrative "Partie narrative de l'entrée"
* dateActe 0..1 dateTime "Date de l'acte" 
* serieImagerie 1..1 FrSerieImagerie "Serie-imagerie"
* objectifsReferences 0..* CodeableConcept "Objectifs de reference"
  * ^binding.description = "jdv-imagerie-objectif-reference-cisis (1.2.250.1.213.1.1.5.672)"
