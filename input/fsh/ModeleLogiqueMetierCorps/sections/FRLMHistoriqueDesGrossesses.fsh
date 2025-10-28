Logical: FRLMHistoriqueDesGrossesses
Id: fr-lm-historique-des-grossesses
Parent: FRLMSection
Title: "Modèle logique métier - FR LM Antécédents obstétricaux"
Description: """Section Historique des grossesses"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree[x] 1..* FRLMObservationGrossesse or FRLMHistoriqueGrossesse "Entrée Observation sur la grossesse ou Entrée Historique des grossesses"