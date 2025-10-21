Logical: FRLMCRBIOChapitre
Id: fr-lm-cr-bio-chapitre
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Compte rendu de biologie de 1er niveau"
Description: """Section Compte rendu de biologie de 1er niveau"""
Characteristics: #can-be-target

* sousSection 0..0
* entree 0..0
* choice[x] 1..* FRLMCRBIOSousChapitre or FRLMResultatsExamensBiologieMedicale "Section de 1er niveau (Chapitre) qui contient : 
  • soit une seule entrée FR-Resultats-examens-de-biologie-medicale,  
  • soit une ou plusieurs sous-sections FR-CR-BIO-Sous-Chapitre"
* obeys crbio-choice

Invariant: crbio-choice
Description: "La section doit contenir soit une ou plusieurs sous-sections CRBIOSousChapitre, soit une ou plusieurs entrées ResultatsExamensBiologieMedicale, mais pas les deux."
Severity: #error
Expression: "(choice.where(resolve() is CRBIOSousChapitre).exists() and not choice.where(resolve() is ResultatsExamensBiologieMedicale).exists()) or (not choice.where(resolve() is CRBIOSousChapitre).exists() and choice.where(resolve() is ResultatsExamensBiologieMedicale).exists())"

