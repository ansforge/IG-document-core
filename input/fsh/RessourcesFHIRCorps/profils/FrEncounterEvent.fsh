Profile: FrEncounterEvent
Parent: FrEncounter
Id: fr-encounter-event
Title: "Encouter - Fr Event"
Description: "FrEncounterEvent est un profil de type encounter permettant de conserver les données d’activités liées à un patient / usager, dérivé de FrEncounter.
 - Il peut s'agir d'un évènement passé ou à venir."

* period 
  * start 1..1 MS
    * ^short = "Date de début de l’évènement"
  * end MS
    * ^short = "Date de fin de l’évènement"
 
* class MS
  * ^short = "Type d'évènement :
 - Le JDV dépend du volet utilisant ce profil (les précisions sont alors fournies dans le volet correspondant). 
 - Si pas d'information utiliser le code Wolf ‘Aucun’."
 
* type only FrDocumentCodeableConcept  
 
* extension contains http://hl7.org/fhir/StructureDefinition/note named commentaire 0..*
* priority 0..0 