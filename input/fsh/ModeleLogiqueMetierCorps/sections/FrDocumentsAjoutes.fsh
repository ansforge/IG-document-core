Logical: FrDocumentsAjoutes 
Parent: Section
Title: "Documents ajoutés"
Description: """Section Documents ajoutés"""
Characteristics: #can-be-target

* sousSection 0..0 
* entree 
  * simpleObservation 0..1 FrObservation "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés"
  * documentAttache 1..* FrDocumentAttache "Entrée Document attaché"