Logical: DocumentsAjoutes 
Parent: Section
//Id: fr-documents-ajoutes 
Title: "Documents ajoutés"
Description: """Modèle logique métier de la section Documents ajoutés"""
Characteristics: #can-be-target

* simpleObservation 0..1 SimpleObservation "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés"
* documentAttache 1..* DocumentAttache "Entrée Document attaché"