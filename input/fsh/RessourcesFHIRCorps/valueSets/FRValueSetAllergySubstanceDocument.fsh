// à vérifier les codes systèmes utilisés pour chaque catégorie
ValueSet: FRValueSetAllergySubstanceDocument
Id: fr-vs-allergy-substance
Title: "ValueSet – FR ValueSet Allergy Substance Document"
Description: """
Jeu de valeurs permettant de coder l’agent responsable d’une allergie :
- Médicaments : CIP ou UCD
- Substances : SMS
- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales
- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions
- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis
"""
//Pour les médicaments : code CIP ou UCD
* include codes from system https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-bdpm        // CIP
* include codes from system https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cip-ucd       // UCD

// Pour les substances : code SMS
// Pour les substances non présentes dans SMS (par exemple feuille de millepertuis ou extrait d’organe) : texte libre
* include codes from system https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-sms        // SMS

// pour les aliments : CIM-11 
* include codes from system https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cim11-mms // CIM11

// pour les aliments ou agents environnementaux ou physiques 
// Chapitre X Codes d’extensions / Substances : Allergènes ou Substances, essentiellement non médicinales
* include codes from system http://id.who.int/icd11/mms   

// pour les allergènes pouvant induire une contre-indication à la vaccination 
* include codes from valueset https://smt.esante.gouv.fr/fhir/ValueSet/jdv-allergie-vaccin-cisis
