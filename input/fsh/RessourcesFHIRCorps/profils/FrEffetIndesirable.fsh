Profile: FrEffetIndesirable
Parent: AdverseEvent
Id: fr-effet-indesirable
Title: "AdverseEvent - Fr Effet indésirable"
Description: "FrEffetIndesirable permet de décrire un effet indésirable prévisible lié à un médicament"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis (required)
* category ^short = "Type d'effet indésirable"

* date 1..1 MS
* date ^short = "Date de début"

* detected 1..1 MS
* detected ^short = "Date de fin"

* suspectEntity 1..* MS

* suspectEntity ^short = "Agent soupçonné d’être à l’origine de l’événement indésirable"
* suspectEntity.instance 1..1 MS
* suspectEntity.instance only Reference(FrMedicationAdministrationDocument)
* suspectEntity.instance ^short = "Médicament, substance incriminée, posologie"

* resultingCondition MS
* resultingCondition only Reference(FrCondition)
* resultingCondition ^short = "Réaction observée"

* suspectEntity.causality 0..1 MS
* suspectEntity.causality ^short = "Imputabilité"

* suspectEntity.causality.assessment 1..1 MS
* suspectEntity.causality.assessment from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis (required)
* suspectEntity.causality.assessment ^short = "Niveau d'imputabilité"

* seriousness 1..1 MS
* seriousness from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis (required)
* seriousness ^short = "Gravité de l'effet indésirable"

* outcome MS
* outcome from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis (required)
* outcome ^short = "Évolution de l'effet indésirable"