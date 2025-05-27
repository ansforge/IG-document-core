Logical: CommentaireER
//Id: fr-Commentaire-er
Title: "Commentaire"
Description: """Modèle logique métier de l'entrée Commentaire"""
Characteristics: #can-be-target

* codeCommentaireER 1..1 CodeableConcept "Code de l'entrée"
* texteCommentaireER 1..1 Narrative "Texte du commentaire"
* statutCommentaireER 1..1 code "Statut de l'entrée Fixé à la valeu'completed'"
* auteurCommentaireER 0..1 Auteur "Ateur"