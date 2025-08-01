Logical: HistoriqueDesGrossesses
//Id: fr-historique-des-grossesses
Parent: Section
Title: "Antécédents obstétricaux"
Description: """Modèle logique métier de la section Historique des grossesses"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
//* entree 1..* 
* entree[x] 1..* ObservationGrossesse or HistoriqueGrossesse "Entrée Observation sur la grossesse ou Entrée Historique des grossesses"