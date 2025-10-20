Logical: FRLMDocumentsAjoutes 
Id: fr-lm-documents-ajoutes
Parent: Section
Title: "Modèle logique métier - FR LM Documents ajoutés"
Description: """Section Documents ajoutés"""
Characteristics: #can-be-target

* sousSection 0..0 
* entree 
  * simpleObservation 0..1 FRLMObservation "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés"
  * documentAttache 1..* FRLMDocumentAttache "Entrée Document attaché"