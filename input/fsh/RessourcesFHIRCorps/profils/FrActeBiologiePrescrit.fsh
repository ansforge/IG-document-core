Profile: FrActeBiologiePrescrit
Parent: Observation
Id: fr-acte-biologie-prescrit
Title: "Observation - Fr Acte biologie prescrit"
Description: "FrActeBiologiePrescrit est un profil utilisé pour  décrire une ligne de prescription d’examen de biologie médicale."

* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"

* basedOn ^short = "Instructions au patient"
* basedOn only Reference(FrPatientInstructions)

* code MS
* code ^short = """
Code de l'acte de biologie medicale issue du JDV circuit de la biologie
Si l’examen n’est pas présent dans le JDV JDV Circuit de la biologie, utiliser le code :
code='19146-0'
displayName='Test de laboratoire (Identifiant+nom):Identifiant:Ponctuel:Test de référence:Résultat nominal:'
codeSystem='2.16.840.1.113883.6.1'
codeSystemName='LOINC'
avec précision de l’examen sous forme de texte libre.
"""

* status 1..1 MS
* status ^short = "Statut de l'observation"

* effective[x] MS
* effective[x] ^short = """
Date prévisionnelle de l'examen
Valeur fixée à nullFlavor='UNK'
"""
* extension contains FrPriorityExtension named priority 0..1 MS
* extension[priority] ^short = "Urgence"
* extension[priority].valueCodeableConcept.coding.code = #UR
* extension[priority].valueCodeableConcept.coding.display = "Urgence"

* value[x] ^short = "Valeur cible utilisée par exemple pour INR."

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"

* method 0..1 MS
* method ^short = "Méthode"


* bodySite ^short = "Localisation anatomique"
* bodySite.coding 1..1
* bodySite.coding.system = "http://snomed.info/sct"

* note 0..1 MS
* note ^short = "Commentaire : précisions à apporter à certains examens.
Par exemple : dosage de médicament, précision à apporter sur la molécule / toxine."

// --- Slicing de hasMember ---
* hasMember ^slicing.discriminator.type = #pattern
* hasMember ^slicing.discriminator.path = "resolve().code"
* hasMember ^slicing.rules = #open
* hasMember MS

* hasMember contains
    Contexte 0..* and
    Renouvellement 0..1 and 
    EnRapportAvecALD 1..1 and
    EnRapportAvecAccidentTravail 1..1 and
    EnRapportAvecLaPrevention 1..1 and
    NonRemboursable 1..1 and
    HorsNomenclature 1..1 and
    Prelevement 1..1 and
    PatientInstructions 0..1

* hasMember[Contexte] only Reference(FrObservationContexte)
* hasMember[Contexte] ^short = "Contexte de l'acte de biologie prescrit"
* hasMember[Renouvellement] only Reference(FrObservationRenouvellement)
* hasMember[Renouvellement] ^short = "Renouvellement de l'acte"
* hasMember[EnRapportAvecALD] only Reference(FrEnRapportAvecALD)
* hasMember[EnRapportAvecALD] ^short = "En rapport avec ALD"
* hasMember[EnRapportAvecAccidentTravail] only Reference(FrEnRapportAvecAccidentTravail)
* hasMember[EnRapportAvecAccidentTravail] ^short = "En rapport avec la prévention"
* hasMember[EnRapportAvecLaPrevention] only Reference(FrEnRapportAvecLaPrevention)
* hasMember[HorsNomenclature] ^short = "Hors Nomenclature"
* hasMember[HorsNomenclature] only Reference(FrHorsNomenclature)


* specimen only Reference(FrPrelevement)
* specimen MS

