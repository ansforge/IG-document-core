Logical: DocumentPDFCopie
//Id: fr-document-PDF-copie
Parent: Section
Title: "Document PDF copie"
Description: """Modèle logique métier de la section Document PDF-copie"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..1
  * documentAttache  1..1 DocumentAttache  "Entrée Document attaché"