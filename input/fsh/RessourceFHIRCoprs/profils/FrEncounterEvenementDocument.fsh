// StructureDefinition for FrEncounterEvenementDocument
Profile: FrEncounterEvenementDocument
Parent: Encounter
Id: fr-encounter-evenement-document
Title: "Encouter - Fr Evenement"
Description: "Cette entrée est un élément de type encounter permettant de conserver les données d’activités liées à un patient / usager. 
Il peut s'agir d'un évènement passé ou à venir. "

//* ^extension[$imposeProfile].valueCanonical = Canonical()

/* Ces éléments sont indiqués dans le Profil parent FrEncounter
* identifier 1..*  MS
* identifier ^short = "Identifiant de l'évènement"
 // ou bien utilisation de l'extension fhir R5 : Note ?
 * text 0..1 MS 
   * ^short = "Libellé et motif de l'évènement"
* status MS
* status ^short = "Statut  de l'entrée"
* period MS
  * start 1..1 MS
    * ^short = "Date de début de l’évènement"
  * end MS
    * ^qhort ="Date de fin de l’évènement"
  */ 
* type MS
  * ^short = "Type d'évènement :
 - Le JDV dépend du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant). 
 - Si pas d'information utiliser le code Wolf ‘Aucun’."
 
* type.extension contains FrQualifierExtension named qualifier 0..* 

* extension contains FrEvenementCaracteristiqueExtension named caracteristique 0..*
 
* extension contains http://hl7.org/fhir/StructureDefinition/note named commentaire 0..*

// ou bien dans le profil DocumentReference : context.encounter only Reference (FrEncounterEvenement)
* extension contains FrReferenceInterneExtension named urlPiecesJointes 0..*

//ou bien enregistrer l'événement dans la ressource Procedure.encounter
//si le transport du patient est la cause ou justification de l’événement 
* reasonReference only Reference(FrProcedureTransportPatient or FrProcedureTransportProfessionnel)
/*ou tilisation d'une extension de type ValueReference (FrProceduredeTransportPatient)
* extension contains FrTransportPatient named transportPatient 0..*
/*ou tilisation d'une extension de type ValueReference (FrProceduredeTransportProfessionnel)
* extension contains FrTransportProfessionnel named transportProfessionnel 0..*
*/

Extension: FrTransportPatient
Id: fr-transport-patient-extension
Title: "Fr Transport patient"
Description: "Extension permettant de référencer une procédure de transport du patient depuis un Encounter."
* valueReference only Reference(FrProcedureTransportPatient)

Extension: FrTransportProfessionnel
Id: fr-transport-professionnel-extension
Title: "Fr Transport professionnel"
Description: "Extension permettant de référencer une procédure de transport du Professionnel depuis un Encounter."
* valueReference only Reference(FrProcedureTransportProfessionnel)

