Logical: FRLMCommentaireER
Id: fr-lm-commentaire-er
Title: "Modèle logique métier - FR LM Commentaire"
Description: """Commentaire"""
Characteristics: #can-be-target

* codeCommentaireER 1..1 CodeableConcept "Code de l'entrée"
* texteCommentaireER 1..1 Narrative "Texte du commentaire"
* statutCommentaireER 1..1 code "Statut de l'entrée Fixé à la valeu'completed'"
* auteurCommentaireER 0..1 FRLMAuteur "Auteur"
