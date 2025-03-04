Extension: QualifierExtension
Id: fr-qualifier-extension
Title: "QualifierExtension"
Description: "Extension permettant d'ajouter un qualifier dans les noms et prénoms du patient.
 - name.family : 
    - qualifier='BR' pour le nom de naissance (ou nom de famille) : obligatoire si le matricule INS est présent. 
    - qualifier='CL' pour le nom utilisé (RNIV).
 - name.given : 
    - qualifier non utilisé pour la liste des prénoms de l’acte de naissance : obligatoire si le matricule INS est présent.
    - qualifier='BR' pour le premier prénom extrait de la liste des prénoms de l’acte de naissance : obligatoire si le matricule INS est présent.  
    - qualifier='CL' pour pour le prénom utilisé (RNIV)."
* ^context[0].type = #element
* ^context[0].expression = "Patient.name.family"
* ^context[1].type = #element
* ^context[1].expression = "Patient.name.given"
* value[x] only code
* value[x] from FRNameQualifier
