// StructureDefinition for FrObservationVitalSigns
Profile: FrObservationVitalSigns
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id: fr-vital-signs
Title: "Observation - Fr Vital Signs"
Description: "
 - FrObservationVitalSigns permet d'indiquer les informations détaillées relatives à une mesure clinique spécifique.
 - Ce profil est utilisée dans un profil FrSignesVitauxDocument.
 - Il est basée sur la ressource Observation qu'elle spécialise en portant des contraintes sur les vocabulaires des éléments 'code' et 'value'."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1  MS
* identifier ^short = "Identifiant de l'entrée"
* code MS 
* code ^short = "Signe vital observé"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-signe-vital-cisis
* status MS
* status ^short = "Statut de l'observation"
* status = #final
* effective[x] only dateTime
* effectiveDateTime MS
  * ^short = "Date de l'observation"
* interpretation MS 
  * ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* method MS 
  * ^short = "Méthode utilisée pour l'observation"
* bodySite MS 
  * ^short = "Site de l'observation"

* performer 0..1 MS
* performer.extension contains FrActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT (exactly)
* performer.extension[author].extension[actor].valueReference only Reference(
    FrPractitionerRoleDocument
    or FrOrganizationDocument
    or FrPractitionerRoleDocument
    or FrPatientINSDocument
    )
* component.value[x] only Quantity
* component.valueQuantity 1..1 MS
  * ^short = "Observation effectuée. Terminologie utilisée : UCUM (2.16.840.1.113883.6.8)."