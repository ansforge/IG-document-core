// StructureDefinition for Prelevement
Profile: FrPrelevement
Parent: Specimen
Id: fr-prelevement
Title: "Specimen - Fr Prelevement"
Description: "FrPrelevement est un profil utilisé pour décrire le prélèvement et l'échantillon biologique (le matériel)."

* identifier 1..1 MS
* identifier ^short = """
Identifiant de l'échantillon : L'identifiant de l'échantillon est éventuellement multiple (premier identifiant attribué par le préleveur, puis réidentification par le laboratoire).
L'un des identifiants est visible sur l'échantillon matériel (par exemple en code barre sur le tube ou le bocal).
"""

* type 1..1 MS
* type ^short = "Produit utilisé"

* status MS
* status ^short = "Statut du specimen"

* processing.description ^short = """
Acte de prélèvement :

Pour un prélèvement en vue d'examen de biologie médicale, le code affiné NABM de l'acte de prélèvement doit être renseigné si connu, sauf dans le cas d'un recueil d'échantillon effectué par le patient lui-même.
Un prélèvement cytologique ou de tissu en vue d'un examen d'anatomie ou de cytologie pathologiques est codé à l'aide d'une nomenclature précisée dans les modèles de contenus métiers.
Par défaut, utiliser le code suivant :
code='33882-2'
displayName='Prélèvement'
codeSystem='2.16.840.1.113883.6.1'
codeSystemName='LOINC'
"""
* processing.procedure.coding.code  1..1 MS

* subject 1..1 MS
* subject only Reference(FrPatientINSDocument or FrPatientDocument or FrDeviceDocument or FrLocationDocument or Group or Substance)
* subject ^short = "Source de l’échantillon. Il s'agit d’un patient, d’un lieu, d’un échantillon d’une substance ou d’un dispositif"

* receivedTime MS
* receivedTime ^short = "Date de réception de l'échantillon"

* collection.collector only Reference(FrPractitionerRoleDocument or FrPractitionerDocument)
* collection.collector ^short = "Qui a réceptionné le spécimen"
* collection.collected[x] MS
* collection.collected[x] ^short = """
Date du prélèvement :
La date et heure de prélèvement doit être renseignée si elle est connue. En cas d'acte ponctuel, c'est la date et heure de fin (élément collectedPeriod.end) qui horodate le prélèvement.
"""

* collection.bodySite MS
* collection.bodySite ^short = "Localisation anatomique"
* collection.bodySite only CodeableConcept
* collection.bodySite.coding 1..1
* collection.bodySite.coding.system = "http://snomed.info/sct"
