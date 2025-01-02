// StructureDefinition for ServiceEvent
Profile: FrServiceEvent
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ServiceEvent
Id: fr-core-service-event
Title: "serviceEvent"
Description: "ServiceEvent représente un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. 
L'occurrence de documentationOf/serviceEvent contenant les données de l’évènement documenté principal 
doit inclure un élément effectiveTime et un élément performer renseignés, sans recours à l'attribut nullFlavor." 
* ^status = #draft