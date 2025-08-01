Logical: SignesVitaux
Parent: Section
//Id: fr-signes-vitaux
Title: "Signes vitaux"
Description: """Modèle logique métier de la section Signes vitaux"""
Characteristics: #can-be-target

* titreSection 1..1 
* sousSection 0..0
* entree 1..*
  * signesVitauxEntry 1..* SigneVital "Entrée Signes vitaux"