// StructureDefinition for FrEncounterEvent
Profile: FrEncounterEvent
Parent: FrEncounter
Id: fr-encounter-event
Title: "Encouter - Fr Event"
Description: "FrEncounterEvent est un profil de type encounter permettant de conserver les données d’activités liées à un patient / usager, dérivé de FrEncounter.
 - Il peut s'agir d'un évènement passé ou à venir."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

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

* extension contains FrEventCharacteristicExtension named caracteristique 0..*
 
* extension contains http://hl7.org/fhir/StructureDefinition/note named commentaire 0..*

// ou bien dans le profil DocumentReference : context.encounter only Reference (FrEncounterEvenement)
* extension contains FrInternalReferenceExtension named urlPiecesJointes 0..*

//ou bien enregistrer l'événement dans la ressource Procedure.encounter
//si le transport du patient est la cause ou justification de l’événement 
* reasonReference only Reference(FrProcedurePatientTransport or FrProcedureHealthcareProfessionalTransport)
/*ou tilisation d'une extension de type ValueReference (FrProceduredeTransportPatient)
* extension contains FrTransportPatient named transportPatient 0..*
/*ou tilisation d'une extension de type ValueReference (FrProceduredeTransportProfessionnel)
* extension contains FrTransportProfessionnel named transportProfessionnel 0..*
*/
* priority 0..0 

Extension: FrPatientTransport
Id: fr-patient-transport-extension
Title: "Fr Patient Transport"
Description: "Extension permettant de référencer une procédure de transport du patient depuis un Encounter."
* valueReference only Reference(FrProcedurePatientTransport)

Extension: FrHealthcareProfessionalTransport
Id: fr-healthcare-professional-transport-extension
Title: "Fr Healthcare Pofessional Transport"
Description: "Extension permettant de référencer une procédure de transport du Professionnel depuis un Encounter."
* valueReference only Reference(FrProcedureHealthcareProfessionalTransport)